## When we make a new class - we can reuse an existing class and inherit all the capabilities of an existing class and then add our own little bit to make our new class
## Another form of store and reuse
## Write once - reuse many times
## The new class (child) has all the capabilities of the old class (parent) - and then some more

## Subclass - is a child of parent class (animal - perent class, dog - subclass)

class PartyAnimal:
    x = 0
    name = ''
    def __init__(self, z):
        self.name = z
        print(self.name, 'I am constructed')

    def party(self):
        self.x = self.x + 1
        print(self.name, 'party count', self.x)

class FootballFan(PartyAnimal):
    points = 0
    def touchdown(self):
        self.points = self.points + 7
        self.party()
        print(self.name, 'points', self.points)

s = PartyAnimal('Sally')
s.party()

j = FootballFan('Jim')
j.party()
j.touchdown()
j.touchdown()
