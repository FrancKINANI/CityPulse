import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
	const EditProfile({super.key});
	@override
		EditProfileState createState() => EditProfileState();
	}
class EditProfileState extends State<EditProfile> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				leading: IconButton(
					icon: Icon(
						Icons.arrow_back,
						color: Theme.of(context).appBarTheme.iconTheme?.color,
					),
					onPressed: () => Navigator.pop(context),
				),
				title: Text(
					"Edit Profile",
					style: Theme.of(context).appBarTheme.titleTextStyle,
				),
				backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
				elevation: 0,
			),
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Theme.of(context).scaffoldBackgroundColor,
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: Container(
									color: Theme.of(context).scaffoldBackgroundColor,
									width: double.infinity,
									height: double.infinity,
									child: SingleChildScrollView(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														color: Theme.of(context).appBarTheme.backgroundColor,
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
																						color: Theme.of(context).appBarTheme.backgroundColor,
																						padding: const EdgeInsets.all(16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( top: 12, bottom: 12, right: 24),
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/78fc071a-cce7-4420-b19e-44253f683fd9",
																										fit: BoxFit.fill,
																									)
																								),
																								Text(
																									"Edit Profile",
																									style: Theme.of(context).appBarTheme.titleTextStyle,
																								),
																							]
																						)
																					)
																				),
																				IntrinsicWidth(
																					child: IntrinsicHeight(
																						child: Column(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 16),
																									width: 128,
																									height: 128,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b55817f0-b7a2-4396-b3a7-0f0a0d3156ee",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"Sophia Carter",
																										style: Theme.of(context).textTheme.headlineSmall,
																									),
																								),
																								Container(
																									margin: const EdgeInsets.only( bottom: 1),
																									child: Text(
																										"@sophia_carter",
																										style: Theme.of(context).textTheme.bodyMedium,
																									),
																								)
																							]
																						)
																					)
																				)
																			]
																		)
																	)
																)
															]
														)
													)
												),
												IntrinsicHeight(
													child: Container(
														padding: const EdgeInsets.all(16),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Container(
																	margin: const EdgeInsets.only( bottom: 8),
																	child: Text(
																		"Name",
																		style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(12),
																		color: Theme.of(context).inputDecorationTheme.fillColor,
																	),
																	height: 32,
																	width: double.infinity,
																	child: SizedBox(),
																)
															]
														)
													)
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
																		style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(12),
																		color: Theme.of(context).inputDecorationTheme.fillColor,
																	),
																	height: 32,
																	width: double.infinity,
																	child: SizedBox(),
																)
															]
														)
													)
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
																		style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(12),
																		color: Theme.of(context).inputDecorationTheme.fillColor,
																	),
																	height: 32,
																	width: double.infinity,
																	child: SizedBox(),
																)
															]
														)
													)
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
																		"Location",
																		style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(12),
																		color: Theme.of(context).inputDecorationTheme.fillColor,
																	),
																	height: 32,
																	width: double.infinity,
																	child: SizedBox(),
																)
															]
														)
													)
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
																		"Bio",
																		style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(12),
																		color: Theme.of(context).inputDecorationTheme.fillColor,
																	),
																	height: 144,
																	width: double.infinity,
																	child: SizedBox(),
																)
															]
														)
													)
												),
												Container(
													margin: const EdgeInsets.only( top: 12, bottom: 12, left: 16, right: 16),
													padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
													decoration: BoxDecoration(
														borderRadius: BorderRadius.circular(20),
														color: Theme.of(context).colorScheme.secondary,
													),
													width: double.infinity,
													child: Text(
														"Save changes",
														style: TextStyle(
															color: Theme.of(context).colorScheme.onSecondary,
															fontSize: 14,
															fontWeight: FontWeight.bold,
														),
													),
												),
												Container(
													color: Theme.of(context).scaffoldBackgroundColor,
													height: 20,
												),
											]
										)
									)
								)
							)
						]
					)
				)
			),
		);
	}
}