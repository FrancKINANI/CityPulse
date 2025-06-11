import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
	const EditProfile({super.key});
	@override
		EditProfileState createState() => EditProfileState();
	}
class EditProfileState extends State<EditProfile> {
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/78fc071a-cce7-4420-b19e-44253f683fd9",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Edit Profile",
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
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b55817f0-b7a2-4396-b3a7-0f0a0d3156ee",
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
																																		"Sophia Carter",
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
																																		"@sophia_carter",
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
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 8),
																									child: Text(
																										"Name",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																										color: Color(0xFF283F33),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 8),
																									child: Text(
																										"Email",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																										color: Color(0xFF283F33),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 8),
																									child: Text(
																										"Phone",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																										color: Color(0xFF283F33),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 8),
																									child: Text(
																										"Location",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																										color: Color(0xFF283F33),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 8),
																									child: Text(
																										"Bio",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																										color: Color(0xFF283F33),
																									),
																									height: 144,
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
																								borderRadius: BorderRadius.circular(24),
																								color: Color(0xFF93E0B2),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 12),
																							margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 1),
																										child: Text(
																											"Save Changes",
																											style: TextStyle(
																												color: Color(0xFF141E16),
																												fontSize: 16,
																												fontWeight: FontWeight.bold,
																											),
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