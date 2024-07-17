#!usr/bin/env python3
"""Module - web.py
"""
import redis
import requests


rd = redis.Redis()


def get_page(url: str) -> str:
    """Fetche HTML content of URL, caches it, and tracks access count"""
    access_count_key = "count:{}".format(url)
    rd.incr(access_count_key)
    cached_content_key = "cached:{}".format(url)
    cached_content = rd.get(cached_content_key)

    if cached_content:
        return cached_content.decode()

    response = requests.get(url)
    rd.setex(cached_content_key, 10, response.text)
    return response.text


if __name__ == "__main__":
    print(get_page('http://slowwly.robertomurray.co.uk'))
