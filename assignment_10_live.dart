import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssLive extends StatelessWidget {
  const AssLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Contact List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name TextField
            TextFormField(
              decoration:  InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(height: 10),

            // Phone Number TextField
            TextFormField(
              decoration:  InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(height: 15),

            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child:  Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
             SizedBox(height: 20),

            // Contact List
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[100],
                    margin:  EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading:
                       Icon(Icons.person, size: 40, color: Colors.brown),
                      trailing:
                       Icon(Icons.call, size: 30, color: Colors.blue),
                      title:  Text(
                        'Hasan',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      subtitle:  Text('01745-777777'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
