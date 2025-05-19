# 현재 위치 경로 출력
pwd

# 현재 위치에서 파일 및 폴더 조회
ls

# 목록 조회 자세히
ls -l # l: long 

# 목록 조회 자세히 + 숨김파일
ls -al # a: all

# 목록 조회 자세히 + 숨김파일 + 오래된 순으로 정렬 (최신은 alt)
ls -alrt # r: reverse, t: time

# 현재 위치에서 디렉토리 생성
mkdir jaehyeok_choi

# 특정 디렉토리로 이동
mkdir /home/jaehyeok_choi

# 특정 디렉토리로 이동
cd jaehyeok_choi

# 상위 디렉토리로 이동
cd ..
# or cd ../

# 루트 디렉토리(최상위 디렉토리) 이동
cd /

# 직전 폴더로 이동
cd -

# 홈(/home/chaser) 경로로 이동
cd 

# 상대 경로 & 절대 경로
# 상대 경로: cd ../../
# 절대 경로: cd/home/jaehyeok_choi