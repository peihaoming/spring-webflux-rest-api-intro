CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coursename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coursename` (`coursename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `coursework` (
                            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                            `student_id` int(10) unsigned NOT NULL,
                            `course_id` int(10) unsigned NOT NULL,
                            `marks` int(11) NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `student_id` (`student_id`),
                            KEY `course_id` (`course_id`)
) ENGINE=InnoDB ;

CREATE TABLE `students` (
                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                          `name` varchar(100) NOT NULL,
                          `registered_on` bigint(20) NOT NULL,
                          `status` int(11) NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

insert  into `students`(`id`,`name`,`registered_on`,`status`) values
                                                                (1,'George Gatheca Updated',1234,1),
                                                                (2,'Jonh Doe',5678,1);