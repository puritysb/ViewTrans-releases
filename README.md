# ViewTrans 🌐

> **macOS에서 가장 직관적인 실시간 화면 번역 도구**

ViewTrans는 macOS용 실시간 화면 번역 애플리케이션으로, 단 두 번의 Control 키 탭만으로 커서 위치의 텍스트를 즉시 번역해주는 혁신적인 도구입니다. 클릭 없이, 드래그 없이, 그저 커서를 올리고 Control 키를 두 번 탭하세요!

🔒 **완벽한 프라이버시 보호**: On-Device 번역으로 민감한 정보가 외부로 유출되지 않습니다.
🚀 **최고의 번역 품질**: DeepL, OpenAI GPT-4, Claude 등 전문 번역 API와 최신 LLM 연동 지원

![ViewTrans Demo](https://via.placeholder.com/800x450/4A90E2/FFFFFF?text=ViewTrans+Demo)

## ✨ 주요 기능

### ⚡ **인스턴트 번역** (NEW!)
- **Control 키 두 번 탭**으로 커서 위치의 텍스트를 즉시 번역
- 접근성 API를 통한 빠른 텍스트 추출
- 노란색 하이라이트로 감지된 텍스트 영역 표시
- 팝오버로 번역 결과를 깔끔하게 표시
- 클릭 없이 마우스 커서만 올려도 텍스트 인식

### 🎯 **영역 선택 캡처**
- **Control + Shift + A**로 macOS 스크린샷처럼 영역을 드래그하여 번역
- 실시간 선택 영역 미리보기
- ESC 키로 언제든 취소 가능

### 🌍 **다중 번역 엔진 지원**
- **Apple Translation** (On-Device, 완전 오프라인)
  - 🔒 **100% 프라이버시 보호**: 모든 번역이 기기 내에서만 처리
  - 📡 **인터넷 연결 불필요**: 비행기 모드에서도 번역 가능
  - 💰 **완전 무료**: API 비용 없이 무제한 번역
  - ⚡ **초고속 번역**: 네트워크 지연 없는 즉각적인 응답
- **DeepL API** (번역 전문 서비스의 최고 품질)
- **OpenAI GPT-4** (문맥 이해 기반 자연스러운 번역)
- **Google Gemini** (구글의 최신 AI 기술)
- **Claude API** (Anthropic의 고급 언어 이해 모델)

### 🎨 **AR 오버레이 번역**
- 원본 화면 위에 번역 결과를 자연스럽게 표시
- 원본 텍스트와 배경 색상 자동 분석
- 읽기 편한 폰트와 색상 자동 선택

### 📱 **QR 코드 인식**
- URL을 포함한 QR 코드 자동 감지
- 클릭 한 번으로 웹사이트 바로 열기

### ⚙️ **사용자 맞춤 설정**
- 커스터마이징 가능한 전역 단축키
- 번역 기록 자동 저장 및 검색
- 다크 모드 지원
- 시스템 언어 자동 감지

## 🚀 설치 방법

### 방법 1: 자동 설치 (권장)

터미널에서 다음 명령어를 실행하세요:

```bash
curl -fsSL https://raw.githubusercontent.com/puritysb/ViewTrans-releases/main/install.sh | bash
```

### 방법 2: 수동 다운로드

1. [Releases 페이지](https://github.com/puritysb/ViewTrans-releases/releases)에서 최신 버전 다운로드
2. 압축 파일을 해제하고 `ViewTrans.app`을 Applications 폴더로 이동
3. 터미널에서 다음 명령어 실행:
   ```bash
   xattr -dr com.apple.quarantine /Applications/ViewTrans.app
   ```

## 📋 시스템 요구사항

- **macOS 13.0 (Ventura)** 이상
- **Apple Silicon** 또는 **Intel Mac**
- **8GB RAM** 권장 (On-Device 번역 사용 시)

## 🔐 필요한 권한

ViewTrans가 제대로 작동하려면 다음 권한이 필요합니다:

### 1. 화면 및 시스템 오디오 녹화 권한
```
시스템 설정 > 개인정보 보호 및 보안 > 화면 및 시스템 오디오 녹음
```
- 화면 캡처 기능을 위해 필요

### 2. 손쉬운 사용 권한
```
시스템 설정 > 개인정보 보호 및 보안 > 손쉬운 사용
```
- 전역 단축키 사용을 위해 필요

## 🎯 사용법

### 인스턴트 번역 (가장 빠른 방법)
1. 번역하고 싶은 텍스트 위에 마우스 커서를 올립니다
2. **Control 키를 빠르게 두 번 탭**
3. 텍스트가 노란색으로 하이라이트되며 즉시 번역됩니다
4. 번역 결과가 팝오버로 표시됩니다

### 영역 선택 번역
1. **Control + Shift + A** 키를 눌러 영역 선택 모드 시작
2. 마우스로 번역할 영역을 드래그하여 선택
3. 자동으로 OCR → 번역이 수행되고 결과가 표시됩니다
4. **ESC** 키로 언제든 취소 가능

### 고급 기능
- **메뉴바 아이콘** 클릭으로 설정 접근
- **번역 기록** 확인 및 관리
- **API 키 설정**으로 고급 번역 엔진 사용
- **단축키 커스터마이징**

## ⚙️ 설정 가이드

### 번역 엔진 설정

#### On-Device 번역 (Apple Translation) 🔒
- **장점**: 
  - ✅ 완전 오프라인 작동 - 인터넷 연결 불필요
  - ✅ 100% 프라이버시 보호 - 데이터가 기기를 벗어나지 않음
  - ✅ 무료 무제한 사용 - API 비용 없음
  - ✅ 초고속 번역 - 네트워크 지연 없음
  - ✅ 민감한 정보 안전 - 회사 기밀, 개인정보 등도 안심
- **추천 사용 케이스**:
  - 회사 내부 문서 번역
  - 개인정보가 포함된 콘텐츠
  - 인터넷이 불안정한 환경
  - 비용 절감이 필요한 경우
- **설정**: 추가 설정 불필요 (즉시 사용 가능)

#### DeepL API
1. [DeepL API](https://www.deepl.com/pro-api) 계정 생성
2. API 키 발급
3. ViewTrans 설정에서 API 키 입력

#### OpenAI API
1. [OpenAI Platform](https://platform.openai.com/) 계정 생성
2. API 키 발급
3. ViewTrans 설정에서 API 키 입력

#### Google Gemini API
1. [Google AI Studio](https://makersuite.google.com/) 접속
2. API 키 발급
3. ViewTrans 설정에서 API 키 입력

#### Claude API
1. [Anthropic Console](https://console.anthropic.com/) 계정 생성
2. API 키 발급
3. ViewTrans 설정에서 API 키 입력

## 🔧 문제 해결

### 자주 묻는 질문

**Q: 앱이 실행되지 않아요**
A: 터미널에서 `xattr -dr com.apple.quarantine /Applications/ViewTrans.app` 실행 후 재시도

**Q: 화면 캡처가 안 돼요**
A: 시스템 설정 > 개인정보 보호 및 보안 > 화면 및 시스템 오디오 녹음에서 ViewTrans 허용

**Q: 단축키가 작동하지 않아요**
A: 시스템 설정 > 개인정보 보호 및 보안 > 손쉬운 사용에서 ViewTrans 허용

**Q: 번역 품질을 높이고 싶어요**
A: DeepL API 또는 OpenAI API 키를 설정하여 고급 번역 엔진 사용

### 로그 확인
문제 발생 시 Console.app에서 "ViewTrans" 키워드로 로그를 확인해보세요.

## 🛠️ 개발자를 위한 정보

### 프로젝트 구조
```
ViewTrans/
├── ViewTrans/
│   ├── Translation/        # 번역 엔진 관리
│   ├── Capture/           # 화면 캡처 및 영역 선택
│   ├── Hotkey/            # 전역 단축키 관리
│   ├── Settings/          # 사용자 설정 UI
│   └── ...
├── scripts/               # 빌드 및 배포 스크립트
└── .github/workflows/     # GitHub Actions 워크플로우
```

### 로컬 빌드
```bash
# Xcode에서 빌드
xcodebuild -project ViewTrans/ViewTrans.xcodeproj -scheme ViewTrans -configuration Release build

# 릴리스 빌드 (스크립트 사용)
./scripts/build_release.sh v1.0.0
```

### 기여하기
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 🙏 크레딧

- **Apple Vision Framework** - OCR 기능
- **Apple Translation Framework** - On-Device 번역
- **ScreenCaptureKit** - 화면 캡처
- **DominantColors** - 색상 분석

## 📞 지원 및 피드백

- **Issues**: [GitHub Issues](https://github.com/puritysb/ViewTrans-releases/issues)
- **Discussions**: [GitHub Discussions](https://github.com/puritysb/ViewTrans-releases/discussions)
- **Email**: viewtrans@example.com

## 🎉 감사의 말

ViewTrans를 사용해주셔서 감사합니다! 버그 리포트, 기능 제안, 기여를 통해 프로젝트를 개선하는 데 도움을 주시면 감사하겠습니다.

---

Made with ❤️ for the macOS community