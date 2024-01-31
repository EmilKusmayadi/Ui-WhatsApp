import 'package:flutter/material.dart';
import '../components/list_chat.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13, left: 25, bottom: 10),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.archive_sharp,
                        color: Color.fromARGB(
                          255,
                          15,
                          120,
                          108,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "DiArsipkan",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const ListChat(
                  colorIcon: Colors.blue,
                  iconsMessage: Icons.done_all_rounded,
                  imageUrl:
                      "https://wallpapers.com/images/hd/professional-profile-pictures-2880-x-1920-7jvygpai7v9zkg2j.jpg",
                  title: "Bruce Gordon",
                  subtitle:
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  trailing: "09.21",
                ),
                const ListChat(
                  colorIcon: Colors.grey,
                  iconsMessage: Icons.done_all_rounded,
                  imageUrl:
                      "https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg",
                  title: "Felicia Quinn",
                  subtitle:
                      "from a Lorem Ipsum passage, and going through the cites of the",
                  trailing: "07.01",
                ),
                const ListChat(
                  colorIcon: Colors.grey,
                  iconsMessage: Icons.done,
                  imageUrl:
                      "https://img.freepik.com/free-photo/young-beautiful-woman-smiling-posing-purple-wall_176420-2852.jpg?size=626&ext=jpg&ga=GA1.1.2116175301.1701302400&semt=ais",
                  title: "Trevor Simon",
                  subtitle:
                      "variations of passages of Lorem Ipsum available, but the majority have suffered ",
                  trailing: "12.10",
                ),
                const ListChat(
                  colorIcon: Colors.blue,
                  iconsMessage: Icons.done_all_rounded,
                  imageUrl:
                      "https://img.freepik.com/free-photo/portrait-optimistic-businessman-formalwear_1262-3600.jpg?size=626&ext=jpg&ga=GA1.1.2116175301.1701302400&semt=ais",
                  title: "Yolanda Higgins",
                  subtitle:
                      "variations of passages of Lorem Ipsum available, but the majority have suffered ",
                  trailing: "17.20",
                ),
                const ListChat(
                  colorIcon: Colors.grey,
                  iconsMessage: Icons.done,
                  imageUrl:
                      "https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.webp?b=1&s=170667a&w=0&k=20&c=TXCiY7rYEvIBd6ibj2bE-VbJu0rRGy3MlHwxt2LHt9w=",
                  title: "Kate Terry",
                  subtitle:
                      "variations of passages of Lorem Ipsum available, but the majority have suffered ",
                  trailing: "10.01",
                ),
                const ListChat(
                  colorIcon: Colors.grey,
                  iconsMessage: Icons.done_all_rounded,
                  imageUrl:
                      "https://shanibacreative.com/wp-content/uploads/2021/12/Profile-Shoot-1-scaled.jpg",
                  title: "Allan Fernandez",
                  subtitle:
                      "variations of passages of Lorem Ipsum available, but the majority have suffered ",
                  trailing: "19.00",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
