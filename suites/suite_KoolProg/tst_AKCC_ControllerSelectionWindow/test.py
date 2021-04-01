source(findFile('scripts', 'python/bdd.py'))

setupHooks('../shared/scripts/bdd_hooks.py')
collectStepDefinitions('./steps', '../shared/steps')

import test_config
import names
from Keywords import Keywords




def main():
    testSettings.throwOnFailure = True
    testSettings.logScreenshotOnFail = True
    global keywords
    keywords = Keywords(names, test_config.input_sheet_path)
    runFeatureFile('test.feature')

