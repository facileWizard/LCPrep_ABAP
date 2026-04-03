🧩 Problem: Course Schedule
📜 Problem Statement

There are numCourses courses labeled from 0 to n-1.

You are given prerequisites:

[a, b] → to take course a, you must first take course b

Return:
👉 True if you can finish all courses
👉 False if there is a cycle

💡 Example
Input: numCourses = 2, prerequisites = [[1,0]]
Output: true
Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
Output: false  (cycle)
