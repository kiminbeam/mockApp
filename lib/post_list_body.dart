import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_list_page_vm.dart';
import 'package:mockapp/post_page_vm.dart';

class PostListBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<Post>? models = ref.watch(postListProvider);

    if (models == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          final post = models![index];

          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("id: ${post.id}"),
                  Text("userId: ${post.userId}"),
                  Text("title: ${post.title}"),
                  Text("body: ${post.body}"),
                  Row(),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
