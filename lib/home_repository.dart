
// SRP : 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부서버), 내 서버, 공공데이터서버)
class HomeRepository {

  const HomeRepository();

  // 반환 타입 Future<실제 받을 반환타입> <-형태 기억하기
  Future<List<int>> getList() async {
    // 비동기 / response는 promise데이터
    List<int> response = await Future.delayed(Duration(seconds: 3), () {
      // 3초 후 실행됨..
      return [1,2,3,4];
    },);

    return response;
  }

  Future<int> getOne() async{
    int response = await Future.delayed(Duration(seconds: 3), () {
      // 3초 후 실행됨..
      return 5;
    },);

    return response;
  }
}