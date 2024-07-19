#!/usr/bin/env python3
"""Module - 8-all.py"""
from pymongo import MongoCLient


def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection.

    :param mongo_collection: pymongo collection object
    :return: list of documents in the collection, or an empty list if no documents
    """
    docs = list(mongo_collection.find())
    return docs if docs else []
