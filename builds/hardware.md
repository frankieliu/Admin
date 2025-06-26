# memory

1. check amount of memory
   1. install cpu-z
1. check the number of slots
   1. task manager/memory/slots used 
1. cmd> wmic memphysical get MaxCapacity
   1. 33554432 / 1048576 = 32G
   
   PS> wmic memorychip get "BankLabel,Capacity,ConfiguredClockSpeed,Manufacturer,PartNumber,SerialNumber,Speed"
   BankLabel  Capacity    ConfiguredClockSpeed  Manufacturer  PartNumber        SerialNumber  Speed
   BANK 0     8589934592  2400                  Samsung       M471A1K43BB1-CTD  00000000      2667
   BANK 2     8589934592  2400                  Kingston      9905624-054.A00G  54097215      2400

# T490
  1. one mem slot is soldered in
     1. unfortunately ebay laptop had 8 gb soldered in
     1. my older t490 has 16 gb soldered in