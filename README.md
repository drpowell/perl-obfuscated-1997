
## Submission to the Perl Obfuscated Programming competition in Jul 1997.
Awarded 3rd in the category for Most Creative.  

http://www.drdobbs.com/the-1st-annual-obfuscated-perl-contest-v/199101357
https://www.foo.be/docs/tpj/issues/vol2_3/tpj0203-0012.html

Original submission was [myOB.pl](myOB.pl), but this doesn't work with modern perl for a
two reasons.
1. There appears to have been a change in the lexer to require a space before the first postfix `while`.  
2. Use of the variable `$#` has been removed.  This was just used to confusingly print `$_` which is now done explicitly.

So, [myOB-updated.pl](myOB-updated.pl) has minimal changes to fix it. 

