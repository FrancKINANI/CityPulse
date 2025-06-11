import 'package:flutter/material.dart';
class Explore extends StatefulWidget {
	const Explore({super.key});
	@override
		ExploreState createState() => ExploreState();
	}
class ExploreState extends State<Explore> {
	String textField1 = '';
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
																	child: Container(
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.only(
																													topLeft: Radius.circular(12),
																													bottomLeft: Radius.circular(12),
																												),
																												color: Color(0xFF264433),
																											),
																											padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.only(
																																topLeft: Radius.circular(12),
																																bottomLeft: Radius.circular(12),
																															),
																														),
																														width: 24,
																														height: 24,
																														child: ClipRRect(
																															borderRadius: BorderRadius.only(
																																topLeft: Radius.circular(12),
																																bottomLeft: Radius.circular(12),
																															),
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9e9f6fef-45a5-43b2-ad75-66f858106d1d",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																												]
																											),
																										),
																									),
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											alignment: Alignment.center,
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.only(
																													topRight: Radius.circular(12),
																													bottomRight: Radius.circular(12),
																												),
																												color: Color(0xFF264433),
																											),
																											padding: const EdgeInsets.only( top: 12, bottom: 12, left: 8, right: 16),
																											width: double.infinity,
																											child: TextField(
																												style: TextStyle(
																													color: Color(0xFF96C4A8),
																													fontSize: 16,
																												),
																												onChanged: (value) { 
																													setState(() { textField1 = value; });
																												},
																												decoration: InputDecoration(
																													hintText: "Search",
																													isDense: true,
																													contentPadding: EdgeInsets.symmetric(vertical: 0),
																													border: InputBorder.none,
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
																													color: Color(0xFF264433),
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
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(16),
																													color: Color(0xFF264433),
																												),
																												padding: const EdgeInsets.only( top: 5, bottom: 5, left: 16, right: 16),
																												margin: const EdgeInsets.only( right: 12),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Featured",
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
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( left: 16),
																													width: 17,
																													child: Text(
																														"New",
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
																														color: Color(0xFF264433),
																													),
																													width: 61,
																													height: 32,
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
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																									),
																									height: 201,
																									width: double.infinity,
																									child: ClipRRect(
																										borderRadius: BorderRadius.circular(12),
																										child: Image.network(
																											"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f91a8563-2430-44a4-aa5e-589fa5a55502",
																											fit: BoxFit.fill,
																										)
																									)
																								),
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.symmetric(vertical: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 5),
																													child: Text(
																														"Discover the best of the city",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 18,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 5),
																																	width: double.infinity,
																																	child: Text(
																																		"Explore top attractions, hidden gems, and local favorites in our curated city guide.",
																																		style: TextStyle(
																																			color: Color(0xFF96C4A8),
																																			fontSize: 16,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 1),
																																	child: Text(
																																		"10 min read",
																																		style: TextStyle(
																																			color: Color(0xFF96C4A8),
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
																						"Featured Places",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
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
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 12, left: 16, right: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															margin: const EdgeInsets.only( right: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/09657e6a-992a-40a2-88c6-9d85884bec28",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"The Grand Plaza",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/15d523e2-d4d9-4bd3-a024-0f0b1d1e9f9c",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Riverside Park",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 12, left: 16, right: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															margin: const EdgeInsets.only( right: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/94cb2c14-07a5-46a2-81c8-34f4d5320dd7",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Historic District",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c28096cb-35a9-44b2-9537-d6a906ee25f5",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Artisan Alley",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.symmetric(horizontal: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															margin: const EdgeInsets.only( right: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f867965b-ec31-4a14-94cc-70d6d50c9a72",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Central Market",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																												Expanded(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( bottom: 12),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 12),
																																		height: 173,
																																		width: double.infinity,
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1d442b91-b018-433d-be68-481e711bfd69",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Innovation Hub",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(27),
																											),
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/688d49eb-f780-4f71-93ed-0c153fd6512c",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 36, right: 36),
																														child: Text(
																															"Explore",
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f96fe216-3842-4b27-a354-56d3f5737349",
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
																											padding: const EdgeInsets.only( left: 38, right: 38),
																											width: double.infinity,
																											child: Column(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( top: 4, bottom: 8, left: 7, right: 7),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/93c60298-863b-4345-b9f6-07650bb0fdec",
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