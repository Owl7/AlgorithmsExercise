#-*- coding:utf-8 -*-

# 如果 a+b+c=1000，且 a^2+b^2=c^2（a,b,c 为自然数），如何求出所有a、b、c可能的组合?

import time

# 正常逻辑
def test01():
	for a in range(0, 1001):
		for b in range(0, 1001):
			for c in range(0, 1001):
				if a + b + c == 1000 and a**2 + b**2 == c**2:
					print("a, b, c: %d, %d, %d" %(a, b, c))

# T = 1000 * 1000 * 1000 * 2
# T(n) = n^3 * 2	时间复杂度
# T(n) = n^3

# 使用算法
def test02():
	for a in range(0, 1001):
		for b in range(0, 1001):
			c = 1000 - a - b
			if a**2 + b**2 == c**2:
				print("a, b, c: %d, %d, %d" %(a, b, c))

start_time = time.time()
test02()
end_time = time.time()

print("time: %d", end_time - start_time)


