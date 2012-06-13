Résumé Tracker
==============

The Résumé Tracker helps to coordinate résumé intake and review among
several hiring managers at a company. New résumés can be added and
assigned to a hiring manager, and status can be tracked. Quick filtering
and searching ensures that candidates who have been interviewed in the
past are not re-contacted if their résumé is received again at a later
date.

Code overview
-------------

The application uses a very simple model structure, with minimal
interaction between models.  Models are:

* Candidate - tracks each candidate / résumé
* Source - sometimes it is helpful to track where the résumé came from (HR, referral, headhunter, etc.)
* User - an end-user of the application... usually a hiring manager


