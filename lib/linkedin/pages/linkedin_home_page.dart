import 'package:flutter/material.dart';
import 'package:mobile_showcases/linkedin/style/linkedin_colors.dart';

class LinkedinHomePage extends StatelessWidget {
  const LinkedinHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: linkedinScaffold,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: linkedinDisabled,
        ),
        backgroundColor: Colors.white,
        title: Container(
          color: linkedinSearchBarColor,
          child: TextFormField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
                hintText: 'Bill Gates',
                hintStyle: TextStyle(color: Colors.black),
                icon: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search),
                ),
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(color: Colors.white, child: _buildCoverProfile()),
          _buildMetadataProfile(textTheme),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Featured',
                    style: textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 320,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                        'assets/linkedin/featured1.png'),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My new pandemic book is coming soon',
                                          style: textTheme.bodyText2!.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn',
                                          style: textTheme.caption!.copyWith(
                                              color: linkedinDisabled),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn',
                                          style: textTheme.caption!
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/linkedin/feature2.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My new pandemic book is coming soon',
                                          style: textTheme.bodyText2!.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn',
                                          style: textTheme.caption!.copyWith(
                                              color: linkedinDisabled),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn',
                                          style: textTheme.caption!
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/linkedin/featured3.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My new pandemic book is coming soon',
                                          style: textTheme.bodyText2!.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn',
                                          style: textTheme.caption!.copyWith(
                                              color: linkedinDisabled),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn Bill Gates on LinkedIn',
                                          style: textTheme.caption!
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _buildActivityCard(textTheme),
          const SizedBox(
            height: 16,
          ),
          _buildExperienceCard(textTheme),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Education',
                    style: textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 60,
                            height: 75,
                            decoration: BoxDecoration(
                              color: linkedinDisabled,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/linkedin/education02.png',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          'Hardvard University',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          '1973 - 1975',
                          style: textTheme.caption!
                              .copyWith(color: linkedinDisabled),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 60,
                            height: 75,
                            decoration: BoxDecoration(
                              color: linkedinDisabled,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/linkedin/education01.png',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          'Lakeside School',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: textTheme.bodyText2!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildExperienceCard(TextTheme textTheme) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Experience',
              style: textTheme.subtitle1,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/experience03.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Co-Chair',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bill & Melinda Gates Foundation',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '2000 - Present . 22 yrs 3 mos',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/experience02.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Founder',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breakthrough Energy',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '2000 - Present . 22 yrs 3 mos',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/experience01.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Co-founder',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Microsoft',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '1975 - Present . 47 yrs 3 mos',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(TextTheme textTheme) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Activity',
              style: textTheme.subtitle1,
            ),
            Text(
              '34,838,091 followers',
              style: textTheme.caption!.copyWith(
                  fontWeight: FontWeight.w500, color: linkedinDisabled),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/activity01.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Bill & Melinda Gates Foundation was an early investor in developing',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bill shared this',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '1,551 Reactions . 88 comments',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/activity02.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Bill & Melinda Gates Foundation was an early investor in developing',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bill shared this',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '1,551 Reactions . 88 comments',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 75,
                      decoration: BoxDecoration(
                        color: linkedinDisabled,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/linkedin/activity03.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Bill & Melinda Gates Foundation was an early investor in developing',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bill shared this',
                        style: textTheme.caption!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '1,551 Reactions . 88 comments',
                        style: textTheme.caption!
                            .copyWith(color: linkedinDisabled),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMetadataProfile(TextTheme textTheme) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bill Gates',
              style: textTheme.headline6!.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              'Co-chair, Bill & Melinda Gates Foundation',
              style: textTheme.bodyText1!,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Talks about #books #healthcare #innovation #climatechange, and #sustainability',
              style: textTheme.bodyText2!.copyWith(color: linkedinDisabled),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Co-chair, Bill & Melinda Gates Foundation . Harvard University',
              style: textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              'Seattle, Washington, United States',
              style: textTheme.bodyText2!.copyWith(color: linkedinDisabled),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '34,838,091 followers',
              style: textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.w500, color: linkedinDisabled),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: linkedinPrimaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Following',
                          style:
                              textTheme.button!.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoverProfile() {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 100,
              child: Image.asset('assets/linkedin/coverpng.png'),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 125,
                width: 125,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/linkedin/profile.png'),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 65,
              right: 16,
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/linkedin/logo.png'),
              ))
        ],
      ),
    );
  }
}
