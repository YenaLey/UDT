# UDT

### 데모 영상

<video src="https://pub-80a42cc7d41749078071917a4265d3ca.r2.dev/udt.mp4" controls width="100%"></video>

### 서비스 소개

📋 [SERVICE_PLAN.md](https://github.com/i2na/UDT/blob/main/Docs/SERVICE_PLAN.md)

### 설치

```bash
# Backend 설치
cd Backend
./install.sh

# Frontend 설치
cd Frontend
yarn install
```

### 실행

```bash
# Backend 실행
cd Backend
pm2 start ecosystem.config.cjs

pm2 logs # 전체 로그 확인
pm2 delete all # 중지

# Frontend 실행
cd Frontend
yarn dev
```

http://localhost:5173 접속

### 사용 방법

#### Protocol Playground

1. 프로토콜 선택 (Modbus TCP / BACnet)
2. 연결 정보 입력 (Host, Port, Device ID 등)
3. 레지스터 설정 (Address, Length, Format)
4. **Send** 클릭
5. Raw 데이터 결과 확인

#### Deploy API

1. **Download Sample CSV** 클릭하여 템플릿 다운로드
2. CSV 파일을 열어 장비 정보 입력
3. 수정한 CSV 파일 업로드
4. 생성된 3개 API 엔드포인트 확인:
   ```
   GET /device/{device_id}/snapshot      # 전체 포인트 조회
   GET /device/{device_id}/raw?alias=... # 개별 포인트 조회
   GET /device/{device_id}/points        # 포인트 목록
   ```

### 포트 정보

| 서비스         | 포트 | 설명              |
| -------------- | ---- | ----------------- |
| Frontend       | 5173 | React UI          |
| Core API       | 3000 | 메인 API 서버     |
| Modbus Adapter | 5001 | Modbus TCP 어댑터 |
| BACnet Adapter | 5002 | BACnet 어댑터     |
