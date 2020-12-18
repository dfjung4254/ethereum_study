// Solidity 0.4.0 기반 작성, 최대 0.6.0 이전 버전까지도 정상 동작해야 함을 선언
// pragma -> 컴파일러가 코드를 어떻게 처리해야 하는지 알려 줌.
pragma solidity >=0.4.0 < 0.6.0;

// contract 란 무수한 코드(함수) 와 데이터(상태)가 이더리움 블록체인의 특정주소에 존재하는 것.
contract SimpleStorage {

  // uint(256비트 부호없는 양의 정수) 변수 선언.
  // 상태변수에 접근할 때 일반적인 this. 키워드는 사용하지 않음.
  uint storedData;

  // get, set 을 사용하여 상태변수를 통제.
  // set을 호출하여 다른 값으로 덮어 쓰는 것이 가능하다.
  // 그러나 이전의 숫자 역시 블록체인 히스토리 안에 여전히 저장 됨.
  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }

}