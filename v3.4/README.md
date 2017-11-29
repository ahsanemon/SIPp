* To use the simple SIP call scenario

      ./sipp  -sf /scripts/uac3.xml 10.42.225.1:5060 -r 7000 -m 2 -l 1

* To register

      ./sipp -sf /scripts/register.xml 10.42.225.1 -inf /scripts/uas.csv
      
* To start the uas side

      ./sipp -sf /scripts/uas.xml 10.42.225.1 -inf /scripts/uas.csv
      
* To use the call-flow.xml scenario

      ./sipp 10.42.225.1 -sf /scripts/call-flow.xml -inf /scripts/user-account.csv -r 1 -rp 5000 -m 2 -l 1 

This will make total two call with one at a time from alice to bob



### Command Syntex 
* -l : Set the maximum number of simultaneous calls. Once this limit is reached, traffic is decreased until the number of open calls goes down. Default: (3 * call_duration (s) * rate).
* -m : Stop the test and exit when 'calls' calls are processed
* -r : Set the call rate (in calls per seconds).  This value can bechanged during test by pressing '+','_','*' or '/'. Default is 10.
* -rp: Specify the rate period for the call rate.  Default is 1 second and default unit is milliseconds. This allows you to have n calls every m milliseconds (by using -r n -rp m). 
        
        Example: -r 7 -rp 2000 ==> 7 calls every 2 seconds. 
                 -r 10 -rp 5s => 10 calls every 5 seconds.
