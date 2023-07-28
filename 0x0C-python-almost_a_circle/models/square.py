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
