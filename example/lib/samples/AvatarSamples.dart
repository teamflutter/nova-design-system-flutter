import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NAvatar.dart';

class AvatarSamples extends StatelessWidget {
  const AvatarSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NAvatar(
              avatarStyle:
                  AvatarStyle(size: AvatarSize.xl2,badgeColor: Colors.green),
              textContent: "DN",
            ),
            SizedBox(height: 16,),
            NAvatar(
              avatarStyle:
              AvatarStyle(size: AvatarSize.xl,badgeColor: Colors.green),
              textContent: "KV",
            ),
            SizedBox(height: 16,),
            NAvatar(
              avatarStyle:
              AvatarStyle(size: AvatarSize.lg,badgeColor: Colors.green),
              textContent: "KV",
            ),
            SizedBox(height: 16,),
            NAvatar(
              avatarStyle:
              AvatarStyle(size: AvatarSize.md,badgeColor: Colors.green,badgePosition: BadgePosition.bottomStart),
              textContent: "KV",
            ),
            SizedBox(height: 16,),
            NAvatar(
              avatarStyle:
              AvatarStyle(size: AvatarSize.xs,badgeColor: Colors.green),
              textContent: "KV",
            ),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
