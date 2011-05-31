<?php

class GroupEventFixture extends CakeTestFixture {
  var $name = 'GroupEvent';

  var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'group_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
		'event_id' => array('type' => 'integer', 'null' => false, 'default' => '0', 'key' => 'index'),
		'grade' => array('type' => 'float', 'null' => true, 'default' => NULL, 'length' => '12,2'),
		'grade_release_status' => array('type' => 'string', 'null' => false, 'default' => 'None', 'length' => 20, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'comment_release_status' => array('type' => 'string', 'null' => false, 'default' => 'None', 'length' => 20, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'record_status' => array('type' => 'string', 'null' => false, 'default' => 'A', 'length' => 1, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'creator_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => '0000-00-00 00:00:00'),
		'updater_id' => array('type' => 'integer', 'null' => true, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1), 'group_id' => array('column' => array('event_id', 'group_id'), 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);
}
