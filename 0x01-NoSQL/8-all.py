#!/usr/bin/env python3
"""Module - 8-all.py"""


def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection.

    :param mongo_collection: pymongo collection object
    :return: list of documents in the collection, or an empty list if no documents
    """
    return [doc for doc in mongo_collection.find]
