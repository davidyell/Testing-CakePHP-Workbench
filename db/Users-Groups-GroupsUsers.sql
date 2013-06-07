CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Recombu', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(2, 'Campaigns', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(3, 'Symfony2', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(4, 'Cake2', '2013-06-05 10:45:00', '2013-06-05 10:45:00');

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `users` (`id`, `username`, `email`, `created`, `modified`) VALUES
(1, 'Dave', 'dave@example.com', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(2, 'Stu', 'stu@example.com', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(3, 'Adam', 'adam@example.com', '2013-06-05 10:45:00', '2013-06-05 10:45:00'),
(4, 'Owen', 'owen@example.com', '2013-06-05 10:45:00', '2013-06-05 10:45:00');

CREATE TABLE IF NOT EXISTS `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(2, 1),
(4, 1),
(1, 2),
(3, 2),
(1, 3),
(3, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4);