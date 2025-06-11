import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
	const Profile({super.key});
	@override
		ProfileState createState() => ProfileState();
	}
class ProfileState extends State<Profile> {
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
																		margin: const EdgeInsets.only( bottom: 86),
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/cdbab2e9-b867-4a1c-aa22-beeecd910979",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Profile",
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
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Column(
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 16),
																													width: 128,
																													height: 128,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/fd151d05-98b8-447c-95bd-b04dd3c0651b",
																														fit: BoxFit.fill,
																													)
																												),
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Column(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1),
																																	child: Text(
																																		"Sophia Bennett",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 22,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1),
																																	child: Text(
																																		"sophia.bennett@email.com",
																																		style: TextStyle(
																																			color: Color(0xFF9BBFAA),
																																			fontSize: 16,
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
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Account",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(8),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.all(8),
																												margin: const EdgeInsets.only( right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(8),
																															),
																															width: 24,
																															height: 24,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(8),
																																child: Image.network(
																																	"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b118c6a9-77b0-4f0c-bd51-0623e820af3c",
																																	fit: BoxFit.fill,
																																)
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Personal Information",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(8),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.all(8),
																												margin: const EdgeInsets.only( right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(8),
																															),
																															width: 24,
																															height: 24,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(8),
																																child: Image.network(
																																	"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/71d3cf13-15a4-4f71-bd54-ae44cc1c6eed",
																																	fit: BoxFit.fill,
																																)
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"App Settings",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(8),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.all(8),
																												margin: const EdgeInsets.only( right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(8),
																															),
																															width: 24,
																															height: 24,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(8),
																																child: Image.network(
																																	"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9865ff56-5b1b-46d2-9d1f-89372e4a00a4",
																																	fit: BoxFit.fill,
																																)
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Notifications",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Support",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(8),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.all(8),
																												margin: const EdgeInsets.only( right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(8),
																															),
																															width: 24,
																															height: 24,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(8),
																																child: Image.network(
																																	"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0593b80e-dc23-444e-ad3a-8222bae962c5",
																																	fit: BoxFit.fill,
																																)
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Help Center",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(8),
																													color: Color(0xFF283F33),
																												),
																												padding: const EdgeInsets.all(8),
																												margin: const EdgeInsets.only( right: 16),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(8),
																															),
																															width: 24,
																															height: 24,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(8),
																																child: Image.network(
																																	"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b3b06ff8-4315-4433-a25d-8ddb2c698b8b",
																																	fit: BoxFit.fill,
																																)
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Contact Us",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
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
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				InkWell(
																					onTap: () { print('Pressed'); },
																					child: IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(20),
																								color: Color(0xFF283F33),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 9),
																							margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Text(
																										"Log Out",
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
																				Container(
																					color: Color(0xFF141E16),
																					height: 20,
																					width: double.infinity,
																					child: SizedBox(),
																				),
																			]
																		),
																	),
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