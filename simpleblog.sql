-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 09:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'laravel-2019-04-23-5cbf45c07239d.png', '2019-04-23 11:05:04', '2019-04-23 11:05:04'),
(2, 'Php', 'php', 'php-2019-04-25-5cc1d03a40358.png', '2019-04-25 09:20:26', '2019-04-25 09:20:26'),
(3, 'Html', 'html', 'html-2019-04-25-5cc1d0650f44b.png', '2019-04-25 09:21:09', '2019-04-25 09:21:09'),
(4, 'Css', 'css', 'css-2019-04-25-5cc1d090bdbe1.png', '2019-04-25 09:21:53', '2019-04-25 09:21:53'),
(5, 'Javascript', 'javascript', 'javascript-2019-04-25-5cc1d0b0ca397.png', '2019-04-25 09:22:25', '2019-04-25 09:22:25'),
(6, 'Wordpress', 'wordpress', 'wordpress-2019-04-25-5cc1d0d4e38c1.jpg', '2019-04-25 09:23:01', '2019-04-25 09:23:01'),
(7, 'Codeingetor', 'codeingetor', 'codeingetor-2019-04-25-5cc1d10955aac.png', '2019-04-25 09:23:53', '2019-04-25 09:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-23 11:46:04', '2019-04-23 11:46:04'),
(2, 2, 1, '2019-04-25 08:14:25', '2019-04-25 08:14:25'),
(3, 3, 1, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(4, 3, 2, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(5, 3, 5, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(6, 3, 6, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(7, 3, 7, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(8, 4, 3, '2019-04-25 09:34:03', '2019-04-25 09:34:03'),
(9, 4, 4, '2019-04-25 09:34:03', '2019-04-25 09:34:03'),
(10, 5, 3, '2019-04-25 09:36:23', '2019-04-25 09:36:23'),
(11, 5, 4, '2019-04-25 09:36:23', '2019-04-25 09:36:23'),
(12, 6, 2, '2019-04-25 09:40:00', '2019-04-25 09:40:00'),
(13, 7, 1, '2019-04-25 09:41:54', '2019-04-25 09:41:54'),
(14, 7, 2, '2019-04-25 09:41:54', '2019-04-25 09:41:54'),
(15, 7, 7, '2019-04-25 09:41:54', '2019-04-25 09:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_21_145313_create_roles_table', 1),
(4, '2018_04_24_134132_create_tags_table', 1),
(5, '2018_04_26_144755_create_categories_table', 1),
(6, '2018_04_30_163457_create_posts_table', 1),
(7, '2018_04_30_163658_create_category_post_table', 1),
(8, '2018_04_30_163710_create_post_tag_table', 1),
(9, '2018_06_07_054134_create_subscribers_table', 1),
(10, '2018_06_13_082204_create_jobs_table', 1),
(11, '2018_07_12_154144_create_post_user_table', 1),
(12, '2018_07_18_142248_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 'Database: Seeding', 'database-seeding', 'database-seeding-2019-04-23-5cbf4f5a6228d.png', '<p>Laravel includes a simple method of seeding your database with test data using seed classes. All seed classes are stored in the <code class=\" language-php\">database<span class=\"token operator\">/</span>seeds</code> directory. Seed classes may have any name you wish, but probably should follow some sensible convention, such as <code class=\" language-php\">UsersTableSeeder</code>, etc. By default, a <code class=\" language-php\">DatabaseSeeder</code> class is defined for you. From this class, you may use the <code class=\" language-php\">call</code> method to run other seed classes, allowing you to control the seeding order.</p>', 1, 1, 1, '2019-04-23 11:46:03', '2019-04-25 07:39:01'),
(2, 1, 'Bootstrap Get Started', 'bootstrap-get-started', 'bootstrap-get-started-2019-04-25-5cc1c0b9d685d.jpg', '<h2>What is Bootstrap?</h2>\r\n<ul>\r\n<li>Bootstrap is a free front-end framework for faster and easier web development</li>\r\n<li>Bootstrap includes HTML and CSS based design templates for typography, forms, buttons, tables, navigation, modals, image carousels and many other, as well as optional JavaScript plugins</li>\r\n<li>Bootstrap also gives you the ability to easily create responsive designs</li>\r\n</ul>', 1, 1, 1, '2019-04-25 08:14:23', '2019-04-25 08:14:46'),
(3, 1, '9 Web Technologies Every Web Developer Must Know in 2019', '9-web-technologies-every-web-developer-must-know-in-2019', '9-web-technologies-every-web-developer-must-know-in-2019-2019-04-25-5cc1d2b8ac131.png', '<p>Web development comes with a huge set of rules and techniques every website developer should know about. If you want a website to look and function as you wish them to, you need to get familiar with web technologies that will help you achieve your goal.</p>\r\n<p>Developing an app or a website typically comes down to knowing 3 main languages: <a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript\">JavaScript</a>, <a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS\">CSS</a>, and <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTML\">HTML</a>. And while it sounds quite complicated, once you know what you are doing, understanding web technology and the way it works becomes significantly easier.</p>\r\n<p>We present you with an introduction to web technologies and the latest web technologies list hoping it will make things at least a bit easier for you. Let&rsquo;s take a look.</p>\r\n<h2><strong>What is Web Technology?</strong></h2>\r\n<p>You have probably heard the term &ldquo;web development technologies&rdquo; before, but did you ever think about what it actually means?</p>\r\n<p>Since the computers can&rsquo;t communicate with each other the way people do, they require codes instead. Web technologies are the markup languages and multimedia packages computers use to communicate.</p>\r\n<h2><strong>1. Browsers</strong></h2>\r\n<p>Browsers request information and then they show us in the way we can understand. Think of them as the interpreters of the web. Here are the most popular ones:</p>\r\n<p><a href=\"https://www.google.com/chrome/\">Google Chrome</a> &ndash; Currently, the most popular browser brought to you by Google</p>\r\n<p><a href=\"https://www.apple.com/safari/\">Safari</a> &ndash; Apple&rsquo;s web browser</p>\r\n<p><a href=\"https://www.mozilla.org/en-US/firefox/new/\">Firefox</a> &ndash; Open-source browser supported by the Mozilla Foundation</p>\r\n<p><a href=\"http://windows.microsoft.com/en-us/internet-explorer/download-ie\">Internet Explorer</a> &ndash; Microsoft&rsquo;s browser</p>\r\n<h2><strong>2. HTML &amp; CSS</strong></h2>\r\n<p><a href=\"https://developer.mozilla.org/en-US/docs/Web/HTML\">HTML</a> is the one of the one you should learn first. Thanks to HTML, the web browsers know what to show once they receive the request. If you want to better understand how HTML works, you also need to know what CSS is.</p>\r\n<p><a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS\">CSS</a> stands for Cascading Style Sheets and it describes how HTML elements are to be displayed on the screen.</p>\r\n<h2><strong>3. Web Development Frameworks</strong></h2>\r\n<p>Web development frameworks are a starting point of items that a developer can use to avoid doing the simple or mundane tasks, and instead get right to work.</p>\r\n<h3><a href=\"https://angular.io/\" target=\"_blank\" rel=\"noreferrer noopener\">Angular</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-321\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/angular_1-1.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/angular_1-1.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/angular_1-1-300x138.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/angular_1-1-768x353.jpg 768w\" alt=\"Web Development Frameworks Angular\" /></figure>\r\n<p>Angular is one of the latest web technologies designed specifically for developing dynamic web applications. With this framework, you can easily create front-end based applications without needing to use other frameworks or plugins.</p>\r\n<p>The features include well-made templates, MVC architecture, code generation, code splitting etc. All the expressions are like code snippets that enclosed within curly braces and do not use any loops or conditional statements.</p>\r\n<h3><a href=\"http://rubyonrails.org/\" target=\"_blank\" rel=\"noreferrer noopener\">Ruby on Rails</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-322\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/ruby_on_rails_a_web-application_framework_that_includes_everything_needed_to_create_database-backed_web_applications_accor-1.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/ruby_on_rails_a_web-application_framework_that_includes_everything_needed_to_create_database-backed_web_applications_accor-1.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/ruby_on_rails_a_web-application_framework_that_includes_everything_needed_to_create_database-backed_web_applications_accor-1-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/ruby_on_rails_a_web-application_framework_that_includes_everything_needed_to_create_database-backed_web_applications_accor-1-768x356.jpg 768w\" alt=\"Web Development Frameworks Ruby on Rails\" /></figure>\r\n<p>Ruby on Rails is a server-side website technology that makes app development much easier and faster. The thing that really sets this framework apart is the reusability of the code as well as some other cool features that will help you get the job done in no time.</p>\r\n<p>Popular websites written with Ruby include <a href=\"https://basecamp.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Basecamp</a>, <a href=\"https://ask.fm/\" target=\"_blank\" rel=\"noreferrer noopener\">Ask.fm</a>, <a href=\"https://github.com/\" target=\"_blank\" rel=\"noreferrer noopener\">GitHub</a>, <a href=\"https://500px.com/\" target=\"_blank\" rel=\"noreferrer noopener\">500px</a>, and many others.</p>\r\n<p>Here is <a href=\"https://tms-outsource.com/blog/posts/ruby-on-nails/\" target=\"_blank\" rel=\"noreferrer noopener\">everything you need to know about Ruby on Rails</a>.</p>\r\n<h3><a href=\"http://www.yiiframework.com/\" target=\"_blank\" rel=\"noreferrer noopener\">YII</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-323\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/yii_php_framework.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/yii_php_framework.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/yii_php_framework-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/yii_php_framework-768x356.jpg 768w\" alt=\"Web Development Frameworks Yii\" /></figure>\r\n<p>Yii is an open-source <a href=\"https://tms-outsource.com/blog/posts/web-application-development/\">web application development</a> framework built in PHP5. It is performance optimized and comes with a number of great tools for debugging and <a href=\"https://tms-outsource.com/blog/posts/web-application-testing/\">app testing</a>. Another plus is that it is pretty simple and easy to use.</p>\r\n<h3><a href=\"https://www.meteor.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Meteor JS</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-324\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/build_apps_with_javascript_meteor_1.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/build_apps_with_javascript_meteor_1.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/build_apps_with_javascript_meteor_1-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/build_apps_with_javascript_meteor_1-768x356.jpg 768w\" alt=\"Web Development Frameworks Meteor JS\" /></figure>\r\n<p>Meteor JS is written in Node.js and it makes it possible for you to to create real-time <a href=\"https://tms-outsource.com/blog/posts/app-ideas/\" target=\"_blank\" rel=\"noreferrer noopener\">web applications</a> for different platforms. The framework for creating simple websites for personal use really stand out with Meteor JS.</p>\r\n<p>This is an open-source isomorphic JavaScript web framework which also means that the webpage loading time is significantly shorter. JavaScript stack also makes it possible to get the same results with fewer lines of code than usually.</p>\r\n<h3><a href=\"http://expressjs.com/de/\" target=\"_blank\" rel=\"noreferrer noopener\">Express.js</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-325\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/express_-_node_js-framework_von_webanwendungen.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/express_-_node_js-framework_von_webanwendungen.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/express_-_node_js-framework_von_webanwendungen-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/express_-_node_js-framework_von_webanwendungen-768x356.jpg 768w\" alt=\"Web Development Frameworks Express JS\" /></figure>\r\n<p>Developed in Node.js, Express.js is a web app development network that is great for those who need to develop apps and APIs as fast as possible. A lot of great features are provided with the help of plugins.</p>\r\n<h3><a href=\"https://framework.zend.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Zend</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-326\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/home_-_zend_framework_1.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/home_-_zend_framework_1.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/home_-_zend_framework_1-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/home_-_zend_framework_1-768x356.jpg 768w\" alt=\"Web Development Frameworks Zend\" /></figure>\r\n<p>Zend is an open-source framework based on PHP, focused on building more secure and reliable web apps and services.</p>\r\n<h3><a href=\"https://www.djangoproject.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Django</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-327\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/the_web_framework_for_perfectionists_with_deadlines_django.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/the_web_framework_for_perfectionists_with_deadlines_django.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/the_web_framework_for_perfectionists_with_deadlines_django-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/the_web_framework_for_perfectionists_with_deadlines_django-768x356.jpg 768w\" alt=\"Web Development Frameworks Django\" /></figure>\r\n<p>Django is one of the most popular frameworks written in Python and follows the MVC architecture. It makes the app development process much easier thanks to its simplicity.</p>\r\n<p>Check out more <a href=\"https://tms-outsource.com/blog/posts/python-frameworks/\" target=\"_blank\" rel=\"noreferrer noopener\">popular Python frameworks</a>.</p>\r\n<h3><a href=\"https://laravel.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Laravel</a></h3>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-328\" src=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/laravel_-_the_php_framework_for_web_artisans-1.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://tms-outsource.com/blog/wp-content/uploads/2019/02/laravel_-_the_php_framework_for_web_artisans-1.jpg 800w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/laravel_-_the_php_framework_for_web_artisans-1-300x139.jpg 300w, https://tms-outsource.com/blog/wp-content/uploads/2019/02/laravel_-_the_php_framework_for_web_artisans-1-768x356.jpg 768w\" alt=\"Web Development Frameworks Laravel\" /></figure>\r\n<p>Laravel is a PHP development framework ideal for small websites. It comes with a number of useful features including the MVC support, object-oriented libraries, Artisan, authorization technique, database migration etc.</p>\r\n<p>It is one of our favorite <a href=\"https://tms-outsource.com/blog/posts/4-php-frameworks-we-love-working-with/\">PHP frameworks.</a></p>\r\n<h2><strong>4. Programming Languages</strong></h2>\r\n<p>As we explained before, since computers don&rsquo;t use languages that are anything like human languages, they need a different way to communicate. Here are some of the most popular programming languages:</p>\r\n<p><a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript\">Javascript</a> &ndash; used by all web browsers, Meteor, and lots of other frameworks</p>\r\n<p><a href=\"http://coffeescript.org/\">CoffeeScript</a> &ndash; a &ldquo;dialect&rdquo; of JavaScript. It is viewed as simpler but it converts back into JavaScript</p>\r\n<p><a href=\"https://www.python.org/\">Python</a> &ndash; used by the Django framework as well as in the majority of mathematical calculations</p>\r\n<p><a href=\"https://www.ruby-lang.org/en/\">Ruby</a> &ndash; used by the Ruby on Rails framework</p>\r\n<p><a href=\"http://php.net/\">PHP</a> &ndash; used by WordPress</p>\r\n<p><a href=\"https://golang.org/\">Go</a> &ndash; newer language, built for speed</p>\r\n<p><a href=\"https://developer.apple.com/swift/\">Swift</a> &ndash; Apple&rsquo;s newest programming language</p>\r\n<p><a href=\"https://www.java.com/en/about/\">Java</a> &ndash; used by Android and a lot of desktop application.</p>\r\n<p>So let&rsquo;s talk about the most popular ones in a bit more detail.</p>', 1, 1, 1, '2019-04-25 09:31:05', '2019-04-25 09:31:40'),
(4, 1, 'HTML Interview Questions', 'html-interview-questions', 'html-interview-questions-2019-04-25-5cc1d36970411.jpg', '<h3 class=\"h3\">1) What is HTML?</h3>\r\n<p>HTML stands for Hyper Text Markup Language. It is a language of World Wide Web. It is a standard text formatting language which is used to create and display pages on the Web. It makes the text more interactive and dynamic. It can turn text into images, tables, links.<a href=\"https://www.javatpoint.com/what-is-html\" target=\"_blank\"> More details.</a></p>\r\n<hr />\r\n<h3 class=\"h3\">2) What are Tags?</h3>\r\n<p>HTML tags are composed of three things: an opening tag, content and ending tag. Some tags are unclosed tags.</p>\r\n<p>HTML documents contain two things:</p>\r\n<ul class=\"points\">\r\n<li>content, and</li>\r\n<li>tags</li>\r\n</ul>\r\n<p>When a web browser reads an HTML document, the browser reads it from top to bottom and left to right. HTML tags are used to create HTML documents and render their properties. Each HTML tags have different properties.</p>\r\n<h4 class=\"h4\">Syntax</h4>\r\n<div class=\"codeblock\">\r\n<div class=\"dp-highlighter\">\r\n<div class=\"bar\">&nbsp;</div>\r\n<ol class=\"dp-xml\" start=\"1\">\r\n<li class=\"alt\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">tag</span><span class=\"tag\">&gt;</span>&nbsp;content&nbsp;<span class=\"tag\">&lt;/</span><span class=\"tag-name\">tag</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;</li>\r\n</ol>\r\n</div>\r\n</div>\r\n<p>Content is placed between tags to display data on the web page.</p>\r\n<p><a href=\"https://www.javatpoint.com/html-tags\" target=\"_blank\">More details.</a></p>\r\n<hr />\r\n<h3 class=\"h3\">3) Do all HTML tags have an end tag?</h3>\r\n<p>No. There are some HTML tags that don\'t need a closing tag. For example: &lt;image&gt; tag, &lt;br&gt; tag. <a href=\"https://www.javatpoint.com/html-tags\" target=\"_blank\">More details.</a></p>\r\n<hr />\r\n<h3 class=\"h3\">4) What is formatting in HTML?</h3>\r\n<p>The HTML formatting is a process of format the text for a better look and feel. It uses different tags to make text bold, italicized, underlined. <a href=\"https://www.javatpoint.com/html-formatting\" target=\"_blank\">More details.</a></p>\r\n<hr />\r\n<h3 class=\"h3\">5) How many types of heading does an HTML contain?</h3>\r\n<p>The HTML contains six types of headings which are defined with the &lt;h1&gt; to &lt;h6&gt; tags. Each type of heading tag displays different text size from another. So, &lt;h1&gt; is the largest heading tag and &lt;h6&gt; is the smallest one. For example:</p>\r\n<div class=\"codeblock\">\r\n<div class=\"dp-highlighter\">\r\n<div class=\"bar\">&nbsp;</div>\r\n<ol class=\"dp-xml\" start=\"1\">\r\n<li class=\"alt\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h1</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;1<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h1</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n<li class=\"\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h2</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;2<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h2</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n<li class=\"alt\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h3</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;3<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h3</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n<li class=\"\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h4</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;4<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h4</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n<li class=\"alt\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h5</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;5<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h5</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n<li class=\"\"><span class=\"tag\">&lt;</span><span class=\"tag-name\">h6</span><span class=\"tag\">&gt;</span>Heading&nbsp;no.&nbsp;6<span class=\"tag\">&lt;/</span><span class=\"tag-name\">h6</span><span class=\"tag\">&gt;</span>&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n</ol>\r\n</div>\r\n</div>\r\n<p><a href=\"https://www.javatpoint.com/html-heading\" target=\"_blank\">More details.</a></p>\r\n<hr />\r\n<h3 class=\"h3\">6) How to create a hyperlink in HTML?</h3>\r\n<p>The HTML provides an anchor tag to create a hyperlink that links one page to another page. These tags can appear in any of the following ways:</p>\r\n<ul class=\"points\">\r\n<li>Unvisited link - It is displayed, underlined and blue.</li>\r\n<li>Visited link - It is displayed, underlined and purple.</li>\r\n<li>Active link - It is displayed, underlined and red.</li>\r\n</ul>', 1, 1, 1, '2019-04-25 09:34:01', '2019-04-25 09:45:00'),
(5, 1, 'Why use CSS?', 'why-use-css', 'why-use-css-2019-04-25-5cc1d3f5f0304.jpg', '<h1>Why use CSS?</h1>\r\n<h2 id=\"Summary\">Summary</h2>\r\n<p>This tutorial looks at why we should use CSS, and why using CSS for styling our documents is better than using presentational HTML.</p>\r\n<h2 id=\"Information:-Why-use-CSS?\">Information: Why use CSS?</h2>\r\n<p>CSS helps you to keep the informational content of a document separate from the details of how to display it. The details of how to display the document are known as its <em>style</em>. You keep the style separate from the content so that you can:</p>\r\n<ul>\r\n<li>Avoid duplication</li>\r\n<li>Make maintenance easier</li>\r\n<li>Use the same content with different styles for different purposes</li>\r\n</ul>\r\n<p>Your web site might have thousands of pages that look similar. Using CSS, you store the style information in common files that all the pages share. When a user displays a web page, the user&rsquo;s browser loads the style information along with the content of the page. When a user prints a web page, you might provide different style information that makes the printed page easy to read.</p>\r\n<p>In general, you use HTML to describe the content of the document, not its style; you use CSS to specify its style, not its content. There are exceptions to this rule, of course, and HTML also provides some ways to specify style. For example, in HTML you can use a <code>&lt;b&gt;</code> tag to make text bold, and you can specify the background colour of a page in its <code>&lt;body&gt;</code> tag. When you use CSS, you normally avoid using these HTML style features so that all your document&rsquo;s style information is in one place.</p>\r\n<h2 id=\"Action:-Creating-a-style-sheet-for-an-HTML-document\">Action: Creating a style sheet for an HTML document</h2>\r\n<h3 id=\"Creating-the-style-sheet\">Creating the style sheet</h3>\r\n<ol>\r\n<li>\r\n<p>Create a text file; this file will be your style sheet. Name it <code>style1.css</code></p>\r\n</li>\r\n<li>\r\n<p>In your CSS file, copy and paste this one line, then save the file:</p>\r\n<pre><code class=\"css\"><span class=\"hljs-tag\">strong</span> <span class=\"hljs-rules\">{ <span class=\"hljs-rule\"><span class=\"hljs-attribute\">color</span>:<span class=\"hljs-value\"> red</span></span>; }</span>\r\n</code></pre>\r\n</li>\r\n</ol>\r\n<h3 id=\"Linking-your-document-to-your-stylesheet\">Linking your document to your stylesheet</h3>\r\n<ol>\r\n<li>\r\n<p>Create another text file; this file will be your HTML document. Name it whatever you like.</p>\r\n</li>\r\n<li>\r\n<p>In your HTML file, copy and paste the following lines; the <code>&lt;link...&gt;</code> line references your style sheet:</p>\r\n<pre><code class=\"html\"><span class=\"hljs-doctype\">&lt;!DOCTYPE html&gt;</span>\r\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">html</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">head</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">meta</span> <span class=\"hljs-attribute\">charset</span>=<span class=\"hljs-value\">\"UTF-8\"</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">title</span>&gt;</span>Sample document<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">title</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">link</span> <span class=\"hljs-attribute\">rel</span>=<span class=\"hljs-value\">\"stylesheet\"</span> <span class=\"hljs-attribute\">href</span>=<span class=\"hljs-value\">\"style1.css\"</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">head</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">body</span>&gt;</span>\r\n     <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">p</span>&gt;</span>\r\n       <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">strong</span>&gt;</span>C<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">strong</span>&gt;</span>ascading\r\n       <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">strong</span>&gt;</span>S<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">strong</span>&gt;</span>tyle\r\n       <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">strong</span>&gt;</span>S<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">strong</span>&gt;</span>heets\r\n     <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">p</span>&gt;</span>\r\n   <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">body</span>&gt;</span>\r\n <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">html</span>&gt;</span>\r\n</code></pre>\r\n</li>\r\n<li>\r\n<p>Save the file and load it in a browser. The style sheet makes the letters inside the <code>&lt;strong&gt;</code> tags display in red, like this:</p>\r\n<p><strong>C</strong>ascading <strong>S</strong>tyle <strong>S</strong>heets</p>\r\n</li>\r\n</ol>\r\n<h2 id=\"What-next?\">What next?</h2>\r\n<p>Now you have a sample document linked to a separate style sheet, you are ready to learn more about how your browser combines them when it displays the document. See the other tutorials in this section for more information.</p>', 0, 1, 1, '2019-04-25 09:36:22', '2019-04-25 09:36:22'),
(6, 1, '9 Magic Methods in PHP', '9-magic-methods-in-php', '9-magic-methods-in-php-2019-04-25-5cc1d4d05ff58.png', '<p>The title is a bit of a red herring as PHP has more than 9 magic methods, but these will get you off to a good start using PHP\'s <a href=\"http://php.net/manual/en/language.oop5.magic.php\" rel=\"nofollow\">magic methods</a>. It might be magic, but no wands are required!</p>\r\n<p>&nbsp;</p>\r\n<p>The \"magic\" methods are ones with special names, starting with two underscores, which denote methods which will be triggered in response to particular PHP events. That might sound slightly automagical but actually it\'s pretty straightforward, we already saw an example of this in the <a title=\"A Little More OOP in PHP\" href=\"http://www.lornajane.net/posts/2012/a-little-more-oop-in-php\" rel=\"nofollow\">last post</a>, where we used a constructor - so we\'ll use this as our first example.</p>\r\n<h3>__construct</h3>\r\n<p>The constructor is a magic method that gets called when the object is instantiated. It is usually the first thing in the class declaration but it does not need to be, it a method like any other and can be declared anywhere in the class. Constructors also inherit like any other method. So if we consider our previous inheritance example from the Introduction to OOP, we could add a constructor to the Animal class like this:</p>\r\n<pre class=\"brush:php\">class Animal{\r\n \r\n  public function __construct() {\r\n    $this-&gt;created = time();\r\n    $this-&gt;logfile_handle = fopen(\'/tmp/log.txt\', \'w\');\r\n  }\r\n \r\n}</pre>\r\n<p>Now we can create a class which inherits from the Animal class - a Penguin! Without adding anything into the Penguin class, we can declare it and have it inherit from Animal, like this:</p>\r\n<pre class=\"brush:php\">class Penguin extends Animal {\r\n \r\n}\r\n \r\n$tux = new Penguin;\r\necho $tux-&gt;created;</pre>\r\n<p>If we define a <code>__construct</code> method in the Penguin class, then Penguin objects will run that instead when they are instantiated. Since there isn\'t one, PHP looks to the parent class definition for information and uses that. So we can override, or not, in our new class - very handy.</p>\r\n<h3>__destruct</h3>\r\n<p>Did you spot the file handle that was also part of the constructor? We don\'t really want to leave things like that lying around when we finish using an object and so the <code>__destruct</code> method does the opposite of the constructor. It gets run when the object is destroyed, either expressly by us or when we\'re not using it any more and PHP cleans it up for us. For the Animal, our <code>__destruct</code> method might look something like this:</p>\r\n<pre class=\"brush:php\">class Animal{\r\n \r\n  public function __construct() {\r\n    $this-&gt;created = time();\r\n    $this-&gt;logfile_handle = fopen(\'/tmp/log.txt\', \'w\');\r\n  }\r\n \r\n  public function __destruct() {\r\n    fclose($this-&gt;logfile_handle);\r\n  }\r\n}</pre>\r\n<p>The destructor lets us close up any external resources that were being used by the object. In PHP since we have such short running scripts (and look out for greatly improved garbage collection in newer versions), often issues such as memory leaks aren\'t a problem. However it\'s good practice to clean up and will give you a more efficient application overall!</p>\r\n<h3>__get</h3>\r\n<p>This next magic method is a very neat little trick to use - it makes properties which actually don\'t exist appear as if they do. Let\'s take our little penguin:</p>\r\n<pre class=\"brush:php\">class Penguin extends Animal {\r\n \r\n  public function __construct($id) {\r\n    $this-&gt;getPenguinFromDb($id);\r\n  }\r\n \r\n  public function getPenguinFromDb($id) {\r\n    // elegant and robust database code goes here\r\n  }\r\n}</pre>\r\n<p>Now if our penguin has the properties \"name\" and \"age\" after it is loaded, we\'d be able to do:</p>\r\n<pre class=\"brush:php\">$tux = new Penguin(3);\r\necho $tux-&gt;name . \" is \" . $tux-&gt;age . \" years old\\n\";</pre>\r\n<p>However imagine something changed about the backend database or information provider, so instead of \"name\", the property was called \"username\". And imagine this is a complex application which refers to the \"name\" property in too many places for us to change. We can use the <code>__get</code> method to pretend that the \"name\" property still exists:</p>\r\n<pre class=\"brush:php\">class Penguin extends Animal {\r\n \r\n  public function __construct($id) {\r\n    $this-&gt;getPenguinFromDb($id);\r\n  }\r\n \r\n  public function getPenguinFromDb($id) {\r\n    // elegant and robust database code goes here\r\n  }\r\n \r\n  public function __get($field) {\r\n    if($field == \'name\') {\r\n      return $this-&gt;username;\r\n    }\r\n}</pre>\r\n<p>This technique isn\'t really a good way to write whole systems, because it makes code hard to debug, but it is a very valuable tool. It can also be used to only load properties on demand or show calculated fields as properties, and a hundred other applications that I haven\'t even thought of!</p>\r\n<h3>__set</h3>\r\n<p>So we updated all the calls to <code>$this-&gt;name</code> to return <code>$this-&gt;username</code> but what about when we want to set that value, perhaps we have an account screen where users can change their name? Help is at hand in the form of the <code>__set </code>method, and easiest to illustrate with an example.</p>\r\n<pre class=\"brush:php\">class Penguin extends Animal {\r\n \r\n  public function __construct($id) {\r\n    $this-&gt;getPenguinFromDb($id);\r\n  }\r\n \r\n  public function getPenguinFromDb($id) {\r\n    // elegant and robust database code goes here\r\n  }\r\n \r\n  public function __get($field) {\r\n    if($field == \'name\') {\r\n      return $this-&gt;username;\r\n    }\r\n  }\r\n \r\n  public function __set($field, $value) {\r\n    if($field == \'name\') {\r\n      $this-&gt;username = $value;\r\n    }\r\n  }\r\n}</pre>\r\n<p>In this way we can falsify properties of objects, for any one of a number of uses. As I said, not a way to build a whole system, but a very useful trick to know.</p>\r\n<h3>__call</h3>\r\n<p>There are actually two methods which are similar enough that they don\'t get their own title in this post! The first is the <code>__call</code> method, which gets called, if defined, when an undefined method is called on this object. The second is <code>__callStatic</code> which behaves in exactly the same way but responds to undefined static method calls instead (this was added in PHP 5.3). Probably the most common thing I use <code>__call</code> for is polite error handling, and this is especially useful in library code where other people might need to be integrating with your methods. So for example if a script had a Penguin object called $penguin and it contained <code>$penguin-&gt;speak()</code> ... the <code>speak()</code> method isn\'t defined so under normal circumstances we\'d see:</p>\r\n<blockquote>\r\n<p><code><br /> PHP Fatal error: Call to undefined method Penguin::speak() in ...<br /> </code></p>\r\n</blockquote>\r\n<p>What we can do is add something to cope more nicely with this kind of failure than the PHP fatal error you see here, by declaring a method <code>__call</code>. For example:</p>\r\n<pre class=\"brush:php\">class Animal {\r\n}\r\nclass Penguin extends Animal {\r\n \r\n  public function __construct($id) {\r\n    $this-&gt;getPenguinFromDb($id);\r\n  }\r\n \r\n  public function getPenguinFromDb($id) {\r\n    // elegant and robust database code goes here\r\n  }\r\n \r\n  public function __get($field) {\r\n    if($field == \'name\') {\r\n      return $this-&gt;username;\r\n    }\r\n  }\r\n \r\n  public function __set($field, $value) {\r\n    if($field == \'name\') {\r\n      $this-&gt;username = $value;\r\n    }\r\n  }\r\n \r\n  public function __call($method, $args) {\r\n      echo \"unknown method \" . $method;\r\n      return false;\r\n  }\r\n}</pre>\r\n<p>This will catch the error and echo it. In a practical application it might be more appropriate to log a message, redirect a user, or throw an exception, depending on what you are working on - but the concept is the same. Any misdirected method calls can be handled here however you need to, you can detect the name of the method and respond differently accordingly - for example you could handle method renaming in a similar way to how we handled the property renaming above.</p>\r\n<h3>__sleep</h3>\r\n<p>The <code>__sleep()</code> method is called when the object is serialised, and allows you to control what gets serialised. There are all sorts of applications for this, a good example is if an object contains some kind of pointer, for example a file handle or a reference to another object. When the object is serialised and then unserialised then these types of references are useless since the target may no longer be present or valid. Therefore it is better to unset these before you store them.</p>\r\n<h3>__wakeup</h3>\r\n<p>This is the opposite of the <code>__sleep()</code> method and allows you to alter the behaviour of the unserialisation of the object. Used in tandem with <code>__sleep()</code>, this can be used to reinstate handles and object references which were removed when the object was serialised. A good example application could be a database handle which gets unset when the item is serialised, and then reinstated by referring to the current configuration settings when the item is unserialised.</p>\r\n<h3>__clone</h3>\r\n<p>We looked at an example of using the <code>clone</code> keyword in the <a title=\"A Little More OOP in PHP\" href=\"http://www.lornajane.net/posts/2012/a-little-more-oop-in-php\" rel=\"nofollow\">second part</a> of my introduction to OOP in PHP, to make a copy of an object rather than have two variables pointing to the same actual data. By overriding this method in a class, we can affect what happens when the clone keyword is used on this object. While this isn\'t something we come across every day, a nice use case is to create a true singleton by adding a private access modifier to the method.</p>\r\n<h3>__toString</h3>\r\n<p>Definitely saving the best until last, the <code>__toString</code> method is a very handy addition to our toolkit. This method can be declared to override the behaviour of an object which is output as a string, for example when it is echoed. For example if you wanted to just be able to echo an object in a template, you can use this method to control what that output would look like. Let\'s look at our Penguin again:</p>\r\n<pre class=\"brush:php\">class Penguin {\r\n \r\n  public function __construct($name) {\r\n      $this-&gt;species = \'Penguin\';\r\n      $this-&gt;name = $name;\r\n  }\r\n \r\n  public function __toString() {\r\n      return $this-&gt;name . \" (\" . $this-&gt;species . \")\\n\";\r\n  }\r\n}</pre>\r\n<p>With this in place, we can literally output the object by calling echo on it, like this:</p>\r\n<pre class=\"brush:php\">$tux = new Penguin(\'tux\');\r\necho $tux;</pre>\r\n<p>I don\'t use this shortcut often but it\'s useful to know that it is there.</p>', 2, 1, 1, '2019-04-25 09:40:00', '2019-04-25 09:45:42'),
(7, 1, 'Laravel vs Codeigniter', 'laravel-vs-codeigniter', 'laravel-vs-codeigniter-2019-04-25-5cc1d535dc91a.png', '<h2>Difference between Laravel vs Codeigniter</h2>\r\n<p>It is a PHP framework used in <a href=\"https://www.educba.com/how-to-build-web-applications-using-mongodb/\">web applications development</a>, it is open source framework .it improves the <a href=\"https://www.educba.com/web-development-interview-questions/\">speed of web development</a> by its powerful functionality and features. It has rich set libraries. Web application developed with help of CodeIgniter are very secure. It prevents website form the hacker&rsquo;s attacks.</p>\r\n<p>Laravel is a <a href=\"https://www.educba.com/php-oop-interview-questions/\">PHP framework</a>. It is an open source framework used in web application development. This framework is based on model view controller design pattern due to this project developed with help of this framework are more structured and manageable. This framework reuses the existing functionality of the core framework along with its own features. This framework has all basics features earlier frameworks. Web application developed with help of this framework is more secure, it prevents the websites from hacker&rsquo;s attacks.</p>\r\n<p>Features of CodeIgniter are given below</p>\r\n<ul>\r\n<li>Extremely Light Weight</li>\r\n<li>Model-View-Controller Based System</li>\r\n<li>Query Builder Database Support</li>\r\n<li>Security and XSS Filtering</li>\r\n<li>Form and Data Validation</li>\r\n<li>Session Management</li>\r\n<li>Libraries for image manipulations resizing, cropping, rotating, etc. Supports GD, NetPBM and Image Magick.</li>\r\n<li>Provides classes for email sending, gives supports for the Attachments, HTML/Text emails, multiple protocols like SMTP, POP and more.</li>\r\n<li>FTP Class</li>\r\n<li>File Uploading Class</li>\r\n<li>Localization</li>\r\n<li>Pagination</li>\r\n<li>Data Encryption</li>\r\n<li>Benchmarking</li>\r\n<li>Error Logging</li>\r\n<li>Full Page Caching</li>\r\n<li>Application Profiling</li>\r\n<li>User Agent Class</li>\r\n<li>Calendaring Class</li>\r\n<li>Zip Encoding Class</li>\r\n<li>Template Engine Class</li>\r\n<li>Trackback Class</li>\r\n<li>Large library of &ldquo;helper&rdquo; functions</li>\r\n<li>XML-RPC Library</li>\r\n<li>Unit Testing Class</li>\r\n<li>Provides supports for various class extension and hooks</li>\r\n<li>Search-engine Friendly URLs</li>\r\n<li>Flexible URI Routing</li>\r\n</ul>\r\n<p><strong>Features of Laravel Framework</strong></p>\r\n<p><strong>Modularity</strong></p>\r\n<p>It provides many built-in modules and libraries which help in enhancement of the web applications. All modules are integrated with Composer dependency manager which results in easy updates.</p>\r\n<p><strong>Routing</strong></p>\r\n<p>It gives a flexible approach to the Web developer to define various routes in the web application. Routing is helpful to scale up the web application in the best way and increases its performance of applications also.</p>\r\n<p><strong>Testability</strong></p>\r\n<p>Laravel gives various features and helpers which help to the <a href=\"https://www.educba.com/careers-in-software-testing/\">Software Testers</a> through various test cases. This feature helps in maintaining the code as per the user&rsquo;s requirements.</p>\r\n<p><strong>Query Builder and ORM</strong></p>\r\n<p>It provides a powerful query builder which helps in querying large databases using various simple chains of methods. It gives&nbsp;ORM&nbsp;(Object Relational Mapper) and&nbsp;ActiveRecord&nbsp;implementation called Eloquent.</p>\r\n<div class=\"code-block code-block-17\" style=\"margin: 8px 0; clear: both;\">\r\n<div class=\"five-sixths box-div\">\r\n<div style=\"font-size: 0.8em;\">Popular Course in this category</div>\r\n<div class=\"one-sixth first banr-image\" style=\"text-align: center; margin-top: 20px;\">&nbsp;</div>\r\n<div class=\"three-sixths\" style=\"margin-top: 15px;\"><span class=\"course-title\" style=\"line-height: 25px;\">Java Course</span> <span style=\"font-weight: 400; font-size: 0.8em;\">50 Online Courses | 240+ Hours | Verifiable Certificate of Completion | Lifetime Access <br /> 4.8 (1,039 ratings)</span></div>\r\n<div class=\"two-sixths price-box\"><span style=\"font-size: 1em;\">Course Price</span> <br /><span class=\"blg-price\" style=\"font-size: 1.5em;\">$199</span> <span class=\"blg-str-price\"><span style=\"text-decoration: line-through;\">$499</span></span> <br /><a style=\"text-decoration: none;\" href=\"https://www.educba.com/software-development/courses/java-course/?btnz=edu-blg-inline-banner1\" target=\"_blank\"><span class=\"box-btn\">View Course</span></a></div>\r\n<hr style=\"margin: 0 0 0.5em; padding: 0.5em 0 0;\" />\r\n<div class=\"rel-cour\">Related Courses</div>\r\n<span class=\"othr-cour\"><a style=\"text-decoration: none;\" href=\"https://www.educba.com/software-development/courses/python-certification-course/?btnz=edu-blg-inline-banner1\">Python Certification Course</a></span><span class=\"othr-cour\"><a style=\"text-decoration: none;\" href=\"https://www.educba.com/software-development/courses/html-course/?btnz=edu-blg-inline-banner1\">HTML Course</a></span></div>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n</div>\r\n<p><strong>Configuration Management Features </strong></p>\r\n<p>Websites designed with help of Laravel are running on different environments with a different configuration, which means that there is a constant change in its configurations. It gives a consistent and powerful approach to maintain the configuration in an efficient way.</p>\r\n<p><strong>Template Engine</strong></p>\r\n<p>Blade Template&nbsp;engine used by Laravel, which is lightweight template language used to design hierarchical layouts and blocks with predefined different types of blocks that include dynamic content.</p>\r\n<p><strong>Schema Builder</strong></p>\r\n<p>Laravel maintains the variety of the database definitions and schemas in PHP code. It also provides support to track of all changes with respect to database migrations.</p>\r\n<p><strong>Authentication</strong></p>\r\n<p>User authentication is a common feature in all the websites. Laravel provides designing authentication as it has features such as&nbsp;register, send password reminders and forgot password.</p>', 0, 1, 1, '2019-04-25 09:41:42', '2019-04-25 09:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-23 11:46:05', '2019-04-23 11:46:05'),
(2, 2, 1, '2019-04-25 08:14:25', '2019-04-25 08:14:25'),
(3, 3, 1, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(4, 3, 3, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(5, 3, 5, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(6, 3, 6, '2019-04-25 09:31:09', '2019-04-25 09:31:09'),
(7, 4, 2, '2019-04-25 09:34:08', '2019-04-25 09:34:08'),
(8, 4, 4, '2019-04-25 09:34:08', '2019-04-25 09:34:08'),
(9, 4, 7, '2019-04-25 09:34:08', '2019-04-25 09:34:08'),
(10, 5, 2, '2019-04-25 09:36:23', '2019-04-25 09:36:23'),
(11, 5, 4, '2019-04-25 09:36:23', '2019-04-25 09:36:23'),
(12, 5, 7, '2019-04-25 09:36:23', '2019-04-25 09:36:23'),
(13, 6, 3, '2019-04-25 09:40:01', '2019-04-25 09:40:01'),
(14, 7, 1, '2019-04-25 09:41:56', '2019-04-25 09:41:56'),
(15, 7, 3, '2019-04-25 09:41:56', '2019-04-25 09:41:56'),
(16, 7, 5, '2019-04-25 09:41:56', '2019-04-25 09:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2019-04-23 11:45:06', '2019-04-23 11:45:06'),
(2, 'frontend', 'frontend', '2019-04-25 09:24:28', '2019-04-25 09:24:28'),
(3, 'backend', 'backend', '2019-04-25 09:24:40', '2019-04-25 09:24:40'),
(4, 'web design', 'web-design', '2019-04-25 09:24:56', '2019-04-25 09:24:56'),
(5, 'web development', 'web-development', '2019-04-25 09:25:08', '2019-04-25 09:25:08'),
(6, 'cms', 'cms', '2019-04-25 09:25:17', '2019-04-25 09:25:17'),
(7, 'ui', 'ui', '2019-04-25 09:26:40', '2019-04-25 09:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'MD.Admin', 'admin', 'admin@blog.com', '$2y$10$x0u4fPGmWJ7AQH65ovZFduOFrEUoMW2/GW4iWAV0MeUf0dR3xHQhC', 'mdadmin-2019-04-23-5cbf612b06337.jpg', NULL, NULL, NULL, '2019-04-23 13:02:03'),
(2, 2, 'MD.Author', 'author', 'author@blog.com', '$2y$10$tGR1GvJdMpg3cBtXQIM2/uJulfP3dg8ETDWyn5q89QkRWewCmdy/6', 'default.png', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
