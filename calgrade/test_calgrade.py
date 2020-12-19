from calgrade import calGrade
import unittest


class Test_Calculator(unittest.TestCase):
    def testSumFunction(self):
        self.assertEqual(calGrade(70),"B") 

    def testMinusFunction(self):
        self.assertEqual(calGrade(80),"A") 

    def testMultiplyFunction(self):
        self.assertEqual(calGrade(1),"F") 

    def testDivideFunction(self):
        self.assertEqual(calGrade(50), "D")

    def testitFunction(self):
        self.assertEqual(calGrade(60), "C")
