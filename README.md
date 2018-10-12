# picklist-force
Salesforce Force.com simple APEX class to get all picklist and dependent picklist values for programming in REST API or Lightning or VisualForce components.
Example VisualFroce page [META_SamplePicklist.page] and APEX Controller [META_PicklistSampleController] included in this package to demontsrate use of this utility class.

### Installation
Install the package included in src directory using ANT deployment tool or any other method to deploy.

### Dependent Picklists
Slaesforce does not provide any standard objects with dependent picklists, this package included Test custom object to demonstrate this use case.

### Word on Picklists
Note that Salesforce Picklists normally used as single text lable that acts as text label and value. In most cases when we deal with drop down selectors programatically we need label:value pairs, display name and actual value to be selected. Salesforce will typically set both to the same string.

One way to get different labels from values is to use Translation workbench on single language and set Translations to display labels that you want to see in UI and actual picklist string will be value you get.

### Demo Page
A working demo page is available as VisualForce page at this [URL](https://developer-week-developer-edition.na55.force.com/apex/META_SamplePicklist)
