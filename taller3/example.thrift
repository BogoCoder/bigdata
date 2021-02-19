struct Data{
1: required Pedigree pedigree;
2: required DataUnit dataunit;
}

struct Pedigree{
1: required i32 trueasofsecs;
}

union DataUnit{
1: PersonProperty personproperty;
2: PageProperty pageproperty;
3: EquivEdge equiv;
4: PageViewEdge pageview;
}

struct PersonProperty{
1: required PersonID id;
2: required PersonPropertyValue property;
}

union PersonPropertyValue{
1: string fullname;
2: GenderType gender;
3: Location location;
}

struct Location{
1: optional string city;
2: optional string state;
3: optional string country;
}

enum GenderType{
MALE = 1,
FEMALE = 2
}

struct PageProperty{
1: required PageID id;
2: required PagePropertyValue property;
}

union PagePropertyValue{
1: i32 pageviews;
}

struct PageViewEdge{
1: required PersonID person;
2: required PageID page;
3: required i64 nonce;
}

struct EquivEdge{
1: required PersonID person1;
2: required PersonID person2;
}

union PageID{
1: string url;
}

union PersonID{
1: string cookie;
2: i64 userid;
}

