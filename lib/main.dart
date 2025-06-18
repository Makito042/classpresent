import 'package:flutter/material.dart';

void main() {
  runApp(const FAQApp());
}

class FAQApp extends StatelessWidget {
  const FAQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQ App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const FAQScreen(),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;
  bool isExpanded;

  FAQItem({
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });
}

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  final List<FAQItem> _faqItems = [
    FAQItem(
      question: 'How do I reset my password?',
      answer: 'To reset your password, go to the login page and click on "Forgot Password". ' 
          'Follow the instructions sent to your registered email address to create a new password.',
    ),
    FAQItem(
      question: 'What payment methods do you accept?',
      answer: 'We accept all major credit cards (Visa, MasterCard, American Express), PayPal, '
          'and bank transfers. All transactions are securely processed.',
    ),
    FAQItem(
      question: 'How can I track my order?',
      answer: 'Once your order is shipped, you will receive a tracking number via email. ' 
          'You can use this number on our website or the shipping carrier\'s website to track your package.',
    ),
    FAQItem(
      question: 'What is your return policy?',
      answer: 'We offer a 30-day return policy for most items. Items must be in their original ' 
          'condition with all tags attached. Please contact our support team to initiate a return.',
    ),
    FAQItem(
      question: 'Do you offer international shipping?',
      answer: 'Yes, we ship to most countries worldwide. Shipping costs and delivery times vary ' 
          'depending on the destination. You can see the shipping cost at checkout.',
    ),
    FAQItem(
      question: 'How can I contact customer support?',
      answer: 'You can reach our customer support team 24/7 through the contact form on our website, '
          'via email at support@example.com, or by calling our toll-free number (800) 123-4567.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Common Questions',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
                       _buildFAQList(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: _faqItems.map((faqItem) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12.0),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(
                color: Theme.of(context).dividerColor.withOpacity(0.1),
              ),
            ),
            child: ExpansionTile(
              title: Text(
                faqItem.question,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                  child: Text(
                    faqItem.answer,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                setState(() {
                  faqItem.isExpanded = expanded;
                });
              },
              initiallyExpanded: faqItem.isExpanded,
              tilePadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              childrenPadding: EdgeInsets.zero,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              iconColor: Theme.of(context).colorScheme.primary,
              collapsedIconColor: Colors.grey[600],
            ),
          );
        }).toList(),
      ),
    );
  }
}

