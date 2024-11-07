import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/profile/profile_screen.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void alertbox(context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            icon: Row(
              
              children: [
                IconButton(
                    onPressed: () {
                      camera();
                    },
                    icon: Icon(Icons.camera)),
                IconButton(
                    onPressed: () {
                      upload();
                    },
                    icon: Icon(Icons.file_upload_outlined))
              ],
            ),
          );
        });
  }

  Future upload() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  Future camera() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 91, 126, 155)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  )),
                  Positioned(
                      bottom: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            alertbox(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 60,
                            child: Icon(
                              Icons.person,
                              size: 60,
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 50,
                      left: 80,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Color.fromARGB(255, 101, 136, 164),
                        child: IconButton(
                            onPressed: () {
                              alertbox(context);
                            },
                            icon: Icon(Icons.camera_alt_rounded)),
                      ))
                ],
              )),
          Flexible(
            child: ListView.builder(
                itemCount: profileData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(profileData[index].Icons.icon),
                      title: Text(profileData[index].name),
                      trailing: Icon(profileData[index].Icon1.icon),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
