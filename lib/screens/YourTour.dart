import 'package:flutter/material.dart';
class YourTour extends StatefulWidget {
	const YourTour({super.key});
	@override
		YourTourState createState() => YourTourState();
	}
class YourTourState extends State<YourTour> {
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
																		margin: const EdgeInsets.only( bottom: 228),
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/73f33957-b3c7-479c-bd44-cb99af5dffba",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Your Tour",
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
																					margin: const EdgeInsets.only( top: 20, bottom: 20, left: 16),
																					child: Text(
																						"Day 1",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 22,
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
																									margin: const EdgeInsets.only( right: 16),
																									width: 100,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d3ae6b70-6d69-45c7-9210-aa17b6a9d4c1",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Central Park Stroll",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 11),
																													child: Text(
																														"10:00 AM - 12:00 PM",
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 100,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/168752b4-bdae-4314-a60e-044439f883fd",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Lunch at The Smith",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 24),
																													child: Text(
																														"12:30 PM - 2:00 PM",
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 100,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1162584d-9181-4a65-a35e-b560390a78b8",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Metropolitan Museum of Art",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 98),
																													child: Text(
																														"2:30 PM - 4:30 PM",
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 100,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/731c3db3-e1e6-48c1-ab49-3d29e9f7059d",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Shopping on Fifth Avenue",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 77),
																													child: Text(
																														"5:00 PM - 7:00 PM",
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
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 100,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f507d848-ddab-4920-b075-2031d80aff69",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Dinner at Carbone",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 25),
																													child: Text(
																														"7:30 PM - 9:30 PM",
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
																								color: Color(0xFF93E0B2),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 9),
																							margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Text(
																										"Edit Tour",
																										style: TextStyle(
																											color: Color(0xFF141E16),
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