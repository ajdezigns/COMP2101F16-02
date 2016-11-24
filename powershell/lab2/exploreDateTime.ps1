# exploreDateTime.ps1
# demonstrate exploring objects

" This script will display some information about the datetime object from get-date"
"  First, we will use (get-date).gettype().fullname to show the object type"
(get-date).gettype().fullname

"
 Next, we will use get-date|get-member -MemberType Properties to display the properties"
get-date | get-member -MemberType Properties

"
 Now, we use the membertype methods parameter to show the methods of a datetime object"
get-date | Get-Member -MemberType Methods 

"
 And we finish with a listing of the current values of all properties of the datetime object"
get-date|Format-List *
