# centos

cent0S7.x 설치이후 필요한 스크립트를 작성하는 리포지터리 입니다.

- bin : 실행파일이 모여 있습니다.
- env : 환경변수 파일이 모여 있습니다.
- scripts : bash scrips가 모여 있는 경로입니다.
- ect : 기타 파일이 모여 있습니다.

## Centos Bash 설정
~/.bashrc 파일 내부에 아래코드가 설정되어있어야 합니다.
```bash
source /home/$USER/centos/env/init.env
cource /home/$USER/centos/env/help.env
```
install.sh를 실행하면 자동으로 추가됩니다.
