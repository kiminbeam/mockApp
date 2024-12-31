
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_page_vm.dart';
import 'package:mockapp/post_repository.dart';

final postListProvider = NotifierProvider<PostListPageVM, List<Post>?>(() {
  return PostListPageVM();
});

class PostListPageVM extends Notifier<List<Post>?> {
  PostRepository repo = PostRepository();

  @override
  List<Post>? build() {

    init();

    return null;
  }

  Future<void> deleteById(int a) async {
    await repo.deleteById(a); // 데이터 삭제처리
    state = state?.where((post) => post.id != a).toList(); // 상태 업데이트
  }

  Future<void> init() async {
    List<Post> list = await repo.getPostList();

    state = list;
  }
}