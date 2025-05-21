# 사용자 추가 및 비밀번호 지정 (사용할 일 없음음)
# sudo : root 권한으로 명령어 실행 
sudo useradd newuser1
sudo passwd newuser1

# 사용자 변경 : 변경하고자 하는 계정의 비밀헌호
# sudo 경우 현재 사용자의 비밀번호
su - newuser1
su - # root 계정 변경 

# chmod 권한부여 : r(4), w(2), o(1), u(소유자), g(그룹), o(그외) 구성
chmod 644 파일명  # 숫자 조합 방식 
chmod u+x 파일명  # + : 추가
chmod u-x 파일명  # - : 삭제
chmod u=r 파일명  # = : 대체 

# 소유자:그룹 변경
chown newuser1:newuser1 파일명

# 