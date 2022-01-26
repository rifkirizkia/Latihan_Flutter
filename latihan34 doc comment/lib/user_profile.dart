import 'package:flutter/material.dart';
// coment biasa

///Class userProfile digunakan untuk menampilkan profile user ke latar dengan indah
class UserProfile extends StatelessWidget {
  ///field ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoUrl;

  /// * [name] berisi *nama user*. Nilai defaultnya adalah `No Name`.
  ///
  /// * [role] berisi *peran/jabatan user*. Nilai defaultnya adalah `No Role`.
  ///
  /// * [photoUrl] berisi **link foto user**. Nilai defaulnya adalah `null`.
  ///
  /// contoh:
  /// ```
  ///   final UserProfile profile = UserProfile(
  ///  name: "no name",
  ///  role: "no role",
  ///  photoUrl: "http://lalala.foto.png"
  ///);
  /// ```
  UserProfile(
      {this.name = "No Name", this.role = "No Role", this.photoUrl = ""});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage((photoUrl != "")
              ? photoUrl
              : "https://yt3.ggpht.com/a/AATXAJzdBIMfIr73orFSui1MOEOn3yZ52ogJw9yJrA=s900-c-k-c0xffffffff-no-rj-mo"),
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
