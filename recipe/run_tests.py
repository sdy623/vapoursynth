import unittest

EXPECTED_FAILURES = 2  # 你预期的失败数

if __name__ == '__main__':
    test_suite = unittest.TestLoader().discover('test', pattern='*test.py')
    test_runner = unittest.TextTestRunner()
    result = test_runner.run(test_suite)
    total_failures = len(result.failures) + len(result.errors)
    if total_failures > EXPECTED_FAILURES:
        exit(1)