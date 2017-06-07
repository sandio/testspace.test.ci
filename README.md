[![Testspace](https://www.testspace.com/img/Testspace.png)](https://www.testspace.com)

***

### Testspace CI testings

This repo is used to run tests leveraging supported CIs. Will be using pre-canned `results.xml`:

<pre>
sudo pip install pytest
py.test generate-results.py --junitxml=results.xml -v --tb=no
</pre>

Info to capture:
  * trigger repo
  * adding to `deploymnet` in Circle Testspace testings

To-Do:
  * metric for uploading time
  * metric for logs

***

### Master

TBD

### Standalone

TBD

### Travis

TBD
