#!/bin/bash

# ViewTrans 자동 설치 스크립트
# Usage: curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans-releases/main/install.sh | bash

set -e

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 로고 출력
echo -e "${BLUE}"
echo "██╗   ██╗██╗███████╗██╗    ██╗████████╗██████╗  █████╗ ███╗   ██╗███████╗"
echo "██║   ██║██║██╔════╝██║    ██║╚══██╔══╝██╔══██╗██╔══██╗████╗  ██║██╔════╝"
echo "██║   ██║██║█████╗  ██║ █╗ ██║   ██║   ██████╔╝███████║██╔██╗ ██║███████╗"
echo "╚██╗ ██╔╝██║██╔══╝  ██║███╗██║   ██║   ██╔══██╗██╔══██║██║╚██╗██║╚════██║"
echo " ╚████╔╝ ██║███████╗╚███╔███╔╝   ██║   ██║  ██║██║  ██║██║ ╚████║███████║"
echo "  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝"
echo -e "${NC}"
echo -e "${GREEN}macOS 실시간 화면 번역 앱 설치 프로그램${NC}"
echo ""

# macOS 버전 확인
echo -e "${YELLOW}[1/6] 시스템 요구사항 확인 중...${NC}"
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo -e "${RED}❌ 오류: 이 앱은 macOS 전용입니다.${NC}"
    exit 1
fi

# macOS 버전 확인 (macOS 13.0 이상 필요)
macos_version=$(sw_vers -productVersion)
macos_major=$(echo $macos_version | cut -d. -f1)
macos_minor=$(echo $macos_version | cut -d. -f2)

if [[ $macos_major -lt 13 ]]; then
    echo -e "${RED}❌ 오류: macOS 13.0 (Ventura) 이상이 필요합니다. 현재 버전: $macos_version${NC}"
    exit 1
fi

echo -e "${GREEN}✅ macOS $macos_version 호환됩니다.${NC}"

# 임시 디렉토리 생성
echo -e "${YELLOW}[2/6] 임시 작업 공간 생성 중...${NC}"
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"
echo -e "${GREEN}✅ 임시 디렉토리: $TEMP_DIR${NC}"

# 최신 릴리즈 다운로드
echo -e "${YELLOW}[3/6] ViewTrans 최신 버전 다운로드 중...${NC}"

# GitHub API를 통해 최신 릴리즈 정보 가져오기
echo "릴리즈 정보를 확인하는 중..."
RELEASE_INFO=$(curl -fsSL "https://api.github.com/repos/puritysb/ViewTrans-releases/releases/latest")
DOWNLOAD_URL=$(echo "$RELEASE_INFO" | grep -o '"browser_download_url": "[^"]*"' | cut -d'"' -f4 | grep -i "\.tar\.gz$" | head -1)

if [[ -z "$DOWNLOAD_URL" ]]; then
    echo -e "${RED}❌ 오류: 다운로드 가능한 파일을 찾을 수 없습니다.${NC}"
    echo "사용 가능한 파일들:"
    echo "$RELEASE_INFO" | grep -o '"name": "[^"]*"' | cut -d'"' -f4
    exit 1
fi

echo "다운로드 URL: $DOWNLOAD_URL"

if command -v curl >/dev/null 2>&1; then
    curl -fsSL -o viewtrans.tar.gz "$DOWNLOAD_URL"
elif command -v wget >/dev/null 2>&1; then
    wget -q -O viewtrans.tar.gz "$DOWNLOAD_URL"
else
    echo -e "${RED}❌ 오류: curl 또는 wget이 필요합니다.${NC}"
    exit 1
fi

echo -e "${GREEN}✅ 다운로드 완료${NC}"

# 압축 해제
echo -e "${YELLOW}[4/6] 파일 압축 해제 중...${NC}"
tar -xzf viewtrans.tar.gz
if [[ ! -d "ViewTrans.app" ]]; then
    echo -e "${RED}❌ 오류: ViewTrans.app을 찾을 수 없습니다.${NC}"
    exit 1
fi
echo -e "${GREEN}✅ 압축 해제 완료${NC}"

# Applications 폴더로 이동
echo -e "${YELLOW}[5/6] Applications 폴더에 설치 중...${NC}"
if [[ -d "/Applications/ViewTrans.app" ]]; then
    echo -e "${YELLOW}⚠️  기존 ViewTrans.app이 발견되었습니다. 교체합니다.${NC}"
    rm -rf "/Applications/ViewTrans.app"
fi

mv ViewTrans.app /Applications/
echo -e "${GREEN}✅ /Applications/ViewTrans.app에 설치 완료${NC}"

# 임시 파일 정리
echo -e "${YELLOW}[6/6] 정리 중...${NC}"
cd /
rm -rf "$TEMP_DIR"
echo -e "${GREEN}✅ 설치 완료!${NC}"

# 성공 메시지
echo ""
echo -e "${GREEN}🎉 ViewTrans 설치가 완료되었습니다!${NC}"
echo ""
echo -e "${BLUE}📱 앱 실행 방법:${NC}"
echo "   1. Launchpad 또는 Applications 폴더에서 ViewTrans 실행"
echo "   2. 화면 녹화 권한 요청 시 '허용' 클릭"
echo "   3. 뷰파인더를 움직여 번역하고 싶은 텍스트 위에 올리기"
echo ""
echo -e "${BLUE}🔧 문제 해결:${NC}"
echo "   • '확인되지 않은 개발자' 경고: 시스템 환경설정 → 보안 및 개인정보 보호에서 허용"
echo "   • 자세한 가이드: https://github.com/puritysb/ViewTrans-releases#readme"
echo ""
echo -e "${YELLOW}🚀 지금 바로 ViewTrans를 실행해보세요!${NC}"

# 선택적으로 앱 실행
read -p "지금 ViewTrans를 실행하시겠습니까? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    open -a ViewTrans
    echo -e "${GREEN}✅ ViewTrans가 실행되었습니다!${NC}"
fi