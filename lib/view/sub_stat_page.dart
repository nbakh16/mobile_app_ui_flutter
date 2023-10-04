import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app_ui_flutter/utils/image_assets.dart';

import '../utils/colors.dart';
import '../widgets/plan_features_table.dart';

class SubscriptionStatusPage extends StatelessWidget {
  const SubscriptionStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(IconlyLight.arrowLeft2, color: AppColors.vanillaWhite, size: 40,)
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Image.asset(ImageAssets.metaLogo),
                            ),
                            Image.asset(ImageAssets.verifiedLogo, width: 22,)
                          ],
                        ),
                      ),
                    ),
                    const Expanded(flex: 1, child: VerticalDivider(width: 1, thickness: 3, color: AppColors.primaryAccent)),
                    Expanded(
                      flex: 3,
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Meta',
                              style: TextStyle(
                                color: AppColors.amberDark,
                              ),
                            ),
                            TextSpan(
                              text: ' Collaborated with',
                            ),
                            TextSpan(
                              text: ' Pranayama',
                              style: TextStyle(
                                color: AppColors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14.0,),
              const PlanFeaturesTable(),
              const SizedBox(height: 14.0,),
              RichText(textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'You are now using\n\n',
                    ),
                    TextSpan(
                      text: 'Pranayama',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: ' Plus+',
                      style: GoogleFonts.satisfy(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.85,
                        color: AppColors.amber,
                      ),
                    ),
                    const TextSpan(
                      text: '\n\nEnd: 18 July 2023',
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
