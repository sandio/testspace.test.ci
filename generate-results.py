######################################################################
# Usage:
#   sudo pip install pytest
#   py.test generate-results.py --junitxml=results.xml -v --tb=no
#
######################################################################

import pytest

max_test_cases = 100

# The following generates up to max_test_case tests
@pytest.mark.parametrize('count', range(max_test_cases))
def test_case(count): pass
