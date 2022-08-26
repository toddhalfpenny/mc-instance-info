// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

String instanceName = [select InstanceName from Organization limit 1].InstanceName;
System.debug('Instance ' + instanceName);

InstanceStatusCallout.makeGetCallout(instanceName);