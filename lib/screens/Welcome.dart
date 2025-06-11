import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
	const Welcome({super.key});
	@override
		WelcomeState createState() => WelcomeState();
	}
class WelcomeState extends State<Welcome> {
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
																		margin: const EdgeInsets.only( bottom: 368),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( top: 24, bottom: 12, left: 16, right: 16),
																					width: double.infinity,
																					child: Text(
																						"CityPulse",
																						style: TextStyle(
																							color: Color(0xFFFFFFFF),
																							fontSize: 32,
																							fontWeight: FontWeight.bold,
																						),
																						textAlign: TextAlign.center,
																					),
																				),
																				Container(
																					margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
																					width: double.infinity,
																					child: Text(
																						"Explore the city\'s heartbeat",
																						style: TextStyle(
																							color: Color(0xFF96C4A8),
																							fontSize: 14,
																						),
																						textAlign: TextAlign.center,
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
																									height: 239,
																									width: double.infinity,
																									child: ClipRRect(
																										borderRadius: BorderRadius.circular(12),
																										child: Image.network(
																											"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2bd3af36-efc8-4c1f-843e-9b4953b93e77",
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
																									Text(
																										"Get Started",
																										style: TextStyle(
																											color: Color(0xFF112116),
																											fontSize: 16,
																											fontWeight: FontWeight.bold,
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