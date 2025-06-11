import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
	const Setting({super.key});
	@override
		SettingState createState() => SettingState();
	}
class SettingState extends State<Setting> {
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
																		margin: const EdgeInsets.only( bottom: 112),
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8bd2708b-31ec-416c-878b-1e8e124e4f0a",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Settings",
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
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Appearance",
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
																						padding: const EdgeInsets.only( top: 13, bottom: 13, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											children: [
																												Text(
																													"Theme",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Text(
																													"System",
																													style: TextStyle(
																														color: Color(0xFF9BBFAA),
																														fontSize: 14,
																													),
																												),
																											]
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Light",
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
																						padding: const EdgeInsets.only( top: 13, bottom: 13, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Language",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 30),
																													child: Text(
																														"English",
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
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"English",
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
																						"Privacy",
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Location Services",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(15),
																												color: Color(0xFF283F33),
																											),
																											padding: const EdgeInsets.only( top: 2, bottom: 2, left: 2, right: 22),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(13),
																															color: Color(0xFFFFFFFF),
																															boxShadow: [
																																BoxShadow(
																																	color: Color(0x26000000),
																																	blurRadius: 8,
																																	offset: Offset(0, 3),
																																),
																															],
																														),
																														width: 27,
																														height: 27,
																														child: SizedBox(),
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
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
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(15),
																												color: Color(0xFF283F33),
																											),
																											padding: const EdgeInsets.only( top: 2, bottom: 2, left: 2, right: 22),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(13),
																															color: Color(0xFFFFFFFF),
																															boxShadow: [
																																BoxShadow(
																																	color: Color(0x26000000),
																																	blurRadius: 8,
																																	offset: Offset(0, 3),
																																),
																															],
																														),
																														width: 27,
																														height: 27,
																														child: SizedBox(),
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Data Sharing",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(15),
																												color: Color(0xFF283F33),
																											),
																											padding: const EdgeInsets.only( top: 2, bottom: 2, left: 2, right: 22),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(13),
																															color: Color(0xFFFFFFFF),
																															boxShadow: [
																																BoxShadow(
																																	color: Color(0x26000000),
																																	blurRadius: 8,
																																	offset: Offset(0, 3),
																																),
																															],
																														),
																														width: 27,
																														height: 27,
																														child: SizedBox(),
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
																						padding: const EdgeInsets.only( top: 14, bottom: 14, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Change Password",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a6c203e6-0a42-488a-9115-ec94e5921f05",
																										fit: BoxFit.fill,
																									)
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF141E16),
																						padding: const EdgeInsets.only( top: 14, bottom: 14, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Delete Account",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5ab1a21f-da62-4e67-9adb-4900b9479525",
																										fit: BoxFit.fill,
																									)
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
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							border: Border(
																								top: BorderSide(
																									color: Color(0xFF283F33),
																									width: 1,
																								),
																							),
																							color: Color(0xFF1E2D26),
																						),
																						padding: const EdgeInsets.only( top: 9, bottom: 9, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 45, right: 45),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/816f898b-c47a-4155-9906-16425d0b24a5",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 36, right: 36),
																														child: Text(
																															"Explore",
																															style: TextStyle(
																																color: Color(0xFF9BBFAA),
																																fontSize: 12,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 45, right: 45),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/130d59aa-39e3-453b-9641-c88b4b0cb8c2",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 41, right: 41),
																														child: Text(
																															"Tours",
																															style: TextStyle(
																																color: Color(0xFF9BBFAA),
																																fontSize: 12,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(27),
																											),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 45, right: 45),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1aa8fc6e-dfcc-48c0-bea1-503764cf4325",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 38, right: 38),
																														child: Text(
																															"Profile",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 12,
																																fontWeight: FontWeight.bold,
																															),
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
																				Container(
																					color: Color(0xFF1E2D26),
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