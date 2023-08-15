#!/usr/bin/python3
"""This module contains the square class"""

from models.rectangle import Rectangle


class Square(Rectangle):
    """Square inherited from Rectangle"""

    def __init__(self, size, x=0, y=0, id=None):
        """Initializes the Square class"""
        super().__init__(size, size, x, y, id)

    @property
    def size(self):
        """Getter for the size attribute"""
        return self.width

    @size.setter
    def size(self, value):
        """Setter for the size attribute"""
        self.width = value
        self.height = value

    def __str__(self):
        """String representation of the Square instance"""
        return f"[Square] ({self.id}) {self.x}/{self.y} - {self.size}"

    def update(self, *args, **kwargs):
        """Update the attributes arguments"""

        if args:
            # If *args is not empty
            if len(args) >= 1:
                self.id = args[0]

            if len(args) >= 2:
                self.size = args[1]

            if len(args) >= 3:
                self.x = args[2]

            if len(args) >= 4:
                self.y = args[3]
        else:
            for key, value in kwargs.items():
                if key == 'id':
                    self.id = value
                elif key == 'size':
                    self.size = value
                elif key == 'x':
                    self.x = value
                elif key == 'y':
                    self.y = value

    def to_dictionary(self):
        """Returns the dictionary representation of a Square object"""
        return {
            'id': self.id,
            'size': self.size,
            'x': self.x,
            'y': self.y
        }

    def to_csv_row(self):
        """Returns a CSV row representation of the instance"""
        return [self.id, self.width, self.x, self.y]

    @classmethod
    def from_csv_row(cls, row):
        """Creates a Square instance from a CSV row"""
        return cls(*map(int, row))
