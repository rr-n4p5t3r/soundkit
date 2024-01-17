-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 02:07 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `app1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

DROP TABLE IF EXISTS `bank_transfers`;
CREATE TABLE `bank_transfers` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `typeid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

DROP TABLE IF EXISTS `blocked_users`;
CREATE TABLE `blocked_users` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `blocked` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `tags` text COLLATE utf8_unicode_ci,
  `category` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `trackid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playlistid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  `message` text NOT NULL,
  `track_at` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_lyrics`
--

DROP TABLE IF EXISTS `custom_lyrics`;
CREATE TABLE `custom_lyrics` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `width` varchar(255) NOT NULL,
  `left_x` varchar(255) NOT NULL,
  `start_percent` varchar(255) NOT NULL,
  `end_percent` varchar(255) NOT NULL,
  `start_duration` varchar(255) NOT NULL,
  `end_duration` varchar(255) NOT NULL,
  `text_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `track` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `fid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `follow_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uses` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `uses`) VALUES
(1, 'Classical', 0),
(2, 'Comedy', 0),
(3, 'Hip-hop', 0),
(4, 'Jazz', 0),
(5, 'Pop', 0),
(6, 'Reggae', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_pages`
--

DROP TABLE IF EXISTS `info_pages`;
CREATE TABLE `info_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `likeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listen_history`
--

DROP TABLE IF EXISTS `listen_history`;
CREATE TABLE `listen_history` (
  `listener` int(11) NOT NULL,
  `trackid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listen_later`
--

DROP TABLE IF EXISTS `listen_later`;
CREATE TABLE `listen_later` (
  `listener` int(11) NOT NULL,
  `trackid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_keys`
--

DROP TABLE IF EXISTS `mobile_keys`;
CREATE TABLE `mobile_keys` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `apikey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `from_userid` int(11) NOT NULL,
  `to_userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `typeid` varchar(255) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `art` varchar(255) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '1',
  `playlist_type` int(11) NOT NULL DEFAULT '1',
  `release_date` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playlistentries`
--

DROP TABLE IF EXISTS `playlistentries`;
CREATE TABLE `playlistentries` (
  `id` int(11) NOT NULL,
  `track` int(11) NOT NULL,
  `playlist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
CREATE TABLE `plugins` (
  `id` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

DROP TABLE IF EXISTS `purchased`;
CREATE TABLE `purchased` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  `videoid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `radios`
--

DROP TABLE IF EXISTS `radios`;
CREATE TABLE `radios` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `link` text,
  `link_type` varchar(255) NOT NULL,
  `art` varchar(255) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `tags` text,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `radio_listeners`
--

DROP TABLE IF EXISTS `radio_listeners`;
CREATE TABLE `radio_listeners` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `userip` varchar(255) DEFAULT NULL,
  `radio_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `typeid` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `settings_key` varchar(255) NOT NULL,
  `settings_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spotlight`
--

DROP TABLE IF EXISTS `spotlight`;
CREATE TABLE `spotlight` (
  `id` int(11) NOT NULL,
  `trackid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playlistid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_global` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

DROP TABLE IF EXISTS `stream`;
CREATE TABLE `stream` (
  `streamid` int(11) NOT NULL,
  `poster` int(11) NOT NULL,
  `trackid` varchar(255) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `playlist_id` varchar(255) DEFAULT NULL,
  `streamtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `uses` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_files`
--

DROP TABLE IF EXISTS `tmp_files`;
CREATE TABLE `tmp_files` (
  `id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `tag` text NOT NULL,
  `genre` int(11) NOT NULL,
  `art` text,
  `buy` varchar(255) DEFAULT NULL,
  `record` text,
  `track_release` text,
  `license` text,
  `size` varchar(255) DEFAULT NULL,
  `track_file` varchar(255) DEFAULT NULL,
  `featuring` text,
  `lyrics` varchar(255) DEFAULT NULL,
  `demo_file` varchar(255) DEFAULT NULL,
  `demo_duration` varchar(255) DEFAULT NULL,
  `demo_wave` varchar(255) DEFAULT NULL,
  `demo_wave_colored` varchar(255) DEFAULT NULL,
  `price` float(11,2) DEFAULT NULL,
  `track_duration` varchar(100) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '1',
  `downloads` varchar(255) DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `wave` text,
  `wave_colored` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `release_date` varchar(100) DEFAULT NULL,
  `comments` int(11) NOT NULL DEFAULT '1',
  `stats` int(11) NOT NULL DEFAULT '1',
  `embed` int(11) NOT NULL DEFAULT '1',
  `approved` int(11) NOT NULL DEFAULT '1',
  `wav` varchar(255) DEFAULT NULL,
  `stems` varchar(255) DEFAULT NULL,
  `download_hash` varchar(255) DEFAULT NULL,
  `only_premium` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_credited` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `valid_time` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `bio` text,
  `avatar` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `country` varchar(200) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `youtube` varchar(150) DEFAULT NULL,
  `vimeo` varchar(150) DEFAULT NULL,
  `soundcloud` varchar(150) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `gender` varchar(100) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `notifyl` int(11) NOT NULL DEFAULT '1',
  `notifyc` int(11) NOT NULL DEFAULT '1',
  `notifym` int(11) NOT NULL DEFAULT '1',
  `notifyf` int(11) NOT NULL DEFAULT '1',
  `email_c` int(11) NOT NULL DEFAULT '1',
  `email_l` int(11) NOT NULL DEFAULT '1',
  `email_f` int(11) NOT NULL DEFAULT '1',
  `email_letter` int(11) NOT NULL DEFAULT '1',
  `privacy` text,
  `user_type` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) NOT NULL DEFAULT '0',
  `token` varchar(100) DEFAULT NULL,
  `has_tried` int(11) NOT NULL DEFAULT '0',
  `facebookid` varchar(255) DEFAULT NULL,
  `is_seller` int(11) NOT NULL DEFAULT '0',
  `balance` varchar(255) DEFAULT NULL,
  `wallet` int(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `funds` float(11,2) DEFAULT NULL,
  `payment_details` text,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `stripe_subscription_id` varchar(255) DEFAULT NULL,
  `verify_details` text,
  `two_factor_auth` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `bio`, `avatar`, `cover`, `role`, `country`, `city`, `website`, `facebook`, `twitter`, `youtube`, `vimeo`, `soundcloud`, `instagram`, `banned`, `active`, `gender`, `ip`, `notifyl`, `notifyc`, `notifym`, `notifyf`, `email_c`, `email_l`, `email_f`, `email_letter`, `privacy`, `user_type`, `featured`, `token`, `has_tried`, `facebookid`, `is_seller`, `balance`, `wallet`, `currency`, `funds`, `payment_details`, `stripe_customer_id`, `stripe_subscription_id`, `verify_details`, `two_factor_auth`, `phone_number`, `old_id`, `date_created`) VALUES
(1, 'adminuser', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', 'John doe', '', '', '', 2, 'albania', '', '', '', '', '', '', '', '', 0, 1, 'male', '', 1, 1, 1, 1, 1, 1, 1, 0, '', 2, 0, '', 1, '', 0, '', 46, '', 1000.00, '', '', '', NULL, '0', NULL, NULL, 0);
-- --------------------------------------------------------

--
-- Table structure for table `user_ads`
--

DROP TABLE IF EXISTS `user_ads`;
CREATE TABLE `user_ads` (
  `id` int(11) NOT NULL,
  `ad_slug` varchar(255) NOT NULL,
  `ad_link` text,
  `userid` int(11) NOT NULL,
  `ad_type` varchar(255) DEFAULT NULL,
  `track_id` int(255) DEFAULT NULL,
  `ad_image` varchar(255) DEFAULT NULL,
  `ad_title` varchar(255) DEFAULT NULL,
  `ad_desc` text,
  `ad_placement` int(11) DEFAULT '1',
  `pay_type` varchar(255) DEFAULT NULL,
  `target` text,
  `status` int(11) DEFAULT '1',
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
CREATE TABLE `user_logins` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `hash_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `upload_file` text COLLATE utf8_unicode_ci,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demo_file` text COLLATE utf8_unicode_ci,
  `video_link` text COLLATE utf8_unicode_ci,
  `video_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `track_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '1',
  `download_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `art` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `public` int(11) NOT NULL DEFAULT '1',
  `views` int(11) DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_plays`
--

DROP TABLE IF EXISTS `video_plays`;
CREATE TABLE `video_plays` (
  `userid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE `views` (
  `viewid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ip` varchar(11) DEFAULT NULL,
  `track` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `watch_later`
--

DROP TABLE IF EXISTS `watch_later`;
CREATE TABLE `watch_later` (
  `userid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_lyrics`
--
ALTER TABLE `custom_lyrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_pages`
--
ALTER TABLE `info_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeid`);

--
-- Indexes for table `mobile_keys`
--
ALTER TABLE `mobile_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistentries`
--
ALTER TABLE `playlistentries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radios`
--
ALTER TABLE `radios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio_listeners`
--
ALTER TABLE `radio_listeners`
  ADD PRIMARY KEY (`id`);



--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spotlight`
--
ALTER TABLE `spotlight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`streamid`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_files`
--
ALTER TABLE `tmp_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `user_ads`
--
ALTER TABLE `user_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`viewid`);

--
-- Indexes for table `watch_later`
--
ALTER TABLE `watch_later`
  ADD KEY `userid` (`userid`),
  ADD KEY `videoid` (`videoid`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_lyrics`
--
ALTER TABLE `custom_lyrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `info_pages`
--
ALTER TABLE `info_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_keys`
--
ALTER TABLE `mobile_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlistentries`
--
ALTER TABLE `playlistentries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchased`
--
ALTER TABLE `purchased`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radios`
--
ALTER TABLE `radios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radio_listeners`
--
ALTER TABLE `radio_listeners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spotlight`
--
ALTER TABLE `spotlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `streamid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmp_files`
--
ALTER TABLE `tmp_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_ads`
--
ALTER TABLE `user_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `viewid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
