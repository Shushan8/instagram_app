import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/presentation/page/register/login.dart';
import 'package:instagram_test_app/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
import 'package:instagram_test_app/lc.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

class ProfailMenu extends StatelessWidget {
  const ProfailMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: Text('s.khasanov_'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.archive,
                width: 22,
                height: 24,
              ),
              title: Text('Archive'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.active,
                width: 22,
                height: 24,
              ),
              title: Text('Your Activity'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.nametag,
                width: 22,
                height: 24,
              ),
              title: Text('Nametag'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.save,
                width: 22,
                height: 24,
              ),
              title: Text('Saved'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.close,
                width: 22,
                height: 24,
              ),
              title: Text('Close Friends'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.discoverpeople,
                width: 22,
                height: 24,
              ),
              title: Text('Discover People'),
              onTap: () {},
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.facebook,
                width: 22,
                height: 24,
              ),
              title: Text('Open Facebook'),
              onTap: () {},
            ),
            SizedBox(
              height: 150,
            ),
            ListTile(
              title: Text('Sign out'),
              onTap: () {
                lc<AuthRepo>().signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                    (route) => false);
              },
            ),
            ListTile(
              leading: CustomSvgIcon(
                assetName: Assets.icon.setings,
                width: 22,
                height: 24,
              ),
              title: Text('Settings'),
              onTap: () {},
            )
          ],
        ),
      ]),
    );
  }
}
