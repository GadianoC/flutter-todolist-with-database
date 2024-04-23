import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  final CollectionReference tasks =
      FirebaseFirestore.instance.collection('tasks');

  // create
  Future addTask(String task) {
    return tasks.add({
      'task': task,
      'time_stamp': Timestamp.now(),
    });
  }

  //read
  Stream get getTasks {
    return tasks
        .orderBy(
          'time_stamp',
          descending: true,
        )
        .snapshots();
  }

  //update
  Future updateTask(
    String docID,
    String newTask,
  ) {
    return tasks.doc(docID).update({
      'task': newTask,
      'time': Timestamp.now(),
    });
  }

  //delete
  Future deleteTask(String docID) {
    return tasks.doc(docID).delete();
  }
}
