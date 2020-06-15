#!/usr/bin/python3
'''
a function that queries the Reddit API and returns the number
of subscribers (not active users, total subscribers) for a
given subreddit. If an invalid subreddit is given,
the function should return 0.
'''

import requests


def number_of_subscribers(subreddit):
    '''
    returns the number of subscribers
    '''
    if subreddit is None or type(subreddit) is not str:
        return 0
    url = "http://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        'User-Agent': 'Python/requests:api.advanced:v1.0.0 (by /u/aleix)'}
    req = requests.get(url, headers=headers).json()
    subs = req.get("data", {}).get("subscribers", 0)
    return subs
