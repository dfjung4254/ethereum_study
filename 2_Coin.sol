pragma solidity ^0.5.0;

contract Coin {

  // address 타입 : 산술 연산 허용x, 컨트랙트 주소나 외부 사용자들의 키 쌍을 저장하는데 적합
  address public minter;
  // mapping 타입 : 해시테이블 데이터 타입, 모든 가능한 키 값은 처음부터 존재
  mapping (address => uint) public balances;

  // 블록체인 상에서 발생한 이벤트를 큰 비용을 들이지 않고 받아볼 수 있다.
  // 이벤트를 선언하여 트랜잭션(from, to, amount)을 파악하기 용이하게 함.
  event Sent(address from, address to, uint amount);

  // 생성자 : 최초 컨트랙트 생성 시 1회 실행.
  // 컨트랙트를 만든 사람의 주소를 영구저장.
  // msg(tx, block 포함)은 유용한 전역변수로, 블록체인에 접근할 수 있는 다양한 속성 보유.
  constructor() public {
    // msg.sender : 외부에서 지금 함수를 호출한 주소
    // 즉, 생성자에서 msg.sender 를 저장한다는 의미는 최초 컨트랙트 생성자를 저장한다는 의미이다.
    minter = msg.sender;
  }

  // function : 사용자나 컨트랙트가 호출할 수 있는 함수.
  function mint(address receiver, uint amount) public {
    // require : 인수가 false로 평가될 경우 모든 변경사항이 원래대로 되돌아간다(tx rollback 개념)
    // msg.sender(지금 함수를 호출한 주소) == minter(최초 컨트랙트를 생성한 사람)
    require(msg.sender == minter);
    require(amount < 1e60);
    balances[receiver] += amount;
  }

  function send(address receiver, uint amount) public {
    require(amount <= balances[msg.sender], "Insufficient balance.");
    balances[msg.sneder] -= amount;
    balances[receiver] += amount;
    emit Sent(msg.sender, receiver, amount);
  }




}