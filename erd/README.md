# Phase 3 - ERD
## 1:  What does each table represent as a real-world concept in your domain?

The spells table holds all of the information on the spells, except who can cast them, and what book they come from. 

The classes table holds the name of every class, as well as a description of whether it is a full class or a subclass. 

The Book field holds the names of the books.

The Leveling table holds information on how much power each class gains as it levels up. 

The castable spells table is a connection to stop the class and spell tables from becoming a many to many relationship. 

## 2: For every relationship: why is it the type you labeled it? What would break if you modeled it differently?

Classes to Leveling is a one to many relationship, both mandatory. The Leveling needs the class to function, and every class I will list is one that has magic leveling. 

Classes to Castable Spells is a one to many relationship, both mandatory. The Castable spells need the classes table to function so that it can be cross referenced with the spell ID. That’s the whole point of the table. 

Spells to castable spells is a one to many relationship, both mandatory. Each spell needs to be assigned to at least one class, but usually more. Every class has multiple spells. This would make a many to many, but instead I made a linking table. 

Books to castable spells is a one to many optional relationship. While every spell has a book associated with it, and every instance of a spell being declared castable has a source, it isn’t completely necessary for the functions of this database. 

## 3: Which relationship was hardest to figure out, and how did you resolve it?

The Castable spells table was the only thing that didn’t require a search for the definition of what relationship types were classified by, so that probably takes the cake. The many to many relationship needs to be reclassified as a linking table, with mandatory one to many on both sides. 
 
## 4: Did anything change from your Phase 2 field list when drawing the ERD? What and why?

No. I did not. Because the only goal was to represent what I'd already wrote. I've been trying to think about how this database will operate with as much preemptive structuring as I can. No use in building the foundation while working on the third floor. 
