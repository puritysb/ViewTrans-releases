# ViewTrans Release Notes

## Version 1.0.0 - Initial Release 🎉

### 🆕 New Features

#### **영역 선택 캡처**
- **Control + Shift + A**로 macOS 스크린샷처럼 영역을 드래그하여 번역
- 전체 화면 오버레이로 직관적인 영역 선택
- 실시간 선택 영역 시각화 (크기 정보 표시)
- ESC 키로 언제든 취소 가능

#### **다중 번역 엔진 지원**
- **Apple Translation** (On-Device) - 완전 오프라인 번역
- **DeepL API** - 최고 품질의 번역 서비스
- **OpenAI GPT-4** - 컨텍스트를 이해하는 AI 번역
- **Google Gemini** - 구글의 최신 AI 번역
- **Claude API** - Anthropic의 대화형 AI 번역

#### **AR 오버레이 번역**
- 원본 화면 위에 번역 결과를 자연스럽게 표시
- 원본 텍스트와 배경 색상 자동 분석
- 읽기 편한 폰트와 색상 자동 선택
- 번역 결과를 팝업 윈도우로도 표시

#### **QR 코드 인식**
- URL을 포함한 QR 코드 자동 감지 및 표시
- 클릭 한 번으로 웹사이트 바로 열기

#### **사용자 맞춤 설정**
- 커스터마이징 가능한 전역 단축키
- 번역 기록 자동 저장 및 검색
- 다크 모드 지원
- 시스템 언어 자동 감지

### 🎯 Core Features

#### **화면 캡처 및 OCR**
- Apple Vision Framework 기반 고정밀 텍스트 인식
- 다양한 폰트와 언어 지원
- 텍스트 색상 및 배경 색상 분석

#### **전역 단축키 시스템**
- 시스템 전체에서 사용 가능한 단축키
- 충돌 방지 및 우선순위 관리
- 사용자 정의 단축키 조합 지원

#### **권한 관리**
- 화면 녹화 권한 자동 확인 및 요청
- 손쉬운 사용 권한 관리
- 사용자 친화적인 권한 안내

### ⚙️ Technical Details

#### **Architecture**
- **Strategy Pattern** - 다중 번역 엔진 지원
- **Coordinator Pattern** - 복잡한 번역 프로세스 조정
- **Delegate Pattern** - 컴포넌트 간 느슨한 결합
- **Swift Concurrency** - 모든 비동기 작업 처리

#### **Performance**
- 백그라운드에서 OCR 및 번역 처리
- 메모리 효율적인 이미지 처리
- 번역 결과 캐싱으로 중복 요청 방지

#### **Security**
- On-Device 모드로 완전한 개인정보 보호
- API 키 안전한 저장 (Keychain 권장)
- 번역 기록 로컬 저장만

### 📱 User Interface

#### **메뉴바 통합**
- 시스템 메뉴바에 아이콘 표시
- 빠른 설정 접근
- 번역 기록 확인

#### **설정 화면**
- SwiftUI 기반 현대적인 UI
- 실시간 단축키 설정
- API 키 관리 인터페이스

#### **오버레이 시스템**
- 전체 화면 영역 선택 오버레이
- 반투명 배경으로 시각적 피드백
- 십자선 커서로 정확한 선택

### 🛠️ Installation & Distribution

#### **GitHub Actions 자동화**
- 태그 기반 자동 릴리스 빌드
- 코드 서명 및 공증 준비
- 압축 파일 자동 생성

#### **설치 스크립트**
- 원클릭 자동 설치 (`curl | bash`)
- 시스템 호환성 자동 확인
- 권한 설정 안내

#### **패키징**
- `.tar.gz` 형식으로 배포
- Gatekeeper 호환
- 체크섬 검증 지원

### 🔧 System Requirements

- **macOS 13.0 (Ventura)** 이상
- **Apple Silicon** 또는 **Intel Mac**
- **8GB RAM** 권장 (On-Device 번역 사용 시)

### 🔐 Required Permissions

- **화면 및 시스템 오디오 녹화**: 화면 캡처를 위해 필요
- **손쉬운 사용**: 전역 단축키 사용을 위해 필요

### 📖 Usage

1. **Control + Shift + A** 키를 눌러 영역 선택 모드 시작
2. 마우스로 번역할 영역을 드래그하여 선택
3. 자동으로 OCR → 번역이 수행되고 결과가 표시
4. **ESC** 키로 언제든 취소 가능

### 🐛 Known Issues

- 일부 복잡한 폰트에서 OCR 정확도가 떨어질 수 있음
- 매우 작은 텍스트 (10px 이하)의 인식률이 제한적
- 손글씨 인식은 지원하지 않음

### 🔮 Future Plans

- iOS/iPadOS 버전 개발
- 더 많은 언어 팩 지원
- 실시간 동영상 자막 번역
- 플러그인 시스템 도입

---

**Installation Command:**
```bash
curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans-releases/main/install.sh | bash
```

**Download:** [ViewTrans-v1.0.0-macos.tar.gz](https://github.com/puritysb/ViewTrans-releases/releases/latest)

**Feedback:** [GitHub Issues](https://github.com/puritysb/ViewTrans-releases/issues)