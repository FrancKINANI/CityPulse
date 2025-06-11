import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';//Install: https://pub.dev/packages/mobkit_dashed_border
class AddPlace extends StatefulWidget {
	const AddPlace({super.key});
	@override
		AddPlaceState createState() => AddPlaceState();
	}
class AddPlaceState extends State<AddPlace> {
	String textField1 = '';
	String textField2 = '';
	String textField3 = '';
	String textField4 = '';
	String textField5 = '';
	String textField6 = '';
	String textField7 = '';
	String textField8 = '';
	String textField9 = '';
	String textField10 = '';
	String textField11 = '';
	String textField12 = '';
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9f7c3698-6f6a-4d34-9f7b-1fd0e974b355",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Manage",
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
																										color: Color(0xFF264433),
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
																										"Description",
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
																										color: Color(0xFF264433),
																									),
																									height: 144,
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
																										"Address",
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
																										color: Color(0xFF264433),
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
																										color: Color(0xFF264433),
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
																										color: Color(0xFF264433),
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
																										"Website",
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
																										color: Color(0xFF264433),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Business Hours",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
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
																										"Monday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField1 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField2 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Tuesday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField3 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField4 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Wednesday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField5 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField6 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Thursday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField7 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField8 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Friday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField9 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField10 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Saturday",
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
																										color: Color(0xFF264433),
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
																						padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"9  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField11 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "10  AM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topLeft: Radius.circular(9999),
																																	bottomLeft: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"11  AM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"5  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																																color: Color(0xFF264433),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: TextField(
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																																onChanged: (value) { 
																																	setState(() { textField12 = value; });
																																},
																																decoration: InputDecoration(
																																	hintText: "6  PM",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.only(
																																	topRight: Radius.circular(9999),
																																	bottomRight: Radius.circular(9999),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 11),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.end,
																																children: [
																																	Text(
																																		"7  PM",
																																		style: TextStyle(
																																			color: Color(0xFF498760),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
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
																										"Sunday",
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
																										color: Color(0xFF264433),
																									),
																									height: 32,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Media",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							border: DashedBorder.fromBorderSide(
																								dashLength: 15, 
																								side: BorderSide(
																									color: Color(0xFF356347),
																									width: 2,
																								),
																							),
																							borderRadius: BorderRadius.circular(12),
																						),
																						padding: const EdgeInsets.only( top: 58, bottom: 58, left: 26, right: 26),
																						margin: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Column(
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 24),
																										width: double.infinity,
																										child: Column(
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 9),
																													child: Text(
																														"Upload Image",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 18,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( bottom: 1),
																													width: double.infinity,
																													child: Text(
																														"Add a visual representation of your place or event.",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
																															fontSize: 14,
																														),
																														textAlign: TextAlign.center,
																													),
																												),
																											]
																										),
																									),
																								),
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(20),
																													color: Color(0xFF264433),
																												),
																												padding: const EdgeInsets.only( top: 9, bottom: 9, left: 18, right: 18),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Upload",
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
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Preview",
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
																												color: Color(0xFF264433),
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
																								color: Color(0xFF38E07A),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 12),
																							margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 1),
																										child: Text(
																											"Save",
																											style: TextStyle(
																												color: Color(0xFF112116),
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
																					color: Color(0xFF112116),
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