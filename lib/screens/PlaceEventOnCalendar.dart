import 'package:flutter/material.dart';
class PlaceEventOnCalendar extends StatefulWidget {
	const PlaceEventOnCalendar({super.key});
	@override
		PlaceEventOnCalendarState createState() => PlaceEventOnCalendarState();
	}
class PlaceEventOnCalendarState extends State<PlaceEventOnCalendar> {
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
														color: Color(0xFF112116),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: SizedBox(
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( top: 12, bottom: 12, right: 24),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/4dd93936-1362-4b5d-8111-154d6f1e0f3f",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Events",
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
																						padding: const EdgeInsets.only( bottom: 12, left: 16, right: 257),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( top: 16, bottom: 17),
																									child: Text(
																										"List",
																										style: TextStyle(
																											color: Color(0xFF96C4A8),
																											fontSize: 14,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( top: 16, bottom: 17),
																									child: Text(
																										"Calendar",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 14,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 16, bottom: 16, left: 27, right: 27),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.all(4),
																										margin: const EdgeInsets.only( bottom: 2),
																										width: double.infinity,
																										child: Row(
																											children: [
																												Container(
																													margin: const EdgeInsets.all(11),
																													width: 18,
																													height: 18,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/24b86462-e59a-4223-ba33-05354f5cf715",
																														fit: BoxFit.fill,
																													)
																												),
																												Expanded(
																													child: Container(
																														margin: const EdgeInsets.only( bottom: 1),
																														width: double.infinity,
																														child: Text(
																															"May 2024",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 16,
																																fontWeight: FontWeight.bold,
																															),
																															textAlign: TextAlign.center,
																														),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.all(11),
																													width: 18,
																													height: 18,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/faa7264d-7eaa-4ac0-ad73-233899fd9d93",
																														fit: BoxFit.fill,
																													)
																												),
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: SizedBox(
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 19),
																																						child: Text(
																																							"S",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																																	margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
																																	child: Text(
																																		"M",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 13,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"T",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"W",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"T",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"F",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 19),
																																						child: Text(
																																							"S",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 13,
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
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 13),
																																	child: Text(
																																		"1",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"2",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"3",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"4",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																				borderRadius: BorderRadius.circular(24),
																																				color: Color(0xFF38E07A),
																																			),
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"5",
																																							style: TextStyle(
																																								color: Color(0xFF112116),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"6",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"7",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 19),
																																						child: Text(
																																							"8",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 20),
																																						child: Text(
																																							"9",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"10",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																	margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
																																	child: Text(
																																		"11",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"12",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"13",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"14",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"15",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"16",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"17",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"18",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 17),
																																						child: Text(
																																							"19",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 15),
																																						child: Text(
																																							"20",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																	margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
																																	child: Text(
																																		"21",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																															]
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"22",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"23",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"24",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"25",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"26",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 16),
																																						child: Text(
																																							"27",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																																			padding: const EdgeInsets.symmetric(vertical: 13),
																																			width: double.infinity,
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.end,
																																				children: [
																																					Container(
																																						margin: const EdgeInsets.only( right: 15),
																																						child: Text(
																																							"28",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																												IntrinsicHeight(
																													child: SizedBox(
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
																																	child: Text(
																																		"29",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
																																	child: Text(
																																		"30",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																					margin: const EdgeInsets.only( top: 20, bottom: 20, left: 16),
																					child: Text(
																						"Today",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 22,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/3d8dea2c-68b3-4356-abad-72584cb3da18",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Art Exhibition",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 44),
																													child: Text(
																														"10:00 AM",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/28d3492b-2fe3-4133-a6dc-efabe118c366",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Music Festival",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 55),
																													child: Text(
																														"2:00 PM",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 16),
																									width: 56,
																									height: 56,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1cda3367-4a01-4f59-bba0-a29c4977ee04",
																										fit: BoxFit.fill,
																									)
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Theater Performance",
																													style: TextStyle(
																														color: Color(0xFFFFFFFF),
																														fontSize: 16,
																														fontWeight: FontWeight.bold,
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 108),
																													child: Text(
																														"7:00 PM",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																	child: SizedBox(
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							border: Border(
																								top: BorderSide(
																									color: Color(0xFF264433),
																									width: 1,
																								),
																							),
																							color: Color(0xFF1C3023),
																						),
																						padding: const EdgeInsets.only( top: 9, bottom: 9, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.only( top: 4, bottom: 4, left: 20, right: 20),
																											margin: const EdgeInsets.only( right: 9),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 9, right: 9),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9640b0b3-f9a3-48a7-aed9-78d487c5b85c",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Explore",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																											padding: const EdgeInsets.only( top: 4, bottom: 4, left: 25, right: 25),
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 4, right: 4),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e6d9e0fd-9284-4522-80a2-0fd15b4c5d2f",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Tours",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(27),
																											),
																											padding: const EdgeInsets.only( top: 4, bottom: 4, left: 22, right: 22),
																											margin: const EdgeInsets.only( right: 9),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 7, right: 7),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/6509fe89-74bf-4472-a22e-0d21a1b5fa34",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Events",
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
																											padding: const EdgeInsets.only( top: 4, bottom: 4, left: 22, right: 22),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 7, right: 7),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/74aad2ed-699c-4646-9498-3237e0cfabf7",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"Profile",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
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
																					color: Color(0xFF1C3023),
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