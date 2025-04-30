import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../model/chat_model.dart';
import 'dart:math' as math;

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {int currentUser=1;
  final TextEditingController message = TextEditingController();
 final List<Chat> messages = [
    Chat(
      id: "1",
      text: "Hello! How are you?",
      sender: Sender(id: 1, name: "Felix Murphy", role: "User", avatar: ""),
      timestamp: DateTime.now().millisecondsSinceEpoch,
    ),
    Chat(
      id: "2",
      text: "I'm good, thanks! How about you?",
      sender: Sender(id: 2, name: "You", role: "User", avatar: ""),
      timestamp: DateTime.now().millisecondsSinceEpoch - 5000,
    ),
    Chat(
      id: "3",
      text: "All good! I want 2kg of gas?",
      sender: Sender(id: 1, name: "Felix Murphy", role: "User", avatar: ""),
      timestamp: DateTime.now().millisecondsSinceEpoch - 10000,
    ),
    Chat(
      id: "4",
      text: "Absolutely! Why not! 😊",
      sender: Sender(id: 2, name: "You", role: "User", avatar: ""),
      timestamp: DateTime.now().millisecondsSinceEpoch - 15000,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leadingWidth: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
             // BackButton(),

              GestureDetector(
                onTap: () { Get.to(()=>HostDetailProfileView());

                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(Assets.profileImage1),
                ),
              ),
              Widgets.widthSpaceW3,
              GestureDetector(
                onTap: () {
                  Get.to(()=>const HostDetailProfileView());
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texts.textBlock("Felix Murphy",
                        size: 14, fontWeight: FontWeight.w700),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: ColorConstants.greenColor,
                        ),
                        Widgets.widthSpaceW1,
                        const Text("Active Now",
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.black45,
                                fontFamily: "PlusJakartaSansRegular"))
                      ],
                    ),
                  ],
                ),
              )
            ]),
            Divider(
              color: ColorConstants.grayFillColor,
              thickness: .5,
            )
          ],
        ),
      ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child:Scrollbar(
                      radius: const Radius.circular(10),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        reverse: true,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          Chat chat = messages[index];
                          return chat.sender?.id != currentUser
                              ? SentMessage(message: chat)
                              : ReceivedBubbleChat(message: chat, onAvatarTap: () {

                          },);
                        },


                ))),

            buildMessageInput()
            ],
          ),
        )
    );
  }

Widget buildMessageInput() {
  return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: ColorConstants.greyTextColor),
    padding: const EdgeInsets.only(right: 8.0),   margin: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: TextField(

            maxLines: null, // Allows multiline input
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,style: TextStyle(color: Colors.black87,fontFamily: "InstrumentSansRegular"),
            decoration: InputDecoration(
              hintText: "Message..",
              fillColor: Colors.grey.shade200,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),Icon(Icons.photo_camera_outlined,color: Colors.white,), const SizedBox(width: 10)
        ,InkWell(
            onTap: () {
              if (message.text.trim().isNotEmpty) {
                setState(() {
                  messages.insert(
                    0,
                    Chat(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      text: message.text.trim(),
                      sender: Sender(id: currentUser, name: "You", role: "User", avatar: ""),
                      timestamp: DateTime.now().millisecondsSinceEpoch,
                    ),
                  );
                });
                message.clear();
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: ColorConstants.blackColor,
                  shape: BoxShape.circle),
              child: Image.asset(Assets.sendIcon,width: 20,height:20),
            )),
      ],
    ),
  );
}
}


class HostDetailProfileView extends StatelessWidget {
  const HostDetailProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  Assets.appLogo,
                  fit: BoxFit.cover, // Ensure the image covers the area
                  height: .2.sh, // Set a fixed height for the cover image
                  width: double.infinity,
                ),
                Positioned(
                    top: 50,
                    left: 20,
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 20,
                          color: Colors.white,
                        ))),
                Positioned(
                    bottom: -50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Assets.profileImage1),
                      radius: 50,
                    )),
              ],
            ),
            Padding(
              padding:
              PaddingConstants.screenPadding.copyWith(top: 0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Widgets.heightSpaceH5,
                  Widgets.heightSpaceH2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Widgets.widthSpaceW4,
                      Texts.textBlock("Loca Morreti", size: 18),
                      Image.asset(
                        Assets.truck_icon,
                        height: 15,
                        width: 15,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.reviewStar,
                        height: 10,
                        width: 10,
                      ),
                      Widgets.widthSpaceW1,
                      Texts.textNormal("4.8(53 reviews)",
                          size: 11, color: Colors.black54),
                    ],
                  ),
                  Widgets.heightSpaceH2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: "Chat",
                          fontSize: 12,
                          backgroundColor: ColorConstants.blackColor,
                          textColor: ColorConstants.whiteColor,
                          radius: 50,
                          onTap: () {},
                        ),
                      ),
                      Widgets.widthSpaceW3,
                      Expanded(
                        child: CustomButton(
                          label: "Pay Deposit",
                          fontSize: 12,
                          borderColor: Colors.transparent,
                          backgroundColor: ColorConstants.primaryColor,
                          textColor: ColorConstants.blackColor,
                          radius: 50,
                          onTap: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: ColorConstants.grayFillColor,
            ),
            Padding(
              padding: PaddingConstants.screenPadding.copyWith(top: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.textBlock("Bio", size: 16),
                  Widgets.heightSpaceH1,
                  Texts.textNormal(
                      "Lorem ipsum dolor sit amet consectetur. Et erat aliquet quisque a vel nam id sollicitudin id. Odio eget nam varius odio duis gravida aliquet mattis. Diam risus a a natoque vitae proin tortor blandit. Venenatis mi sem.....",
                      textAlign: TextAlign.start,
                      size: 12,
                      color: Colors.black54),
                  Widgets.heightSpaceH2,
                 Widgets.divider(),
                  Widgets.heightSpaceH1,
                  buildGeneralInfo(),
                  Widgets.divider(),
                  Widgets.heightSpaceH1,
                  buildHostVerificationInfo(),
                  Widgets.divider(),
                  buildCertificatesTrainings(),
                  Widgets.heightSpaceH2,
                  Widgets.divider(),    Widgets.heightSpaceH1,
                  Texts.textBlock("Reviews", size: 16),
                  Widgets.heightSpaceH2,
                  ReviewSection(
                    name: "Amanda Cyrus",
                    image: Assets.profileImage1,
                    dateAndTime: "Fri 24 Jan, 2023 at 11:30pm",
                    comment:
                    "Lorem ipsum dolor sit amet consectetur. Nunc magna aliquet fermentum quis. ",
                    postImage: Assets.appLogo,
                  ),
                  Widgets.heightSpaceH3,
                  ReviewSection(
                    name: "Shadab Khan",
                    image: Assets.profileImage1,
                    dateAndTime: "Fri 24 Jan, 2023 at 11:30pm",
                    comment:
                    "Lorem ipsum dolor sit amet consectetur. Nunc magna aliquet fermentum quis. ",
                  ),
                  CustomButton(
                    label: "See All Reviews",
                    textColor: ColorConstants.blackColor,
                    radius: 50,
                    borderColor: ColorConstants.blackColor,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildGeneralInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.textBlock("General Information", size: 16),
        Widgets.heightSpaceH1,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country",
                    style: TextStyle(
                        fontSize: 10,
                        color: ColorConstants.greyTextColor,
                        fontFamily: "PlusJakartaSansRegular"),
                  ),
                  SizedBox(height: 1),
                  Texts.textNormal("Italy",
                      size: 13, color: ColorConstants.blackColor),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "City",
                    style: TextStyle(
                        fontSize: 10,
                        color: ColorConstants.greyTextColor,
                        fontFamily: "PlusJakartaSansRegular"),
                  ),
                  SizedBox(height: 1),
                  Texts.textNormal("Rome",
                      size: 13, color: ColorConstants.blackColor),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                        fontSize: 10,
                        color: ColorConstants.greyTextColor,
                        fontFamily: "PlusJakartaSansRegular"),
                  ),
                  SizedBox(height: 1),
                  Texts.textNormal("Male",
                      size: 13, color: ColorConstants.blackColor),
                ],
              ),
            ),
          ],
        ),
        Widgets.heightSpaceH3,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Language",
                    style: TextStyle(
                        fontSize: 10,
                        color: ColorConstants.greyTextColor,
                        fontFamily: "PlusJakartaSansRegular"),
                  ),
                  SizedBox(height: 1),
                  Texts.textNormal("English,Spanish,Italian,Chinese",
                      size: 13,
                      color: ColorConstants.blackColor,
                      textAlign: TextAlign.start),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 41),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Offered Countries",
                      style: TextStyle(
                          fontSize: 10,
                          color: ColorConstants.greyTextColor,
                          fontFamily: "PlusJakartaSansRegular"),
                    ),
                    SizedBox(height: 1),
                    Texts.textNormal("Spain, Italy",
                        size: 14, color: ColorConstants.blackColor),
                  ],
                ),
              ),
            ),
          ],
        ),
        Widgets.heightSpaceH1,
      ],
    );
  }

  buildHostVerificationInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.textBlock("Host Verification Methods", size: 16),
        Widgets.heightSpaceH2,
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      ),
                      Widgets.widthSpaceW2,
                      Texts.textNormal("Email Address", size: 12),
                      Expanded(child: Widgets.widthSpaceW2),
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      )
                    ],
                  )
                ],
              ),
            ),
            Widgets.widthSpaceW4,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      ),
                      Widgets.widthSpaceW2,
                      Texts.textNormal("Phone", size: 12),
                      Expanded(child: Widgets.widthSpaceW2),
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Widgets.heightSpaceH2,
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      ),
                      Widgets.widthSpaceW2,
                      Texts.textNormal("Passport/IDCard", size: 12),
                      Expanded(child: Widgets.widthSpaceW2),
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      )
                    ],
                  )
                ],
              ),
            ),
            Widgets.widthSpaceW4,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      ),
                      Widgets.widthSpaceW2,
                      Texts.textNormal("Video Interview", size: 12),
                      Expanded(child: Widgets.widthSpaceW2),
                      Image.asset(
                        Assets.shareIcon,
                        height: 15,
                        width: 15,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Widgets.heightSpaceH2,
      ],
    );
  }

  buildCertificatesTrainings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Widgets.heightSpaceH1,
        Texts.textBlock("Certificates And Trainings", size: 16),
        Widgets.heightSpaceH2,
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  Assets.shareIcon,
                  height: 15,
                  width: 15,
                ),
                Widgets.heightSpaceH2,
                Image.asset(
                  Assets.shareIcon,
                  height: 15,
                  width: 15,
                ),
              ],
            ),
            Widgets.widthSpaceW1,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.textNormal("Certificate of Incorporation", size: 12),
                Widgets.heightSpaceH2,
                Texts.textNormal("Tour Operator License", size: 12)
              ],
            )
          ],
        ),

      ],
    );
  }
}


class ReviewSection extends StatelessWidget {
  const ReviewSection(
      {super.key, this.image, this.name, this.dateAndTime, this.comment, this.postImage});

  final String? image;
  final String? name;
  final String? dateAndTime;
  final String? comment;
  final String? postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image!),
              radius: 20,
            ),
            Widgets.widthSpaceW2,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.textBlock(
                  name!,
                  size: 13,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  dateAndTime!,
                  style: TextStyle(
                      fontSize: 9,
                      color: Colors.black54,
                      fontFamily: "InstrumentSansRegular"),
                ),
              ],
            )
          ],
        ),
        Widgets.heightSpaceH1,
        Widgets.buildRatingStar(5),
        Widgets.heightSpaceH1,
        Texts.textMedium(comment!, size: 12, color: ColorConstants.greyTextColor),
        Widgets.heightSpaceH2,
        postImage == null
            ? Container()
            : Image.asset(
          postImage ?? '',
          height: 100,
        ),
      ],
    );
  }
}


 // import this

class ReceivedBubbleChat extends StatelessWidget {
  final Chat message;
  final Callback? onAvatarTap;
  const ReceivedBubbleChat({super.key, required this.message, required this.onAvatarTap});

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomPaint(
                painter: Triangle(ColorConstants.blackColor),
              ),
            ),
            Flexible(
              child: Container(
                padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                decoration:  BoxDecoration(
                  color: ColorConstants.blackColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      message.text ?? "",
                      style: const TextStyle(color: Colors.white, fontSize: 15,fontFamily: "LatoRegular"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "02:00 PM",
                      style: const TextStyle(color: Colors.white70, fontSize: 8),
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));

    return Container(
      margin: const EdgeInsets.only(right: 20.0, left: 5, top: 0, bottom: 5),
      padding: const EdgeInsets.only(right: 20.0, left: 5, top: 5, bottom: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: onAvatarTap,
            child:CircleAvatar(radius:16,backgroundImage: AssetImage(Assets.profileImage1),),
          ),
          const SizedBox(
            width: 5,
          ),
          messageTextGroup,
        ],
      ),
    );
  }
}

class SentMessage extends StatelessWidget {
  final Chat message;
  const SentMessage({super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                decoration: BoxDecoration(
                  color:ColorConstants.grayFillColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      message.text ?? "",
                      style: const TextStyle(color: Colors.black87, fontSize: 15,fontFamily: "PlusJakartaSansRegular"),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "02:00 PM  ",
                          style: const TextStyle(color: Colors.black45, fontSize: 8),
                          textAlign: TextAlign.start,
                        ),Icon(Icons.check,color: Colors.blueAccent,size: 8,)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomPaint(
                painter: Triangle(ColorConstants.grayFillColor),
              ),
            ),
          ],
        ));

    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}


class Triangle extends CustomPainter {
  final Color bgColor;

  Triangle(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}