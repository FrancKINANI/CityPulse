import 'package:flutter/material.dart';
class ScanQRCode extends StatefulWidget {
	const ScanQRCode({super.key});
	@override
		ScanQRCodeState createState() => ScanQRCodeState();
	}
class ScanQRCodeState extends State<ScanQRCode> {
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
																Container(
																	margin: const EdgeInsets.only( bottom: 543),
																	height: 168,
																	width: double.infinity,
																	child: Image.network(
																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a84a7e7a-26f0-4304-b8aa-9da655cf5a29",
																		fit: BoxFit.fill,
																	)
																),
																Container(
																	height: 133,
																	width: double.infinity,
																	child: Image.network(
																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/41ef1575-94e5-4045-a92f-a11d41ac2cbf",
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