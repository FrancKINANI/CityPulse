import 'package:flutter/material.dart';
class ModerationPanel extends StatefulWidget {
	const ModerationPanel({super.key});
	@override
		ModerationPanelState createState() => ModerationPanelState();
	}
class ModerationPanelState extends State<ModerationPanel> {
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
																	child: SizedBox(
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0c82f75c-280e-4b3c-8525-86a5dd30b8d2",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Moderation Panel",
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
																						"Items",
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 16),
																														width: 56,
																														height: 56,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f37c19e8-fd5d-43f7-b6ab-a68896358a71",
																															fit: BoxFit.fill,
																														)
																													),
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 30),
																																		child: Text(
																																			"Central Park",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
																																				fontSize: 16,
																																				fontWeight: FontWeight.bold,
																																			),
																																		),
																																	),
																																	Text(
																																		"Submitted by: Alex",
																																		style: TextStyle(
																																			color: Color(0xFF9BBFAA),
																																			fontSize: 14,
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
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e14212c1-be5d-4812-b6a6-edb2dd7f5a10",
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
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 16),
																														width: 56,
																														height: 56,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/191fc58a-ad54-4d18-8e7d-89a5e640c010",
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
																																			"Times Square",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
																																				fontSize: 16,
																																				fontWeight: FontWeight.bold,
																																			),
																																		),
																																		SizedBox(
																																			width: double.infinity,
																																			child: Text(
																																				"Submitted by: Jordan",
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
																													),
																												]
																											),
																										),
																									),
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/af64eaaa-d7d4-4185-bd52-129ce5cde83a",
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
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 16),
																														width: 56,
																														height: 56,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c6a995a7-7c6b-4e07-8202-8cbcc3ce9340",
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
																																			"Brooklyn Bridge",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
																																				fontSize: 16,
																																				fontWeight: FontWeight.bold,
																																			),
																																		),
																																		Text(
																																			"Submitted by: Taylor",
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
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/471fca04-add1-4baf-9796-85cabff76dcc",
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
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 16),
																														width: 56,
																														height: 56,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2d9b951d-12b7-4398-8daa-165655b25050",
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
																																			"Statue of Liberty",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
																																				fontSize: 16,
																																				fontWeight: FontWeight.bold,
																																			),
																																		),
																																		Text(
																																			"Submitted by: Casey",
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
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c97fcb69-c8cb-4d72-9bc4-3e1ac0998b8d",
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
																						padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( right: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 16),
																														width: 56,
																														height: 56,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b20d8dd2-caf3-4387-82e0-4fd5f3b52089",
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
																																				"Metropolitan Museum",
																																				style: TextStyle(
																																					color: Color(0xFFFFFFFF),
																																					fontSize: 16,
																																					fontWeight: FontWeight.bold,
																																				),
																																			),
																																		),
																																		Text(
																																			"Submitted by: Jamie",
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
																								),
																								Container(
																									margin: const EdgeInsets.all(2),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/49cd070d-56a9-46ba-866e-3dda94359294",
																										fit: BoxFit.fill,
																									)
																								),
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Item Details",
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
																						padding: const EdgeInsets.symmetric(vertical: 12),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								SizedBox(
																									height: 260,
																									width: double.infinity,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/016bc0a1-c28f-4c24-9afd-2253e129b67a",
																										fit: BoxFit.fill,
																									)
																								),
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 20, bottom: 20, left: 16),
																					child: Text(
																						"Central Park",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 22,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
																					width: double.infinity,
																					child: Text(
																						"A sprawling urban park in the heart of Manhattan, offering a variety of activities and attractions.",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 16,
																						),
																					),
																				),
																				Container(
																					decoration: BoxDecoration(
																						border: Border.all(
																							color: Color(0xFF3D5B49),
																							width: 1,
																						),
																						borderRadius: BorderRadius.circular(12),
																						color: Color(0xFF1E2D26),
																					),
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
																					height: 144,
																					width: double.infinity,
																					child: SizedBox(),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 12),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 12, left: 12),
																											child: Row(
																												crossAxisAlignment: CrossAxisAlignment.start,
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
																																				"High Priority",
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
																																				"Medium Priority",
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
																												margin: const EdgeInsets.only( left: 12),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Low Priority",
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
																					child: SizedBox(
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										color: Color(0xFF141E16),
																										padding: const EdgeInsets.only( top: 10, bottom: 10, left: 151, right: 151),
																										margin: const EdgeInsets.only( bottom: 8, left: 16, right: 16),
																										width: double.infinity,
																										child: Column(
																											children: [
																												InkWell(
																													onTap: () { print('Pressed'); },
																													child: IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(20),
																																	color: Color(0xFF283F33),
																																),
																																padding: const EdgeInsets.all(10),
																																margin: const EdgeInsets.only( bottom: 8),
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		SizedBox(
																																			width: 20,
																																			height: 20,
																																			child: Image.network(
																																				"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/81b0e9cc-b98d-4f7e-a194-4802f0cf2989",
																																				fit: BoxFit.fill,
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
																														"Approve",
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
																										color: Color(0xFF141E16),
																										padding: const EdgeInsets.only( top: 10, bottom: 10, left: 158, right: 158),
																										margin: const EdgeInsets.symmetric(horizontal: 16),
																										width: double.infinity,
																										child: Column(
																											children: [
																												InkWell(
																													onTap: () { print('Pressed'); },
																													child: IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(20),
																																	color: Color(0xFF283F33),
																																),
																																padding: const EdgeInsets.all(10),
																																margin: const EdgeInsets.only( bottom: 8),
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		SizedBox(
																																			width: 20,
																																			height: 20,
																																			child: Image.network(
																																				"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e597cb25-56ed-4304-828a-a1f449fbd550",
																																				fit: BoxFit.fill,
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
																														"Reject",
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
																	color: Color(0xFF141E16),
																	height: 20,
																	width: double.infinity,
																	child: SizedBox(),
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