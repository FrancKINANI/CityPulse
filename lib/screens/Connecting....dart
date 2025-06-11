import 'package:flutter/material.dart';
class Connecting... extends StatefulWidget {
	const Connecting...({super.key});
	@override
		Connecting...State createState() => Connecting...State();
	}
class Connecting...State extends State<Connecting...> {
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
																		margin: const EdgeInsets.only( bottom: 680),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
																					width: double.infinity,
																					child: Text(
																						"Connecting to CityPulse",
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
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(4),
																							color: Color(0xFF356347),
																						),
																						margin: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(4),
																										color: Color(0xFF38E07A),
																									),
																									width: 179,
																									height: 8,
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
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
																					width: double.infinity,
																					child: Text(
																						"Copyright 2024 CityPulse",
																						style: TextStyle(
																							color: Color(0xFF96C4A8),
																							fontSize: 14,
																						),
																						textAlign: TextAlign.center,
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