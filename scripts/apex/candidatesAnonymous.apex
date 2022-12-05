Candidates.CompanyName = 'SoftInnovas';
Candidates.printCandidateInfo();
system.debug('START count of candidates = ' + Candidates.countCandidates);

Candidates c1 = new Candidates();
Candidates.countCandidates++;
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.Name = 'Elaina';
c2.Gender = 'Female';
c2.printCandidate();
//for Mac: opt + shift + drag mouse

Candidates.CompanyName = 'Vandelay Industries';
//the company name is belong to a class

Candidates c3 = new Candidates();
Candidates.countCandidates++;
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

system.debug('---------');
c1.printCandidate();
system.debug('---------');
c2.printCandidate();

Candidates.printCandidateInfo();


system.debug('END count of candidates = ' + Candidates.countCandidates);