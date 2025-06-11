import 'package:flutter/material.dart';
class SearchOnMap extends StatefulWidget {
	const SearchOnMap({super.key});
	@override
		SearchOnMapState createState() => SearchOnMapState();
	}
class SearchOnMapState extends State<SearchOnMap> {
	String textField1 = '';
	String textField2 = '';
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
																		color: Color(0xFF112116),
																		padding: const EdgeInsets.only( top: 16, bottom: 16, left: 64, right: 16),
																		margin: const EdgeInsets.only( bottom: 320),
																		width: double.infinity,
																		child: Row(
																			children: [
																				Expanded(
																					child: Container(
																						width: double.infinity,
																						child: Text(
																							"CityPulse",
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
																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c90cea25-e24e-4813-8742-97bce2c560af",
																						fit: BoxFit.fill,
																					)
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
																				Container(
																					height: 320,
																					width: double.infinity,
																					child: Image.network(
																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/510453c2-46bd-479c-b892-aea8ef829bda",
																						fit: BoxFit.fill,
																					)
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
																															"Places",
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
																															"Events",
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
																											children: [
																												Container(
																													width: 27,
																													child: Text(
																														"Tours",
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
																													width: 67,
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
																						padding: const EdgeInsets.all(12),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFF264433),
																											),
																											padding: const EdgeInsets.only( top: 5, bottom: 5, left: 16, right: 8),
																											margin: const EdgeInsets.only( right: 12),
																											child: Row(
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															padding: const EdgeInsets.symmetric(vertical: 1),
																															width: 66,
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
																																	hintText: "Category",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2e7b7522-d113-4674-af52-ff9f11eda39e",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFF264433),
																											),
																											padding: const EdgeInsets.only( top: 5, bottom: 5, left: 16, right: 8),
																											child: Row(
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															alignment: Alignment.center,
																															padding: const EdgeInsets.symmetric(vertical: 1),
																															width: 63,
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
																																	hintText: "Distance",
																																	isDense: true,
																																	contentPadding: EdgeInsets.symmetric(vertical: 0),
																																	border: InputBorder.none,
																																),
																															),
																														),
																													),
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/154b0f58-6f90-4120-8767-0b99c80b7f44",
																															fit: BoxFit.fill,
																														)
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