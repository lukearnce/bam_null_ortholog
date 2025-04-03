'''
flattens and converts a .json to a .tsv file. 
Usage:
parse_json_query.py <input.jsonl> <output.tsv>
'''

import pandas as pd
import json
import sys


def flatten_json(nested_json, exclude=['']): #https://stackoverflow.com/questions/52795561/flattening-nested-json-in-pandas-data-frame
    """Flatten json object with nested keys into a single level.
        Args:
            nested_json: A nested json object.
            exclude: Keys to exclude from output.
        Returns:
            The flattened json object if successful, None otherwise.
    """
    out = {}

    def flatten(x, name='', exclude=exclude):
        if type(x) is dict:
            for a in x:
                if a not in exclude: flatten(x[a], name + a + '_')
        elif type(x) is list:
            i = 0
            for a in x:
                flatten(a, name + str(i) + '_')
                i += 1
        else:
            out[name[:-1]] = x

    flatten(nested_json)
    return out


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(__doc__)
        sys.exit()

    with open(sys.argv[1]) as in_handle:
    	json_data = json.load(in_handle)

    with open(sys.argv[2], 'w') as outFile:
    	jsondf = pd.DataFrame([flatten_json(x) for x in json_data['reports']])
    	jsondf.to_csv(outFile, sep = '\t', index = False)
