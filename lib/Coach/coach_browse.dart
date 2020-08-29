import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class BrowseJobs extends StatelessWidget {
  static String route = '/browsejob';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Browse  Jobs')),
      body: Container(
        child: ListView(
          children: [
            JobListing(title: "Job Listing # 1", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 2", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 3", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 4", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 5", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 6", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 7", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 8", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 9", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 10", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 11", subtitle: "I am job description", trailing: "I am trailing for this job",),
            JobListing(title: "Job Listing # 12", subtitle: "I am job description", trailing: "I am trailing for this job",),
          ],
        )
      )
    );
  }
}

