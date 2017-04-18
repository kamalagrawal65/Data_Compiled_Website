-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2017 at 07:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `profile_pic` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`name`, `username`, `password`, `type`, `profile_pic`) VALUES
('Astitva Srivastava', 'AstitvaSrivastava65', 'Astitva', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_type_table`
--

CREATE TABLE `admin_type_table` (
  `type_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_type_table`
--

INSERT INTO `admin_type_table` (`type_id`, `type`) VALUES
(0, 'superadmin'),
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `branch_table`
--

CREATE TABLE `branch_table` (
  `branchid` int(11) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_table`
--

INSERT INTO `branch_table` (`branchid`, `branch`, `counter`) VALUES
(1, 'Computer Science', 11),
(2, 'Mechanical', 1),
(3, 'Civil', 0),
(5, 'Chemical', 0),
(10, 'Other', 2),
(8, 'Electrical', 3),
(9, 'Electronics', 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments_table`
--

CREATE TABLE `comments_table` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date_comment` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments_table`
--

INSERT INTO `comments_table` (`cid`, `pid`, `name`, `comment`, `date_comment`, `email`) VALUES
(1, 11, 'bj', 'jweehfj', '2016-11-01 12:03:16', 'jd`@gmail.com'),
(2, 10, 'atulit', 'hello', '2016-11-03 02:19:34', 'sjfkljlskljk@sjdkfsj.com'),
(3, 18, 'kaml', 'snvkf', '2017-04-03 07:40:08', 'kjaka'),
(4, 18, 'bscakj', 'nv vsdlkdkjnvll', '2017-04-03 07:40:18', 'nvsdnvlk');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_marked`
--

CREATE TABLE `contact_us_marked` (
  `type` varchar(200) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us_marked`
--

INSERT INTO `contact_us_marked` (`type`, `value`) VALUES
('replied', 1),
('not replied', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_reply`
--

CREATE TABLE `contact_us_reply` (
  `rno` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `reply` text NOT NULL,
  `reply_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_table`
--

CREATE TABLE `contact_us_table` (
  `cno` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `received_time` varchar(200) NOT NULL,
  `marking` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us_table`
--

INSERT INTO `contact_us_table` (`cno`, `name`, `email`, `institute`, `subject`, `message`, `received_time`, `marking`) VALUES
(1, 'Astitva', 'AstitvaSrivastava777@gmail.com', 'Nit Rourkela', 'Help', 'Help me regarding Topological sort ', '2016-10-07 08:56:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kind_table`
--

CREATE TABLE `kind_table` (
  `kindid` int(11) NOT NULL,
  `kind` varchar(200) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kind_table`
--

INSERT INTO `kind_table` (`kindid`, `kind`, `counter`) VALUES
(1, 'Interview Experience', 3),
(8, 'Programs', 2),
(7, 'Knowledge', 9),
(9, 'Products', 2),
(10, 'General Knowledge', 1),
(11, 'Sports', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `admin_name` varchar(200) NOT NULL,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`admin_name`, `notice`) VALUES
('Astitva Srivastava', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `kindid` int(11) NOT NULL,
  `topic` varchar(1000) NOT NULL,
  `shortinfo` varchar(5000) NOT NULL,
  `longinfo` text NOT NULL,
  `author` varchar(1000) NOT NULL,
  `links` text NOT NULL,
  `subtime` varchar(1000) NOT NULL,
  `keywords` text,
  `code_data` text NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postid`, `branchid`, `kindid`, `topic`, `shortinfo`, `longinfo`, `author`, `links`, `subtime`, `keywords`, `code_data`, `visits`) VALUES
(1, 1, 7, 'How JVM Works &ndash; JVM Architecture?', 'JVM(Java Virtual Machine) acts as a run-time engine to run Java applications...', 'JVM(Java Virtual Machine) acts as a run-time engine to run Java applications. JVM is the one that actually calls the main method present in a java code. JVM is a part of JRE(Java Run Environment).\r\n\r\nJava applications are called WORA (Write Once Run Everywhere). This means a programmer can develop Java code on one system and can expect it to run on any other Java enabled system without any adjustment. This is all possible because of JVM.\r\n\r\nWhen we compile a .java file, a .class file(contains byte-code) with the same filename is generated by the Java compiler. This .class file goes into various steps when we run it. These steps together describe the whole JVM.\r\n\r\nJVM Memory\r\n\r\nMethod area :In method area, all class level information like class name, immediate parent class name, methods and variables information etc. are stored, including static variables. There is only one method area per JVM, and it is a shared resource.\r\nHeap area :Information of all objects is stored in heap area. There is also one Heap Area per JVM. It is also a shared resource.\r\n\r\nStack area :For every thread, JVM create one run-time stack which is stored here. Every block of this stack is called activation record/stack frame which store methods calls. All local variables of that method are stored in their corresponding frame. After a thread terminate, it&rsquo;s run-time stack will be destroyed by JVM. It is not a shared resource.\r\n\r\nPC Registers :Store address of current execution instruction of a thread. Obviously each thread has separate PC Registers.\r\n\r\nNative method stacks :For every thread, separate native stack is created. It stores native method information.', 'Astitva Srivastava', 'http://www.geeksforgeeks.org/jvm-works-jvm-architecture/', '2016-10-31 06:39:42', 'JVM, Java, Architecture', '', 5),
(2, 1, 7, 'Packages In Java', 'Package in Java is a mechanism to encapsulate a group of classes', 'Package in Java is a mechanism to encapsulate a group of classes, sub packages and interfaces. Packages are used for:\r\n\r\nPreventing naming conflicts. For example there can be two classes with name Employee in two packages, college.staff.cse.Employee and college.staff.ee.Employee\r\nMaking searching/locating and usage of classes, interfaces, enumerations and annotations easier\r\nProviding controlled access: protected and default have package level access control. \r\n\r\n\r\nA protected member is accessible by classes in the same package and its subclasses. A default member (without any access specifier) is accessible by classes in the same package only.\r\nPackages can be considered as data encapsulation (or data-hiding).\r\n\r\n\r\nAll we need to do is put related classes into packages. After that we can simply write a import a class from existing packages and use it in our program. A packages is container of group of related classes where some of the classes are accessible are exposed and others are kept for internal purpose.\r\n\r\nWe can reuse existing classes from the packages as many time as we need it in our program.\r\n\r\n \r\nHow packages work?\r\n\r\nPackage names and directory structure are closely related. For example if a package name is college.staff.cse, then there are three directories, college, staff and cse such that cse is present in staff and staff is present college. Also, the directory college is accessible through CLASSPATH variable, i.e., path of parent directory of college is present in CLASSPATH. The idea is to make sure that classes are easy to locate.\r\nPackage naming conventions : Packages are named in reverse order of domain names, i.e., org.geeksforgeeks.practice. For example, in a college, the recommended convention is college.tech.cse, college.tech.ee, college.art.history, etc.\r\nAdding a class to a Package : We can add more classes to an created package by using package name at the top of the program and saving it in the package directory. We need a new java file to define a public class, otherwise we can add the new class to an existing .java file and recompile it.\r\n\r\nSubpackages: Packages that are inside another package are the subpackages. These are not imported by default, they have to imported explicitly. Also, members of a subpackage have no access privileges, i.e., they are considered as different package for protected and default access specifiers.', 'Akash Saha', 'http://www.geeksforgeeks.org/packages-in-java/', '2016-10-31 06:43:11', 'Java, Packages, Classes', '', 2),
(5, 1, 7, 'Reloading modules in Python', 'reload() reloads a previously imported module.', 'reload() reloads a previously imported module. This is useful if you have edited the module source file using an external editor and want to try out the new version without leaving the Python interpreter. The return value is the module object.\r\n\r\nNote: The argument should be a module which has been successfully imported.\r\n\r\n', 'Akash Saha', 'http://www.geeksforgeeks.org/reloading-modules-python/', '2016-10-31 06:52:07', 'python, reload, module', 'For Python2.x\r\n\r\nreload(module)\r\nFor above 2.x and &lt;=Python3.3\r\n\r\nimport imp\r\nimp.reload(module)\r\nFor &gt;=Python3.4\r\n\r\nimport importlib\r\nimportlib.reload(module)', 1),
(9, 1, 1, 'Amazon Interview Experience', 'I got call from consultancy for Amazon. After profile shortlisting, ', 'I got call from consultancy for Amazon. After profile shortlisting, i received online test and then had telecom interview. After I went to Pune for f2f interview. HR shares all the topics need to study for interview. Below are the details of all rounds.<br/>\n\nRound 1: Online test<br/>\nHackerearth<br/>\n2 programs with 75 mins duration.<br/>\n\nRound 2: Telecom interview<br/>\n2 coding programs here too. Initially approach need to discuss, and once it&rsquo;s concrete and finalized they will ask to write code.<br/>\n\nFind level with maximum nodes on binary tree<br/>\nAddition of infinite size of integer<br/>\nRound 3: F2F design round<br/>\n\n Design parking system<br/>\nRound 4: F2F design round<br/>\n\nDesign notification system<br/>\nRound 5: Coding round<br/>\n\n Remove half nodes from binary tree<br/>\n Swap elements in linked list<br/>\nRound 6: coding round<br/>\n\n LRU cache implementation<br/>\nCopy binary tree and create new. Binary tree has left, right and random pointer<br/>\nIn any round they will discuss your project in dept. And asks for alternatives for technologies used in your application.', 'Astitva Srivastava', 'http://www.geeksforgeeks.org/amazon-interview-experience-set-307-off-campus/', '2016-10-31 07:03:05', 'Interview, Amazon', '', 23),
(7, 1, 1, 'Visa Interview Experience | Set 12 (On-Campus)', 'Round 1 &ndash; Coding in hackerrank. (5 questions)\r\n', 'Round 1 &ndash; Coding in hackerrank. (5 questions)\r\n\r\nRound 2 &ndash; Tech\r\n\r\nHow ping works &ndash; Didn&rsquo;t answer well\r\n\r\nMaximum Length Palindrome &ndash; Answered perfectly\r\n\r\nOS core concepts\r\n\r\nResume Questions\r\n\r\nRound 3 &ndash; Tech and Managerial\r\n\r\nMy AI project analyzed outright\r\n\r\nNetworks project I had done for CIP had a payment scope. I explained it really well and how Visa can help a small scale industry to scale to new heights in business with the project.\r\n\r\nWhy Visa &ndash; basically this question means youre 90% selected.\r\n\r\nRound 4 &ndash; HR\r\n\r\nWhy Visa\r\n\r\nStrengths Weaknesses', 'Astitva Srivastava', 'http://www.geeksforgeeks.org/visa-interview-experience-set-12-campus/', '2016-10-31 06:54:39', 'Interview, Visa', '', 7),
(8, 1, 7, 'Socket Programming in C/C++: Handling multiple clients on server without multi threading', 'This tutorial assumes you have a basic knowledge of socket programming', 'This tutorial assumes you have a basic knowledge of socket programming, i.e you are familiar with basic server and client model. In the basic model, server handles only one client at a time, which is a big assumption if you want to develop any scalable server model.\r\nThe simple way to handle multiple clients would be to spawn new thread for every new client connected to the server. This method is strongly not recommended because of various disadvantages, namely:\r\n\r\nThreads are difficult to code, debug and sometimes they have unpredictable results.\r\nOverhead switching of context\r\nNot scalable for large number of clients\r\nDeadlocks can occur\r\n\r\n', 'Akash Saha', 'http://www.geeksforgeeks.org/socket-programming-in-cc-handling-multiple-clients-on-server-without-multi-threading/', '2016-10-31 07:00:01', 'Socket Programming, C++, Networking', '', 2),
(4, 1, 7, 'Image Processing in Java | Set 1 (Read and Write)', 'To read and write image file we have to import the File class [ import java.io.File; ].', 'Classes required to perform the operation:\r\n\r\nTo read and write image file we have to import the File class [ import java.io.File; ]. This class represents file and directory path names in general.\r\nTo handle errors we use the IOException class [ import java.io.IOException; ]\r\nTo hold the image we create the BufferedImage object for that we use BufferedImage class [ import java.awt.image.BufferedImage; ]. This object is used to store an image in RAM.\r\nTo perform the image read write operation we will import the ImageIO class [ import javax.imageio.ImageIO;]. This class has static methods to read and write an image.', 'Astitva Srivastava', 'http://www.geeksforgeeks.org/image-processing-java-set-1-read-write/', '2016-10-31 06:47:05', 'Image Processing, Java, DIP', '// Java program to demonstrate read and write of image\r\nimport java.io.File;\r\nimport java.io.IOException;\r\nimport java.awt.image.BufferedImage;\r\nimport javax.imageio.ImageIO;\r\n \r\npublic class MyImage\r\n{\r\n    public static void main(String args[])throws IOException\r\n    {\r\n        int width = 963;    //width of the image\r\n        int height = 640;   //height of the image\r\n \r\n        // For storing image in RAM\r\n        BufferedImage image = null;\r\n \r\n        // READ IMAGE\r\n        try\r\n        {\r\n            File input_file = new File(&quot;G:Inp.jpg&quot;); //image file path\r\n \r\n            /* create an object of BufferedImage type and pass\r\n               as parameter the width,  height and image int\r\n               type.TYPE_INT_ARGB means that we are representing\r\n               the Alpha, Red, Green and Blue component of the\r\n               image pixel using 8 bit integer value. */\r\n            image = new BufferedImage(width, height,\r\n                                    BufferedImage.TYPE_INT_ARGB);\r\n \r\n             // Reading input file\r\n            image = ImageIO.read(input_file);\r\n \r\n            System.out.println(&quot;Reading complete.&quot;);\r\n        }\r\n        catch(IOException e)\r\n        {\r\n            System.out.println(&quot;Error: &quot;+e);\r\n        }\r\n \r\n        // WRITE IMAGE\r\n        try\r\n        {\r\n            // Output file path\r\n            File output_file = new File(&quot;G:Out.jpg&quot;);\r\n \r\n            // Writing to file taking type and path as\r\n            ImageIO.write(image, &quot;jpg&quot;, output_file);\r\n \r\n            System.out.println(&quot;Writing complete.&quot;);\r\n        }\r\n        catch(IOException e)\r\n        {\r\n            System.out.println(&quot;Error: &quot;+e);\r\n        }\r\n    }//main() ends here\r\n}//class ends here', 2),
(10, 1, 8, 'Longest Common Subsequence- Dynamic Programming', 'LCS Problem Statement: Given two sequences, find the length of longest subsequence present in both of them.', 'LCS Problem Statement: Given two sequences, find the length of longest subsequence present in both of them. A subsequence is a sequence that appears in the same relative order, but not necessarily contiguous. For example, &ldquo;abc&rdquo;, &ldquo;abg&rdquo;, &ldquo;bdf&rdquo;, &ldquo;aeg&rdquo;, &lsquo;&rdquo;acefg&rdquo;, .. etc are subsequences of &ldquo;abcdefg&rdquo;. So a string of length n has 2^n different possible subsequences.\r\n\r\nIt is a classic computer science problem, the basis of diff (a file comparison program that outputs the differences between two files), and has applications in bioinformatics.\r\n\r\nExamples:\r\nLCS for input Sequences &ldquo;ABCDGH&rdquo; and &ldquo;AEDFHR&rdquo; is &ldquo;ADH&rdquo; of length 3.\r\nLCS for input Sequences &ldquo;AGGTAB&rdquo; and &ldquo;GXTXAYB&rdquo; is &ldquo;GTAB&rdquo; of length 4.\r\n\r\n\r\n', 'Akash Saha', 'http://www.geeksforgeeks.org/dynamic-programming-set-4-longest-common-subsequence/', '2016-10-31 07:06:06', 'Python, Dp, Dynamic Programming, LCS, Longest Common Subsequence', '# Dynamic Programming implementation of LCS problem\r\n \r\ndef lcs(X , Y):\r\n    # find the length of the strings\r\n    m = len(X)\r\n    n = len(Y)\r\n \r\n    # declaring the array for storing the dp values\r\n    L = [[None]*(n+1) for i in xrange(m+1)]\r\n \r\n    &quot;&quot;&quot;Following steps build L[m+1][n+1] in bottom up fashion\r\n    Note: L[i][j] contains length of LCS of X[0..i-1]\r\n    and Y[0..j-1]&quot;&quot;&quot;\r\n    for i in range(m+1):\r\n        for j in range(n+1):\r\n            if i == 0 or j == 0 :\r\n                L[i][j] = 0\r\n            elif X[i-1] == Y[j-1]:\r\n                L[i][j] = L[i-1][j-1]+1\r\n            else:\r\n                L[i][j] = max(L[i-1][j] , L[i][j-1])\r\n \r\n    # L[m][n] contains the length of LCS of X[0..n-1] &amp; Y[0..m-1]\r\n    return L[m][n]\r\n#end of function lcs\r\n \r\n \r\n# Driver program to test the above function\r\nX = &quot;AGGTAB&quot;\r\nY = &quot;GXTXAYB&quot;\r\nprint &quot;Length of LCS is &quot;, lcs(X, Y)\r\n \r\n# This code is contributed by Nikhil Kumar Singh(nickzuck_007)\r\n', 36),
(11, 1, 8, 'Dynamic Programming (Longest Increasing Subsequence)', 'Let us discuss Longest Increasing Subsequence (LIS) problem as an example problem that can be solved using Dynamic Programming.', 'Let us discuss Longest Increasing Subsequence (LIS) problem as an example problem that can be solved using Dynamic Programming.\r\nThe longest Increasing Subsequence (LIS) problem is to find the length of the longest subsequence of a given sequence such that all elements of the subsequence are sorted in increasing order. For example, length of LIS for { 10, 22, 9, 33, 21, 50, 41, 60, 80 } is 6 and LIS is {10, 22, 33, 50, 60, 80}.\r\n', 'Astitva Srivastava', 'http://www.geeksforgeeks.org/dynamic-programming-set-3-longest-increasing-subsequence/', '2016-10-31 07:09:32', 'Dp, Dynamic Programming, Longest Increasing Subsequence, LIS', '\r\n/* Dynamic Programming Java implementation of LIS problem */\r\n \r\nclass LIS\r\n{\r\n    /* lis() returns the length of the longest increasing\r\n       subsequence in arr[] of size n */\r\n    static int lis(int arr[],int n)\r\n    {\r\n          int lis[] = new int[n];\r\n          int i,j,max = 0;\r\n \r\n          /* Initialize LIS values for all indexes */\r\n           for ( i = 0; i &lt; n; i++ )\r\n              lis[i] = 1;\r\n \r\n           /* Compute optimized LIS values in bottom up manner */\r\n           for ( i = 1; i &lt; n; i++ )\r\n              for ( j = 0; j &lt; i; j++ )\r\n                 if ( arr[i] &gt; arr[j] &amp;&amp; lis[i] &lt; lis[j] + 1)\r\n                    lis[i] = lis[j] + 1;\r\n \r\n           /* Pick maximum of all LIS values */\r\n           for ( i = 0; i &lt; n; i++ )\r\n              if ( max &lt; lis[i] )\r\n                 max = lis[i];\r\n \r\n            return max;\r\n    }\r\n \r\n    public static void main(String args[])\r\n    {\r\n        int arr[] = { 10, 22, 9, 33, 21, 50, 41, 60 };\r\n            int n = arr.length;\r\n            System.out.println(&quot;Length of lis is &quot; + lis( arr, n ) + &quot;\r\n&quot; );\r\n    }\r\n}', 9),
(12, 1, 7, 'Efficient way to multiply with 7', 'We can multiply a number by 7 using bitwise operator. First left shift the number by 3 bits (you will get 8n)', 'We can multiply a number by 7 using bitwise operator. First left shift the number by 3 bits (you will get 8n) then subtract the original numberfrom the shifted number and return the difference (8n &ndash; n).\r\n', 'Astitva Srivastava', 'http://localhost/letscrack/web/admin/table.php', '2016-10-31 07:12:08', 'Bit, Multiply with 7, Efficient', '\r\n# include&lt;stdio.h&gt;\r\n \r\nint multiplyBySeven(unsigned int n)\r\n{  \r\n    /* Note the inner bracket here. This is needed \r\n       because precedence of ''-'' operator is higher \r\n       than ''&lt;&lt;'' */\r\n    return ((n&lt;&lt;3) - n);\r\n}\r\n \r\n/* Driver program to test above function */\r\nint main()\r\n{\r\n    unsigned int n = 4;\r\n    printf(&quot;%u&quot;, multiplyBySeven(n));\r\n \r\n    getchar();\r\n    return 0;\r\n}', 12),
(13, 2, 7, 'New Technology Transform 3D Printing', 'We have all heard of 3D printing by now. This revolutionary process continues to develop and get better, including larger sizes, faster speeds', 'We have all heard of 3D printing by now. This revolutionary process continues to develop and get better, including larger sizes, faster speeds, and sometimes even production-ready parts. But 3D printed parts can still have quality issues, especially with inconsistent mechanical properties.\r\n\r\nA new technology that has recently hit the market promises to be even more disruptive than 3D printing&mdash;Carbon3D&rsquo;s &ldquo;CLIP&rdquo; technology. Short for &ldquo;continuous liquid interface production,&rdquo; CLIP is a photochemical process that actually pulls a complete, solid product from a melt of plastic material, with mechanical properties, resolution, and surface finishes that are very similar to injection-molded parts.\r\n\r\nCarbon3D is a Redwood City, California-based start-up. The company announced its CLIP technology in 2015 and unveiled its commercial CLIP-based additive manufacturing machine&mdash;the M1&mdash;in April 2016.\r\n\r\nHow It Works\r\n\r\nCLIP is a variation of the stereolithography process that uses light and oxygen to rapidly produce objects from a pool of resin. It essentially grows solid structures out of a liquid bath. &ldquo;We have been able to demonstrate the continuous generation of monolithic polymeric parts up to tens of centimeters in size with feature resolution below 100 micrometers,&rdquo; says Alexander Ermoshkin, CTO and co-founder of Carbon3D.', 'Akash Saha', 'https://www.asme.org/engineering-topics/articles/manufacturing-design/new-clip-technology-transforms-3d-printing', '2016-10-31 07:16:00', '3D Printing, ASME, Technology, Mechanical, Carbon 3D', '', 3),
(14, 9, 9, 'Amazon Echo', 'Amazon Echo is a hands-free speaker you control with your voice.', 'Amazon Echo is a hands-free speaker you control with your voice. Echo connects to the Alexa Voice Service to play music, provide information, news, sports scores, weather, and more&mdash;instantly. All you have to do is ask.\r\n\r\n\r\nEcho has seven microphones and beam forming technology so it can hear you from across the room&mdash;even while music is playing. Echo is also an expertly tuned speaker that can fill any room with 360&deg; immersive sound. When you want to use Echo, just say the wake word &quot;Alexa&quot; and Echo responds instantly. If you have more than one Echo or Echo Dot, Alexa responds intelligently from the Echo you''re closest to with ESP\r\n\r\nAmazon Echo provides hands-free voice control for Amazon Music&mdash;just ask for your favorite artist or song, or request a specific genre or mood. You can also search for music by lyrics, when a song or album was released, or let Alexa pick the music for you. Listen to any song with Amazon Music Unlimited. Learn more.\r\n\r\n\r\nAmazon Echo also provides hands-free voice control to Pandora, Spotify, iHeartRadio, and TuneIn. Plus, Echo is Bluetooth-enabled so you can stream other popular music services like iTunes from your phone or tablet. Echo has been fine-tuned to deliver crisp vocals with dynamic bass response. Its dual downward-firing speakers produce 360&deg; omni-directional audio to fill any room with immersive sound.', 'Astitva Srivastava', 'https://www.amazon.com/Amazon-Echo-Bluetooth-Speaker-with-WiFi-Alexa/dp/B00X4WHP5E', '2016-10-31 07:21:20', 'Amazon Echo, Technology, Product', '', 7),
(15, 9, 9, 'Google Class', 'Google Glass is an optical head-mounted display designed in the shape of a pair', 'Google Glass is an optical head-mounted display designed in the shape of a pair of eyeglasses. It was developed by X (previously Google X)[9] with the mission of producing a ubiquitous computer.[1] Google Glass displayed information in a smartphone-like hands-free format.[10] Wearers communicated with the Internet via natural language voice commands\r\n\r\nGoogle Glass can be controlled using the touchpad built into the side of the device\r\nTouchpad: A touchpad is located on the side of Google Glass, allowing users to control the device by swiping through a timeline-like interface displayed on the screen.[31] Sliding backward shows current events, such as weather, and sliding forward shows past events, such as phone calls, photos, circle updates, etc.\r\nCamera: Google Glass has the ability to take photos and record 720p HD video.[32]\r\nDisplay: The Explorer version of Google Glass uses a liquid crystal on silicon (LCoS)(based on an LCoS chip from Himax), field-sequential color system, LED illuminated display.[33] The display''s LED illumination is first P-polarized and then shines through the in-coupling polarizing beam splitter (PBS) to the LCoS panel. The panel reflects the light and alters it to S-polarization at active pixel sensor sites. The in-coupling PBS then reflects the S-polarized areas of light at 45&deg; through the out-coupling beam splitter to a collimating reflector at the other end. Finally, the out-coupling beam splitter (which is a partially reflecting mirror, not a polarizing beam splitter) reflects the collimated light another 45&deg; and into the wearer''s eye', 'Akash Saha', 'https://en.wikipedia.org/wiki/Google_Glass\r\n', '2016-10-31 07:23:12', 'Google Glass, Technology, Newspaper', '', 2),
(16, 8, 7, 'DC Motor', 'This DC or direct current motor works on the principal, when a current carrying conductor is placed in a magnetic field, ', 'Principle of DC Motor\r\n\r\nThis DC or direct current motor works on the principal, when a current carrying conductor is placed in a magnetic field, it experiences a torque and has a tendency to move.\r\n\r\nThe direction of rotation of a this motor is given by Fleming&rsquo;s left hand rule, which states that if the index finger, middle finger and thumb of your left hand are extended mutually perpendicular to each other and if the index finger represents the direction of magnetic field, middle finger indicates the direction of current, then the thumb represents the direction in which force is experienced by the shaft of the DC motor.', 'Roumya Ranjan', 'http://www.electrical4u.com/dc-motor-or-direct-current-motor/', '2016-10-31 07:28:17', 'DC motor, Electrical', '', 1),
(17, 8, 7, 'Transformer', 'Definition of Transformer\r\nA transformer is a static machine used for transforming power from', 'Definition of Transformer\r\nA transformer is a static machine used for transforming power from one circuit to another without changing frequency. This is a very basic definition of transformer. Since there is no rotating or moving part so transformer is a static device. Transformer operates on ac supply. Transformer works on the principle of mutual induction.\r\n\r\n\r\nUse of Power Transformer\r\n\r\n Generation of electrical power in low voltage level is very much cost effective. Theoretically, this low voltage level power can be transmitted to the receiving end. This low voltage power if transmitted results in greater line current which indeed causes more line lossesBut if the voltage level of a power is increased, the current of the power is reduced which causes reduction in ohmic or I2R losses in the system, reduction in cross sectional area of the conductor i.e. reduction in capital cost of the system and it also improves the voltage regulation of the system. Because of these, low level power must be stepped up for efficient electrical power transmission. This is done by step up transformer at the sending side of the power system network. As this high voltage power may not be distributed to the consumers directly, this must be stepped down to the desired level at the receiving end with the help of step down transformer. Electrical power transformer thus plays a vital role in power transmission.', 'Roumya Ranjan', 'http://www.electrical4u.com/electrical-power-transformer-definition-and-types-of-transformer/', '2016-10-31 07:30:35', 'Transformer, Electrical', '', 7),
(18, 10, 11, 'Team India, Ashwin continue to lead ICC Test charts', 'DUBAI: There was no change at the top of ICC Test rankings for teams and bowlers as India and its premier', 'DUBAI: There was no change at the top of ICC Test rankings for teams and bowlers as India and its premier off-spinner Ravichandran Ashwin held on to their numero uno spots respectively.\r\nIndia led the team''s table with 115 points ahead of arch-rivals Pakistan (111) and Australia (108). England were at fourth place followed by South Africa, Sri Lanka, New Zealand, West Indies with Bangladesh and Zimbabwe completing the list.\r\nAshwin, who became the second fastest to 200 wickets during the Test series against New Zealand, maintained his position with 900 points, with South African pace spearhead Dale Steyn (878) and England''s James Anderson (853) completing the top three.\r\nAshwin''s spin partner Ravindra Jadeja was at seventh place with 805 points.\r\nGoing through a purple patch, Ashwin was also leading the all-rounders'' table with 451 points, with Jadeja occupying the fifth position with 292 points.\r\nAjinkya Rahane was the top-ranked Indian batsman at sixth with 825 points, while Cheteshwar Pujara and skipper Virat Kohli moved up a place each to 14th and 16th spots respectively.', 'Astitva Srivastava', 'http://timesofindia.indiatimes.com/sports/cricket/news/team-india-ashwin-continue-to-lead-icc-test-charts/articleshow/55155823.cms', '2016-10-31 07:35:10', 'RaviChandran Ashwin, India, ICC rankings, Spinner, Cricket, Newzleand', '', 6),
(20, 10, 11, 'Asian Champions Trophy: India&rsquo;s winning combination promises much', 'India were heavy favourites going into the Asian Champions Trophy, with Pakistan and South Korea not the force', 'India were heavy favourites going into the Asian Champions Trophy, with Pakistan and South Korea not the force they used to be while the other teams in the fray, including hosts Malaysia, did not possess the big guns to put it across Roelant Oltmans&rsquo;s wards.\r\nNevertheless, victory in Sunday&rsquo;s final over arch rivals Pakistan was a Diwali gift for hockey lovers in the country, and not just because of the prevailing relations between the two neighbours.\r\nThough ending up eighth at the Rio Olympics was a disappointment for most fans, Indian hockey has been on an upward curve for the last few years. Currently, the team is the best in the continent , and can upset the top teams in the game on a given day.\r\nOltmans has been involved with Indian hockey for almost four years now &mdash; in various capacities &mdash; and the benefits of continuity are there for all to see. The synthesis of subcontinental flair and European structure he has tried to develop is more visible with two podium finishes in elite FIH events over the last 12 months.\r\nThe benefits of rubbing shoulders with the best players in the world in the Hockey India League cannot be discounted either.\r\nIndia is currently the sixth-ranked team in the world but the Dutch coach knows that if India is to take the next big step, strength and depth in various positions will be required to prepare for life after stalwarts like Sardar Singh, PR Sreejesh and VR Raghunath retire.', 'Astitva Srivastava', 'http://indianexpress.com/article/sports/hockey/asian-champions-trophy-india-winning-combination-promises-much-3730705/', '2016-10-31 07:45:31', 'Asian Champions Trophy , India', '', 15),
(22, 8, 10, 'abc', 'dhghj', 'fhhdhff', 'Astitva', 'dhjhj', '2016-11-01 12:05:09', 'abx', 'acbaj', 4);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requestid` int(11) NOT NULL,
  `parainfo` text NOT NULL,
  `author` varchar(2000) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `subtime` varchar(1000) NOT NULL,
  `kind` varchar(1000) NOT NULL,
  `branch` varchar(1000) NOT NULL,
  `links` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requestid`, `parainfo`, `author`, `title`, `subtime`, `kind`, `branch`, `links`) VALUES
(56, 'a', 'a', 'a', '2016-11-01 11:58:07', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `slno` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `phoneno` varchar(200) NOT NULL,
  `profession` varchar(200) NOT NULL,
  `organization` varchar(200) NOT NULL,
  `date_joined` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`slno`, `username`, `name`, `email`, `password`, `gender`, `dob`, `phoneno`, `profession`, `organization`, `date_joined`) VALUES
(5, 'Astitva', 'Astitva', 'AstitvaSrivastava777@gmail.com', 'Astitva', 'Male', '01/08/1997', '9090538616', 'Student', 'NITR', '2016-10-27 05:01:37'),
(9, 'akash', 'Akash Saha', 'akash180805@gmail.com', 'abcd', 'Male', '18/08/1996', '7205795685', 'student ', 'Nit Rourkela ', '2016-10-31 08:05:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_type_table`
--
ALTER TABLE `admin_type_table`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `branch_table`
--
ALTER TABLE `branch_table`
  ADD PRIMARY KEY (`branchid`),
  ADD UNIQUE KEY `branch` (`branch`);

--
-- Indexes for table `comments_table`
--
ALTER TABLE `comments_table`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `contact_us_table`
--
ALTER TABLE `contact_us_table`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `kind_table`
--
ALTER TABLE `kind_table`
  ADD PRIMARY KEY (`kindid`),
  ADD UNIQUE KEY `kind` (`kind`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestid`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`slno`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch_table`
--
ALTER TABLE `branch_table`
  MODIFY `branchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comments_table`
--
ALTER TABLE `comments_table`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact_us_reply`
--
ALTER TABLE `contact_us_reply`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_us_table`
--
ALTER TABLE `contact_us_table`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kind_table`
--
ALTER TABLE `kind_table`
  MODIFY `kindid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
