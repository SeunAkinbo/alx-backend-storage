#!/usr/bin/env python3
"""Module - 101-students.py"""
def top_students(mongo_collection):
    """
    Calculate the average score for each student in the mongo_collection.

    Args:
    mongo_collection: A pymongo collection instance representing the students.

    Returns:
    A list of dictionaries, each containing the student's original data
    and their average score.
    """
    students = mongo_collection.aggregate(
        [
            {
                '$project': {
                    '_id': 1,
                    'name': 1,
                    'averageScore': {
                        '$avg': {
                            '$avg': '$topics.score',
                        },
                    },
                    'topics': 1,
                },
            },
            {
                '$sort': {'averageScore': -1},
            },
        ]
    )
    return students
