import 'package:flutter/material.dart';
class GestionnaireDashboard extends StatefulWidget {
	const GestionnaireDashboard({super.key});
	@override
		GestionnaireDashboardState createState() => GestionnaireDashboardState();
	}
class GestionnaireDashboardState extends State<GestionnaireDashboard> {
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
																									margin: const EdgeInsets.only( top: 8, bottom: 8, right: 16),
																									width: 32,
																									height: 32,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c2a8a422-617d-4bf5-b257-96d5f7604857",
																										fit: BoxFit.fill,
																									)
																								),
																								Expanded(
																									child: Container(
																										width: double.infinity,
																										child: Text(
																											"Dashboard",
																											style: TextStyle(
																												color: Color(0xFFFFFFFF),
																												fontSize: 18,
																												fontWeight: FontWeight.bold,
																											),
																											textAlign: TextAlign.center,
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( top: 12, bottom: 12, left: 24),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9ca57522-fde1-4c47-a1d4-1b94224731df",
																										fit: BoxFit.fill,
																									)
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												border: Border.all(
																													color: Color(0xFF3D5B49),
																													width: 1,
																												),
																												borderRadius: BorderRadius.circular(12),
																											),
																											padding: const EdgeInsets.symmetric(vertical: 25),
																											margin: const EdgeInsets.only( right: 16),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 9, left: 25, right: 25),
																														child: Text(
																															"Visits",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 16,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 25, right: 25),
																														child: Text(
																															"123",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 24,
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
																												border: Border.all(
																													color: Color(0xFF3D5B49),
																													width: 1,
																												),
																												borderRadius: BorderRadius.circular(12),
																											),
																											padding: const EdgeInsets.symmetric(vertical: 25),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 9, left: 25, right: 25),
																														child: Text(
																															"Ratings",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 16,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 25, right: 25),
																														child: Text(
																															"4.5",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 24,
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
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Analytics",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 24),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 16, left: 16, right: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 9),
																													child: Text(
																														"Monthly Visits",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 16,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( bottom: 9),
																													child: Text(
																														"+15%",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 32,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1, right: 4),
																																	child: Text(
																																		"Last 30 Days",
																																		style: TextStyle(
																																			color: Color(0xFF9BBFAA),
																																			fontSize: 16,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1),
																																	child: Text(
																																		"+15%",
																																		style: TextStyle(
																																			color: Color(0xFF0AD842),
																																			fontSize: 16,
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
																														padding: const EdgeInsets.symmetric(vertical: 16),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 32),
																																	height: 148,
																																	width: double.infinity,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0bde98fe-26dc-48bd-b99a-f6f2c79e7a07",
																																		fit: BoxFit.fill,
																																	)
																																),
																																IntrinsicHeight(
																																	child: Container(
																																		width: double.infinity,
																																		child: Row(
																																			mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"Jan",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"Feb",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"Mar",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"Apr",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"May",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
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
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.symmetric(horizontal: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 9),
																													child: Text(
																														"User Engagement",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 16,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( bottom: 9),
																													child: Text(
																														"+8%",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 32,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1, right: 4),
																																	child: Text(
																																		"Last 30 Days",
																																		style: TextStyle(
																																			color: Color(0xFF9BBFAA),
																																			fontSize: 16,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1),
																																	child: Text(
																																		"+8%",
																																		style: TextStyle(
																																			color: Color(0xFF0AD842),
																																			fontSize: 16,
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
																														padding: const EdgeInsets.only( left: 12, right: 12),
																														width: double.infinity,
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			margin: const EdgeInsets.only( right: 24),
																																			child: Column(
																																				children: [
																																					Container(
																																						decoration: BoxDecoration(
																																							border: Border(
																																								top: BorderSide(
																																									color: Color(0xFF757575),
																																									width: 2,
																																								),
																																							),
																																							color: Color(0xFF283F33),
																																						),
																																						margin: const EdgeInsets.only( bottom: 24),
																																						width: 39,
																																						height: 137,
																																						child: SizedBox(),
																																					),
																																					Container(
																																						margin: const EdgeInsets.only( bottom: 1),
																																						child: Text(
																																							"Active",
																																							style: TextStyle(
																																								color: Color(0xFF9BBFAA),
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
																																IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			margin: const EdgeInsets.only( right: 24),
																																			child: Column(
																																				children: [
																																					Container(
																																						decoration: BoxDecoration(
																																							border: Border(
																																								top: BorderSide(
																																									color: Color(0xFF757575),
																																									width: 2,
																																								),
																																							),
																																							color: Color(0xFF283F33),
																																						),
																																						margin: const EdgeInsets.only( bottom: 24),
																																						width: 29,
																																						height: 137,
																																						child: SizedBox(),
																																					),
																																					Container(
																																						margin: const EdgeInsets.only( bottom: 1),
																																						child: Text(
																																							"New",
																																							style: TextStyle(
																																								color: Color(0xFF9BBFAA),
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
																																IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Column(
																																			children: [
																																				Container(
																																					decoration: BoxDecoration(
																																						border: Border(
																																							top: BorderSide(
																																								color: Color(0xFF757575),
																																								width: 2,
																																							),
																																						),
																																						color: Color(0xFF283F33),
																																					),
																																					margin: const EdgeInsets.only( bottom: 24),
																																					width: 61,
																																					height: 137,
																																					child: SizedBox(),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 1),
																																					child: Text(
																																						"Returning",
																																						style: TextStyle(
																																							color: Color(0xFF9BBFAA),
																																							fontSize: 13,
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
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
																Container(
																	height: 96,
																	width: double.infinity,
																	child: Image.network(
																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/78572904-6a03-4478-b9d3-363f45d1cd4a",
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