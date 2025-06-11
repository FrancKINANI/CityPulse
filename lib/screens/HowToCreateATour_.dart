import 'package:flutter/material.dart';
class HowToCreateATour? extends StatefulWidget {
	const HowToCreateATour?({super.key});
	@override
		HowToCreateATour?State createState() => HowToCreateATour?State();
	}
class HowToCreateATour?State extends State<HowToCreateATour?> {
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
																		margin: const EdgeInsets.only( bottom: 443),
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b2568280-d018-4a12-b8a7-6566788035bb",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Create a Tour",
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
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
																					width: double.infinity,
																					child: Text(
																						"How would you like to start?",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 28,
																							fontWeight: FontWeight.bold,
																						),
																						textAlign: TextAlign.center,
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 12),
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
																											margin: const EdgeInsets.only( bottom: 12, left: 16, right: 16),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 1),
																														child: Text(
																															"Surprise Me",
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(24),
																												color: Color(0xFF283F33),
																											),
																											padding: const EdgeInsets.symmetric(vertical: 12),
																											margin: const EdgeInsets.symmetric(horizontal: 16),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Text(
																														"Create Your Own",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 16,
																															fontWeight: FontWeight.bold,
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/df4c9979-1fab-4308-9dd2-4e1a4c719fe7",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(27),
																											),
																											padding: const EdgeInsets.only( left: 41, right: 41),
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 4, right: 4),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/15e25e97-921d-4ff6-9619-2b662bad0de2",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Tours",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 12,
																															fontWeight: FontWeight.bold,
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
																											padding: const EdgeInsets.only( left: 38, right: 38),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 7, right: 7),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/86ce0812-6ab9-4fe7-b295-3e70cc14fedb",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Profile",
																														style: TextStyle(
																															color: Color(0xFF9BBFAA),
																															fontSize: 12,
																															fontWeight: FontWeight.bold,
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