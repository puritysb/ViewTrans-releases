# ViewTrans

macOS용 실시간 화면 번역 앱 - AR 오버레이로 자연스러운 번역 경험

## 🌟 주요 기능

- **실시간 화면 번역**: 마우스로 뷰파인더를 움직여 원하는 영역의 텍스트를 즉시 번역
- **AR 오버레이**: 번역 결과가 원본 화면 위에 자연스럽게 겹쳐져 표시
- **다국어 지원**: Apple Translate API 기반의 고품질 번역
- **OCR 인식**: Apple Vision Framework로 정확한 텍스트 인식
- **직관적 UI**: 간단한 마우스 조작만으로 즉시 사용 가능

## 💻 시스템 요구사항

- macOS 13.0 (Ventura) 이상
- Apple Silicon (M1/M2/M3) 또는 Intel 프로세서
- 화면 녹화 권한 필요

## 📥 설치 방법

### 다운로드
1. [Releases](https://github.com/puritysb/ViewTrans-releases/releases) 페이지에서 최신 버전 다운로드
2. `ViewTrans-v1.0.0-macos.tar.gz` 파일 다운로드

### 설치
```bash
# 다운로드한 파일 압축 해제
tar -xzf ViewTrans-v1.0.0-macos.tar.gz

# Applications 폴더로 이동
mv ViewTrans.app /Applications/

# 또는 Finder에서 ViewTrans.app을 Applications 폴더로 드래그
```

### 첫 실행
1. Applications 폴더에서 ViewTrans 실행
2. "확인되지 않은 개발자" 경고가 나타날 경우:
   - 시스템 환경설정 → 보안 및 개인정보 보호
   - "일반" 탭에서 "확인 없이 허용" 클릭
3. 화면 녹화 권한 요청 시 "허용" 선택

## 🚀 사용 방법

1. **앱 실행**: ViewTrans를 실행하면 투명한 뷰파인더 창이 나타납니다
2. **영역 선택**: 마우스로 뷰파인더를 번역하고 싶은 텍스트 위로 이동
3. **자동 번역**: 뷰파인더 안의 텍스트가 자동으로 인식되어 번역됩니다
4. **결과 확인**: 번역 결과가 원본 화면 위에 오버레이로 표시됩니다

## 🛠️ 문제 해결

### 앱이 실행되지 않을 때
- macOS 버전이 13.0 이상인지 확인
- 보안 설정에서 앱 실행을 허용했는지 확인

### 번역이 되지 않을 때
- 화면 녹화 권한이 허용되었는지 확인
- 인터넷 연결 상태 확인 (Apple Translate API 사용)

### 텍스트 인식이 안 될 때
- 텍스트가 충분히 크고 선명한지 확인
- 뷰파인더를 텍스트에 정확히 맞춰주세요

## 📧 지원

문제가 발생하거나 기능 요청이 있으시면 [Issues](https://github.com/puritysb/ViewTrans-releases/issues)에 등록해주세요.

## 📄 라이선스

이 앱은 개인 및 비상업적 용도로 자유롭게 사용할 수 있습니다.

---
**ViewTrans** - 화면 번역의 새로운 경험