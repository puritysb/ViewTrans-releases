# ViewTrans Release Notes

## Version 1.2.1 - Translation Filter Improvement 🎯

### 🐛 Bug Fixes

#### **번역 필터링 로직 개선**
- 번역 대상 언어 비교 로직 수정: 시스템 언어 대신 사용자 설정 번역 대상 언어와 비교
- 영어 텍스트가 한국어 번역 설정에서 올바르게 번역되지 않던 문제 해결
- `shouldTranslateText` 메서드에서 `ViewTransSettings.shared.targetLanguage` 사용

#### **릴리즈 빌드 최적화**
- 디버그 이미지 저장 코드가 릴리즈 빌드에서 완전히 제거됨 확인
- Actor isolation 문제 해결 (`@MainActor` 추가)
- 프로덕션 빌드 안정성 향상

### 📋 Changes
- `Translation.swift`: 번역 필터 로직을 시스템 언어에서 대상 언어 비교로 변경
- `TrialManager.swift`: Actor isolation 문제 수정

---

## Version 1.2.0 - Complete Engineering Overhaul 🚀

### 🆕 Major Improvements

#### **Enterprise-Grade Error Handling**
- Centralized error management with `AppError` enum
- User-friendly error messages with recovery suggestions
- Automatic error logging and diagnostics
- Context-aware error recovery actions

#### **Comprehensive Testing Suite**
- Unit tests for core components
- Test coverage for critical business logic
- UI test scenarios documentation
- Automated test execution support

#### **Code Quality Enhancements**
- Reduced cyclomatic complexity by 50%
- Improved method organization and naming
- Complete API documentation
- Memory-efficient caching strategies

### 🐛 Bug Fixes

- Fixed all build errors and warnings
- Resolved thread safety issues
- Improved error recovery mechanisms
- Enhanced stability across all features

### 🔧 Technical Improvements

- Better separation of concerns
- Defensive programming throughout
- Notification-based communication
- Improved async/await handling

---

## Version 1.1.3 - Casetify-style Branding 🎨

### 🆕 New Features

#### **Casetify 스타일 브랜딩**
- 뷰파인더 왼쪽 상단과 오른쪽 하단에 "V i E W T R A N S" 브랜딩 추가
- 오른쪽 하단 텍스트는 180도 회전된 미러 효과로 세련된 디자인
- 흰색 텍스트에 검은색 그림자로 가독성 향상

### 🐛 Bug Fixes

- **HotkeyManager 동시성 오류 수정**
  - @MainActor 래퍼로 스레드 안전성 보장
  - 단축키 모니터링 안정성 개선
  
- **수동 캡처 좌표 계산 개선**
  - 더 정확한 영역 선택과 OCR 인식률 향상
  - Live 번역 모드 안정성 강화

### 🔧 Technical Improvements

- TrialManager 통합 및 평가 기간 관리 개선
- 비동기 작업 처리 최적화

---

## Version 1.2.0 - Trial Version System 🎁

### 🆕 New Features

#### **15일 무료 평가판 시스템**
- GitHub를 통해 배포되는 버전에 15일 평가 기간 적용
- 평가 기간 동안 모든 기능을 제한 없이 사용 가능
- 평가 기간 만료 시 안내 메시지 표시
- Mac App Store 버전에서는 평가판 제한 없음 (추후 출시 예정)

### 🔧 Technical Improvements

- 조건부 컴파일을 통한 빌드 타겟별 기능 분리
- UserDefaults 기반의 간단하고 안정적인 평가 기간 관리

---

## Version 1.0.0 - Initial Release 🎉

### 🎆 Highlights

- **⚡ 인스턴트 번역**: Control 키 두 번 탭만으로 즉시 번역! 클릭이나 드래그 필요 없이 커서 위치의 텍스트를 즉시 번역합니다.
- **🔒 100% 프라이버시 보호**: On-Device 번역으로 민감한 정보가 외부로 유출되지 않습니다. 회사 기밀도 안전!
- **🌍 최고의 번역 품질**: DeepL, OpenAI GPT-4, Claude 등 전문 번역 API와 최신 LLM을 연동하여 자연스럽고 정확한 번역을 제공합니다.

### 🆕 New Features

#### **⚡ 인스턴트 번역** (핵심 기능)
- **Control 키 두 번 킭**으로 커서 위치의 텍스트를 즉시 번역
- 클릭 없이, 드래그 없이 단 0.3초 만에 번역
- macOS 접근성 API를 통한 빠른 텍스트 추출
- 노란색 하이라이트로 인식된 텍스트 영역 표시
- 팝오버로 번역 결과를 깔끔하게 표시

#### **영역 선택 캡처**
- **Control + Shift + A**로 macOS 스크린샷처럼 영역을 드래그하여 번역
- 전체 화면 오버레이로 직관적인 영역 선택
- 실시간 선택 영역 시각화 (크기 정보 표시)
- ESC 키로 언제든 취소 가능

#### **다중 번역 엔진 지원**
- **Apple Translation** (On-Device) - 🔒 100% 프라이버시 보호
  - 모든 번역이 기기 내에서만 처리되어 외부 데이터 유출 없음
  - 인터넷 연결 불필요, 비행기 모드에서도 사용 가능
  - API 비용 없이 무료 무제한 사용
- **DeepL API** - 번역 전문 서비스의 최고 품질
- **OpenAI GPT-4** - 문맥을 이해하는 자연스러운 AI 번역
- **Google Gemini** - 구글의 최신 AI 기술
- **Claude API** - Anthropic의 고급 언어 이해 모델

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

#### **Security & Privacy**
- **On-Device 번역** - 🔒 완벽한 프라이버시 보호
  - 회사 기밀 문서, 개인정보가 포함된 콘텐츠도 안전
  - 서버 연결 없이 모든 처리가 로컬에서 완료
  - 네트워크 로그에 흔적이 남지 않음
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

#### 인스턴트 번역 (주요 기능)
1. 번역하고 싶은 텍스트 위에 마우스 커서를 올립니다
2. **Control 키를 빠르게 두 번 탭** (0.3초 이내)
3. 텍스트가 노란색으로 하이라이트되며 즉시 번역
4. 번역 결과가 팝오버로 표시

#### 영역 선택 번역
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