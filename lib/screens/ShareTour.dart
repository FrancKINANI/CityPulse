import 'package:flutter/material.dart';
class ShareTour extends StatefulWidget {
	const ShareTour({super.key});
	@override
		ShareTourState createState() => ShareTourState();
	}
class ShareTourState extends State<ShareTour> {
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8d212d01-18dd-4554-9808-c9708c2b9e89",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Share Tour",
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
																						"Share your tour",
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
																						"Share this tour with your friends and family by sending them the link or letting them scan the QR code.",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 16,
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Expanded(
																									child: Container(
																										decoration: BoxDecoration(
																											border: Border(
																												top: BorderSide(
																													color: Color(0xFF356347),
																													width: 1,
																												),
																												bottom: BorderSide(
																													color: Color(0xFF356347),
																													width: 1,
																												),
																												left: BorderSide(
																													color: Color(0xFF356347),
																													width: 1,
																												),
																											),
																											borderRadius: BorderRadius.only(
																												topLeft: Radius.circular(12),
																												bottomLeft: Radius.circular(12),
																											),
																											color: Color(0xFF1C3023),
																										),
																										height: 56,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																								),
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												border: Border(
																													top: BorderSide(
																														color: Color(0xFF356347),
																														width: 1,
																													),
																													right: BorderSide(
																														color: Color(0xFF356347),
																														width: 1,
																													),
																													bottom: BorderSide(
																														color: Color(0xFF356347),
																														width: 1,
																													),
																												),
																												borderRadius: BorderRadius.only(
																													topRight: Radius.circular(12),
																													bottomRight: Radius.circular(12),
																												),
																												color: Color(0xFF1C3023),
																											),
																											padding: const EdgeInsets.only( top: 16, bottom: 16, right: 16),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.only(
																																topRight: Radius.circular(12),
																																bottomRight: Radius.circular(12),
																															),
																														),
																														width: 24,
																														height: 24,
																														child: ClipRRect(
																															borderRadius: BorderRadius.only(
																																topRight: Radius.circular(12),
																																bottomRight: Radius.circular(12),
																															),
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/59c2531e-f0f7-436b-a3d0-52beb30d7001",
																																fit: BoxFit.fill,
																															)
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
																				IntrinsicHeight(
																					child: Container(
																						color: Color(0xFF112116),
																						padding: const EdgeInsets.symmetric(vertical: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(12),
																									),
																									margin: const EdgeInsets.symmetric(horizontal: 16),
																									height: 537,
																									width: double.infinity,
																									child: ClipRRect(
																										borderRadius: BorderRadius.circular(12),
																										child: Image.network(
																											"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/911c41e3-6577-4aa8-89ba-ff34b616fb86",
																											fit: BoxFit.fill,
																										)
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
																											"Done",
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/35c761c9-d4fd-4157-976b-de871f847263",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 20, right: 20),
																														child: Text(
																															"Explore",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(27),
																											),
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b3b23ebf-879b-4ab7-9ba9-d0e9bf996153",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 17, right: 17),
																														child: Text(
																															"My Tours",
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/637949da-8f5f-4dee-98ab-101401ce477b",
																															fit: BoxFit.fill,
																														)
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 1, left: 22, right: 22),
																														child: Text(
																															"Create",
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
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/09fe8f8c-a25f-4eb3-a420-c1b75e6b5115",
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