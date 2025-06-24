#!/bin/bash

# ViewTrans 자동 설치 스크립트
# 사용법: curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans/main/install.sh | bash

set -e

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# 함수 정의
log_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

log_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

log_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

log_error() {
    echo -e "${RED}❌ $1${NC}"
}

log_step() {
    echo -e "${PURPLE}🔄 $1${NC}"
}

# 시스템 확인
check_system() {
    log_step "시스템 요구사항 확인 중..."
    
    # macOS 확인
    if [[ "$OSTYPE" != "darwin"* ]]; then
        log_error "이 스크립트는 macOS에서만 실행됩니다."
        exit 1
    fi
    
    # macOS 버전 확인 (13.0 이상 필요)
    MACOS_VERSION=$(sw_vers -productVersion)
    MAJOR_VERSION=$(echo "$MACOS_VERSION" | cut -d. -f1)
    MINOR_VERSION=$(echo "$MACOS_VERSION" | cut -d. -f2)
    
    if [ "$MAJOR_VERSION" -lt 13 ]; then
        log_error "ViewTrans는 macOS 13.0 (Ventura) 이상이 필요합니다. 현재 버전: $MACOS_VERSION"
        exit 1
    fi
    
    log_success "시스템 호환성 확인됨 (macOS $MACOS_VERSION)"
}

# 권한 확인
check_permissions() {
    log_step "권한 확인 중..."
    
    # /Applications 디렉토리 쓰기 권한 확인
    if [ ! -w "/Applications" ]; then
        log_error "/Applications 디렉토리에 쓰기 권한이 없습니다. sudo로 실행하거나 관리자 권한이 필요합니다."
        exit 1
    fi
    
    log_success "설치 권한 확인됨"
}

# 최신 릴리스 정보 가져오기
get_latest_release() {
    log_step "최신 릴리스 정보 확인 중..."
    
    # GitHub API로 최신 릴리스 정보 가져오기
    LATEST_RELEASE=$(curl -s https://api.github.com/repos/puritysb/ViewTrans-releases/releases/latest)
    
    if [ $? -ne 0 ]; then
        log_error "GitHub API에 연결할 수 없습니다. 인터넷 연결을 확인해주세요."
        exit 1
    fi
    
    # 다운로드 URL과 버전 정보 추출
    DOWNLOAD_URL=$(echo "$LATEST_RELEASE" | grep "browser_download_url.*tar.gz" | cut -d '"' -f 4)
    VERSION=$(echo "$LATEST_RELEASE" | grep '"tag_name"' | cut -d '"' -f 4)
    
    if [ -z "$DOWNLOAD_URL" ]; then
        log_error "다운로드 URL을 찾을 수 없습니다. 릴리스가 아직 준비되지 않았을 수 있습니다."
        exit 1
    fi
    
    log_success "최신 버전 발견: $VERSION"
    log_info "다운로드 URL: $DOWNLOAD_URL"
}

# 기존 설치 확인
check_existing_installation() {
    if [ -d "/Applications/ViewTrans.app" ]; then
        log_warning "기존 ViewTrans 설치를 발견했습니다."
        
        # 현재 실행 중인지 확인
        if pgrep -x "ViewTrans" > /dev/null; then
            log_step "ViewTrans를 종료하는 중..."
            pkill -x "ViewTrans" || true
            sleep 2
        fi
        
        log_step "기존 설치를 제거하는 중..."
        rm -rf "/Applications/ViewTrans.app"
        log_success "기존 설치 제거 완료"
    fi
}

# 다운로드 및 설치
download_and_install() {
    log_step "ViewTrans $VERSION 다운로드 중..."
    
    # 임시 디렉토리 생성
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"
    
    # 다운로드
    curl -L --progress-bar -o "viewtrans.tar.gz" "$DOWNLOAD_URL"
    
    if [ $? -ne 0 ]; then
        log_error "다운로드 실패"
        cleanup_temp_dir
        exit 1
    fi
    
    log_success "다운로드 완료"
    
    # 파일 크기 확인
    FILE_SIZE=$(ls -lh viewtrans.tar.gz | awk '{print $5}')
    log_info "다운로드된 파일 크기: $FILE_SIZE"
    
    # 압축 해제
    log_step "압축 해제 중..."
    tar -xzf viewtrans.tar.gz
    
    if [ $? -ne 0 ]; then
        log_error "압축 해제 실패"
        cleanup_temp_dir
        exit 1
    fi
    
    # ViewTrans.app 찾기
    if [ ! -d "ViewTrans.app" ]; then
        log_error "ViewTrans.app을 찾을 수 없습니다"
        cleanup_temp_dir
        exit 1
    fi
    
    log_success "압축 해제 완료"
    
    # Applications 폴더로 이동
    log_step "Applications 폴더로 설치 중..."
    mv ViewTrans.app /Applications/
    
    if [ $? -ne 0 ]; then
        log_error "Applications 폴더로 이동 실패"
        cleanup_temp_dir
        exit 1
    fi
    
    log_success "설치 완료"
}

# Gatekeeper 설정 제거
remove_quarantine() {
    log_step "보안 제한 해제 중..."
    
    # Gatekeeper에서 제외하여 macOS가 실행을 차단하지 않도록 함
    xattr -dr com.apple.quarantine /Applications/ViewTrans.app 2>/dev/null || true
    
    log_success "보안 제한 해제 완료"
}

# 권한 설정 안내
show_permissions_guide() {
    echo ""
    log_info "🔐 ViewTrans 사용을 위해 다음 권한 설정이 필요합니다:"
    echo ""
    echo -e "${CYAN}1. 화면 및 시스템 오디오 녹화 권한${NC}"
    echo "   • 시스템 설정 > 개인정보 보호 및 보안 > 화면 및 시스템 오디오 녹음"
    echo "   • ViewTrans 체크박스 활성화"
    echo ""
    echo -e "${CYAN}2. 손쉬운 사용 권한 (전역 단축키용)${NC}"
    echo "   • 시스템 설정 > 개인정보 보호 및 보안 > 손쉬운 사용"
    echo "   • ViewTrans 체크박스 활성화"
    echo ""
    log_warning "이 권한들은 ViewTrans의 핵심 기능(화면 캡처, 단축키)에 필요합니다."
}

# 사용법 안내
show_usage_guide() {
    echo ""
    log_success "🎯 ViewTrans 사용법:"
    echo ""
    echo -e "${CYAN}기본 사용법:${NC}"
    echo "   • Control + Shift + A: 영역 선택 캡처 시작"
    echo "   • 마우스로 드래그하여 번역할 영역 선택"
    echo "   • ESC: 캡처 모드 취소"
    echo ""
    echo -e "${CYAN}추가 기능:${NC}"
    echo "   • 메뉴바 아이콘 클릭으로 설정 접근"
    echo "   • 다양한 번역 엔진 지원 (Apple, DeepL, OpenAI, etc.)"
    echo "   • 번역 기록 확인 및 관리"
    echo ""
}

# 임시 디렉토리 정리
cleanup_temp_dir() {
    if [ -n "$TEMP_DIR" ] && [ -d "$TEMP_DIR" ]; then
        cd /
        rm -rf "$TEMP_DIR"
    fi
}

# 메인 설치 프로세스
main() {
    echo ""
    echo -e "${BLUE}===========================================${NC}"
    echo -e "${BLUE}          ViewTrans 자동 설치${NC}"
    echo -e "${BLUE}===========================================${NC}"
    echo ""
    
    # 시스템 확인
    check_system
    
    # 권한 확인
    check_permissions
    
    # 최신 릴리스 정보 가져오기
    get_latest_release
    
    # 기존 설치 확인
    check_existing_installation
    
    # 다운로드 및 설치
    download_and_install
    
    # 보안 제한 해제
    remove_quarantine
    
    # 임시 파일 정리
    cleanup_temp_dir
    
    echo ""
    echo -e "${GREEN}===========================================${NC}"
    echo -e "${GREEN}        🎉 설치 완료! 🎉${NC}"
    echo -e "${GREEN}===========================================${NC}"
    echo ""
    
    log_success "ViewTrans $VERSION이 성공적으로 설치되었습니다!"
    log_info "Applications 폴더에서 ViewTrans를 실행할 수 있습니다."
    
    # 권한 설정 안내
    show_permissions_guide
    
    # 사용법 안내
    show_usage_guide
    
    echo -e "${YELLOW}💡 처음 실행 시 macOS에서 보안 확인을 요청할 수 있습니다.${NC}"
    echo -e "${YELLOW}   '열기'를 클릭하거나 시스템 설정에서 허용해주세요.${NC}"
    echo ""
    
    # 자동 실행 제안
    read -p "지금 ViewTrans를 실행하시겠습니까? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        log_info "ViewTrans를 실행합니다..."
        open -a ViewTrans
    fi
}

# 신호 처리 (Ctrl+C 등)
trap cleanup_temp_dir EXIT INT TERM

# 메인 함수 실행
main "$@"