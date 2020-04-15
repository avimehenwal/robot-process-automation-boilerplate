"""
Python Variables File
All variables would be available in all Page_Object and Tasks Files
these cariables could be accessed with robot syntax

${python_test_str}
@{python_test_list}
#{python_test_dict}
"""

import sys

python_test_str     = "Python Variable"
python_test_list    = [1, 2, 3, 4]
python_test_tuple   = (5, 6, 7, 8)
python_test_dict    = {
                            "firstName": "Avi",
                            "lastName": "Mehenwal"
                        }
platform            = sys.platform


# .
# ..
# ...
# ADD MORE