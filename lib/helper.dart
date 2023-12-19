import 'package:cloud_firestore/cloud_firestore.dart';

void addDataToFirestore() async {
  var firestore = FirebaseFirestore.instance;

  // Add data to the "topics" collection
  DocumentReference topicRef = await firestore.collection('topics').add({
    // Your topic data here
  });

  // Add data to the "testKnowledge" collection under the topic
  await topicRef.collection('testKnowledge').add({
    // Your testKnowledge data here
  });

  // Add data to the "articles" collection under testKnowledge
  await topicRef.collection('testKnowledge').doc('your_test_knowledge_id').collection('articles').add({
    // Your article data here
  });

  // Add data to the "videos" collection under testKnowledge
  await topicRef.collection('testKnowledge').doc('your_test_knowledge_id').collection('videos').add({
    // Your video data here
  });

  // Add data to the "testLect" collection under the topic
  await topicRef.collection('testLect').add({
    // Your testLect data here
  });

  // Add data to the "quizzes" collection under testLect
  await topicRef.collection('testLect').doc('your_test_lect_id').collection('quizzes').add({
    // Your quiz data here
  });
}
