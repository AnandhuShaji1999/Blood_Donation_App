import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDonar extends StatefulWidget {
  const UpdateDonar({super.key});

  @override
  State<UpdateDonar> createState() => _UpdateDonarState();
}

class _UpdateDonarState extends State<UpdateDonar> {
  final bloodGroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  String? selectedgroup;

  final CollectionReference donor =
      FirebaseFirestore.instance.collection('donor');

  TextEditingController donorname = TextEditingController();
  TextEditingController donorphone = TextEditingController();

  void UpdateDonar(docId) {
    final data = {
      'name': donorname.text,
      'phone': donorphone.text,
      'group': selectedgroup
    };
    donor.doc(docId).update(data).then((value) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    donorname.text = args['name'];
    donorphone.text = args['phone'];
    selectedgroup = args['group'];
    final docId = args['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Donors",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: donorname,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                labelText: " Donar Name",
                hintText: "Enter Donar Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorphone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: "phone number",
                    hintText: "Enter Your PhoneNymber"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  value: selectedgroup,
                  decoration:
                      InputDecoration(label: Text("select blood group")),
                  items: bloodGroups
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    selectedgroup = val;
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  UpdateDonar(docId);
                },
                style: ButtonStyle(
                    minimumSize:
                        WidgetStateProperty.all(Size(double.infinity, 50)),
                    backgroundColor: WidgetStateProperty.all(Colors.red[300])),
                child: Text(
                  "update",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
