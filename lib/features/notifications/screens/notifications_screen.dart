import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
	const Notifications({super.key});
	@override
		NotificationsState createState() => NotificationsState();
	}
class NotificationsState extends State<Notifications> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: Container(
									color: Color(0xFFFFFFFF),
									width: double.infinity,
									height: double.infinity,
									child: SingleChildScrollView(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														color: Color(0xFF141E16),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		margin: const EdgeInsets.only( bottom: 283),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( top: 12, bottom: 12, right: 24),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/396d3015-4326-4eda-bc5f-faa582ad8688",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Notifications",
																									style: TextStyle(
																										color: Color(0xFFFFFFFF),
																										fontSize: 18,
																										fontWeight: FontWeight.bold,
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 7, bottom: 7, left: 12, right: 12),
																						width: double.infinity,
																						child: Row(
																							children: [
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(16),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.only( top: 5, bottom: 5, left: 16, right: 16),
																												margin: const EdgeInsets.only( right: 12),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"All",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 14,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( left: 16),
																														width: 35,
																														child: Text(
																															"Mentions",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 14,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																															color: Color(0xFF283F33),
																														),
																														width: 92,
																														height: 32,
																														child: SizedBox(),
																													),
																												]
																											),
																										),
																									),
																								),
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(16),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.only( top: 5, bottom: 5, left: 16, right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Likes",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 14,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a82bdad6-5742-4455-911b-028aa9380787",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Sophia Carter liked your post",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 201),
																													child: Text(
																														"1d",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 14,
																														),
																													),
																												),
																											]
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8f08c1c2-5e47-4f1a-a91f-018342bf74f9",
																										fit: BoxFit.fill,
																									)
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: SizedBox(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													SizedBox(
																														width: double.infinity,
																														child: Text(
																															"Ethan Walker commented on your post",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 16,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Text(
																														"2d",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/76580698-799d-4257-9624-08a0fa046808",
																										fit: BoxFit.fill,
																									)
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: SizedBox(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Text(
																														"Isabella Bennett mentioned you in a comment",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 16,
																															fontWeight: FontWeight.bold,
																														),
																													),
																													Text(
																														"3d",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/998a0c6d-ab10-4202-ac2f-09bbb10874fb",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Liam Harper liked your post",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 186),
																													child: Text(
																														"4d",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 14,
																														),
																													),
																												),
																											]
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0f3eae6f-b2ab-451b-bb0f-fd721c3ba0a9",
																										fit: BoxFit.fill,
																									)
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: SizedBox(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													SizedBox(
																														width: double.infinity,
																														child: Text(
																															"Olivia Hayes commented on your post",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 16,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Text(
																														"5d",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
																SizedBox(
																	height: 73,
																	width: double.infinity,
																	child: Image.network(
																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f048ea16-686d-45d6-b4bc-2d0046db50b0",
																		fit: BoxFit.fill,
																	)
																),
															]
														),
													),
												),
											],
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}