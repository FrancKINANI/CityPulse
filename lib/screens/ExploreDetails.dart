import 'package:flutter/material.dart';
class ExploreDetails extends StatefulWidget {
	const ExploreDetails({super.key});
	@override
		ExploreDetailsState createState() => ExploreDetailsState();
	}
class ExploreDetailsState extends State<ExploreDetails> {
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
																				Container(
																					height: 320,
																					width: double.infinity,
																					child: Image.network(
																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/587821dd-f246-4658-b11b-35514e21afe4",
																						fit: BoxFit.fill,
																					)
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( bottom: 20),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.end,
																							children: [
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(28),
																													color: Color(0xFF38E07A),
																												),
																												padding: const EdgeInsets.all(16),
																												margin: const EdgeInsets.only( right: 20),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															width: 24,
																															height: 24,
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/896b45b1-8bd9-4a37-9162-d03c6cfd3b14",
																																fit: BoxFit.fill,
																															)
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
																				Container(
																					margin: const EdgeInsets.only( top: 20, bottom: 20, left: 16),
																					child: Text(
																						"The Modernist",
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
																						"A contemporary architectural marvel, The Modernist stands as a beacon of innovation in the city\'s skyline. Its sleek lines and glass facade reflect the urban landscape, offering a glimpse into the future of design.",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 16,
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"About",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 18,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
																					width: double.infinity,
																					child: Text(
																						"The Modernist is not just a building; it\'s a statement. It houses a variety of spaces, from residential units to commercial offices, all designed with a minimalist aesthetic. The building\'s commitment to sustainability is evident in its energy-efficient systems and green spaces.",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 16,
																						),
																					),
																				),
																				Container(
																					margin: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																					child: Text(
																						"Hours",
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
																										margin: const EdgeInsets.only( bottom: 24, left: 16, right: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															margin: const EdgeInsets.only( right: 24),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1, right: 23),
																																		child: Text(
																																			"Monday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"9 AM - 6 PM",
																																			style: TextStyle(
																																				color: Color(0xFFFFFFFF),
																																				fontSize: 14,
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
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Tuesday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Text(
																																		"9 AM - 6 PM",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
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
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 25, left: 16, right: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															margin: const EdgeInsets.only( right: 24),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1, right: 22),
																																		child: Text(
																																			"Wednesday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Text(
																																		"9 AM - 6 PM",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
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
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Thursday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Text(
																																		"9 AM - 6 PM",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
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
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 25, left: 16, right: 16),
																										width: double.infinity,
																										child: Row(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															margin: const EdgeInsets.only( right: 24),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 35),
																																		child: Text(
																																			"Friday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Text(
																																		"9 AM - 6 PM",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
																																			fontSize: 14,
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
																																border: Border(
																																	top: BorderSide(
																																		color: Color(0xFFE5E8EA),
																																		width: 1,
																																	),
																																),
																															),
																															padding: const EdgeInsets.symmetric(vertical: 21),
																															width: double.infinity,
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( bottom: 1),
																																		child: Text(
																																			"Saturday",
																																			style: TextStyle(
																																				color: Color(0xFF96C4A8),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																	Text(
																																		"10 AM - 4 PM",
																																		style: TextStyle(
																																			color: Color(0xFFFFFFFF),
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
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.symmetric(vertical: 21),
																										margin: const EdgeInsets.symmetric(horizontal: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 1, right: 26),
																													child: Text(
																														"Sunday",
																														style: TextStyle(
																															color: Color(0xFF96C4A8),
																															fontSize: 14,
																														),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 30),
																													child: Text(
																														"Closed",
																														style: TextStyle(
																															color: Color(0xFFFFFFFF),
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
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 29, right: 29),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c254c725-9bc3-4063-b7fc-f056b00ba849",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 20, right: 20),
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
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											margin: const EdgeInsets.only( right: 9),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 30, right: 30),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d46112c0-0d03-4197-9407-e520d073f50e",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 26, right: 26),
																														child: Text(
																															"Tours",
																															style: TextStyle(
																																color: Color(0xFF96C4A8),
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
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											margin: const EdgeInsets.only( right: 8),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 29, right: 29),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d5f13b2f-c0c0-4dfb-b811-c91bd5f0a570",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 24, right: 24),
																														child: Text(
																															"Saved",
																															style: TextStyle(
																																color: Color(0xFF96C4A8),
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
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, left: 30, right: 30),
																														height: 24,
																														width: double.infinity,
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/43ed9c05-b2ed-4553-b1fa-bcf61fbb0b08",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 23, right: 23),
																														child: Text(
																															"Profile",
																															style: TextStyle(
																																color: Color(0xFF96C4A8),
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