### BlockChain(Etherium) 스터디

* 이더리움 계정(account)
  - **이더리움 주소** + **개인키**
  - 이더리움 계정은 잔고를 보유할 수 있다.
  - 거래 트랜잭션을 전송할 수 있다.
  

* 지갑(Wallets)
  - 이더리움 계정을 저장하고 관리하는데 사용되는 라이브러리
  - 지갑을 통해 여러 계정을 관리, 트랜잭션 서명, 잔고 추적
  1. 비결정적 지갑 : 임의의 개인키/공개키 쌍을 사용
      - 개인키/공개키 쌍을 많이 생성, 각 키 쌍 간에는 상관관계가 없음.
  2. 결정론적 지갑 : 모든 키가 시드(seed) 라는 단일 시작지점에서 파생.
      - 다른 정보를 요구하지 않고 지갑을 쉽게 백업 및 복원
      - 경우에 따라 개인키를 모른 채 공개키를 생성.
      - ex:) metamask 의 경우 12개 단어의 시드를 저장 요구
  

* 가스(Gas)
  - 트랙잭션을 실행하려면 네트워크의 채굴자에게 이더를 지불해야 함.
    - 계약을 배포하고 트랙잭션을 실행하기 위해서 각 상호 작용과 관련한 비용이 소모되기 때문 (작업 증명 등)
  - 트랜잭션을 위해 지불하는 이더의 양을 산정하는 연산 단위(Gas)
  

* 가스 가격(Gas Price)
  - 트랜잭션 비율을 산정할 때 가스 당 가격
  - 비용 = 가스 * 가스 가격
  - 가스 가격은 트랜잭션 생성자가 설정할 수 있음
  - 가스 가격을 높게 책정할 수록 트랜잭션 처리 속도↑
  

* 가스 한도(Gas Limit)
  - 트랜잭션이 소모하는 가스의 양을 정확하게 파악하는 것은 어렵기 때문에 사용자는 가스의 최대 금액을 지정.