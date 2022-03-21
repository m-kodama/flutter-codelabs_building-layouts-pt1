import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/ui/detail/page/detail_page.dart';
import 'package:flutter_codelab_1/ui/home/view_model/mock.dart';
import 'package:flutter_codelab_1/ui/home/view_model/state/mount_model.dart';

class AppMountListView extends StatelessWidget {
  const AppMountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          final mount = mountItems[index];
          return _MountListCard(mount: mount);
        },
      ),
    );
  }
}

class _MountListCard extends StatelessWidget {
  const _MountListCard({
    required this.mount,
    Key? key,
  }) : super(key: key);

  final MountModel mount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(mount: mount),
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(mount.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mount.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              mount.location,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
