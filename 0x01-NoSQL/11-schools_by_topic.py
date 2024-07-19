#!/usr/bin/env python3
"""Module - 11-school_by_topic.py"""


def school_by_topic(mongo_collection, topic):
    """
    Returns the list of schools having a specific topic.

    :param mongo_collection: pymongo collection object
    :param topic: string, the topic to search for
    :return: list of schools having the specific topic
    """
    return list(mongo_collection.find({'topics': topic}))
