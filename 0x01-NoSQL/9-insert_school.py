#!/usr/bin/env python3
"""Module - 9-insert_school.py"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document into a MongoDB collection based on keyword arguments.

    :param mongo_collection: pymongo collection object
    :param kwargs: key-value pairs to be inserted as the document
    :return: the _id of the newly inserted document
    """
    result = mongo_collection.insert_one(kwargs)
    return result.insert_id
