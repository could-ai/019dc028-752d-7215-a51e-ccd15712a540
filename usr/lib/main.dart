import 'package:flutter/material.dart';

void main() {
  runApp(const EthicsApp());
}

class EthicsApp extends StatelessWidget {
  const EthicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أخلاقيات مهنة التدريس',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF006064), // Deep Cyan
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Fallback, but standard Arabic fonts render well
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const SocialSourceScreen(),
    );
  }
}

class SocialSourceScreen extends StatelessWidget {
  const SocialSourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            pinned: true,
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              title: Text(
                'المصدر الاجتماعي\nلأخلاقيات المهنة',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: colorScheme.onPrimary,
                  height: 1.3,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.primary,
                          colorScheme.tertiary,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: -50,
                    child: Icon(
                      Icons.diversity_3,
                      size: 250,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IntroCard(),
                  const SizedBox(height: 24),
                  Text(
                    'المبادئ والموجهات الاجتماعية',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const PrincipleCard(
                    icon: Icons.public,
                    title: 'ثقافة المجتمع وقيمه',
                    description:
                        'يستمد المعلم أخلاقياته من ثوابت المجتمع، عاداته، تقاليده، وقيمه الأصيلة. حيث يُعد المعلم ممثلاً للمجتمع ومؤتمناً على غرس هذه القيم في نفوس الأجيال.',
                  ),
                  const SizedBox(height: 12),
                  const PrincipleCard(
                    icon: Icons.psychology_alt,
                    title: 'التوقعات الاجتماعية',
                    description:
                        'ينظر المجتمع إلى المعلم نظرة تقدير واحترام، ويتوقع منه أن يكون قدوة حسنة، ومثلاً أعلى في سلوكه وتصرفاته، مما يحمله مسؤولية أخلاقية مضاعفة.',
                  ),
                  const SizedBox(height: 12),
                  const PrincipleCard(
                    icon: Icons.family_restroom,
                    title: 'التنشئة الاجتماعية',
                    description:
                        'المدرسة هي المؤسسة الاجتماعية الثانية بعد الأسرة، ودور المعلم أساسي في عملية التنشئة وتوجيه السلوك وفقاً لمعايير وأخلاقيات المجتمع.',
                  ),
                  const SizedBox(height: 12),
                  const PrincipleCard(
                    icon: Icons.balance,
                    title: 'التشريعات والنظم',
                    description:
                        'القوانين والأنظمة التي يسنها المجتمع لتنظيم مهنة التعليم تعتبر مصدراً ملزماً يحدد الواجبات والحقوق ويضمن استقرار البيئة التعليمية وأخلاقياتها.',
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colorScheme.primary.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info_outline, color: colorScheme.primary),
              const SizedBox(width: 12),
              Text(
                'نبذة عامة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'تعتبر المصادر الاجتماعية من أهم الروافد التي تشكل أخلاقيات مهنة التدريس. فالمعلم لا يعمل في فراغ، بل هو جزء لا يتجزأ من النسيج الاجتماعي، يتأثر به ويؤثر فيه. ومن هنا تنبع مجموعة من المبادئ الأخلاقية التي توجه مساره المهني وتحدد علاقته بطلابه ومحيطه.',
            style: TextStyle(
              fontSize: 15,
              height: 1.6,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class PrincipleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PrincipleCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: colorScheme.onSecondaryContainer,
                size: 28,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
