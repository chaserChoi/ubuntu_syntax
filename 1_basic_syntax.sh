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

# 비어있는 파일 만들기
touch first_file.txt

# 파일 내용 조회하기
cat first_file.txt # 터미널 창 출력하기
nano first_file.txt # nano 편집기 열기

# 파일 내용 상위 n줄 출력하기
head -n 파일명

# 파일 내용 하위 n줄 출력하기
# 많이 쓰임 - 최신 로그
tail -n 파일명

# 파일 내용 실시간 조회
tail -f 파일명

# 파일 내용 편집기: nano, vi
# 도스 키 위/아래 통해 이전 명령어 조회
# 이전에 실행했던 명령어 조회
history 

# 현재 내 터미널창에 보이는 명령어 내역 정리
clear

# ^c 통해 입력 명령어 취소

# 파일 삭제 -f 옵션 통해 묻지않고 삭제 
rm 파일명
# 폴더 삭제
rm -r 폴더명

# 터미널창에 문자열("" 붙일 것) 출력
echo "hello world"
# echo 통해 파일에 내용 입력
# > : 덮어쓰기 & >> : 이어쓰기
echo "hello world" > first_file.txt

# cp = 복사 명령어
# cp 복사대상 복사파일명
# 폴더 복사시에는 -r 옵션 
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt # 상위 폴더로 복사
cp -r abc ../abc

# grep : 파일 내에서 문자열 찾기
# -r : 모든 디렉토리
# -n : 라인 수 출력
# -i : 대소문자 구분 X
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt" # . : 현재 위치 
find . -type f # 찾을 유형

# find & grep 혼용 2가지 
find . -name "*.txt" | xargs grep -rni "hello" # 오른쪽 입력값 
find . -name "*.txt" -exec grep -rni "hello" {} \; # {} : 결과값 

# 타입은 file인 파일 중에 이름은 first로 시작하고 그 파일을 안에 hello 라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello" 
find . -name "first*" -type f -exec grep -rni "hello" {} \;

# 활용
find -name "*.txt" -exec cp {} ./test \; # 현재 디렉토리로 복사
