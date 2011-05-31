<?php

class EventFixture extends CakeTestFixture {
  var $name = 'Event';

  var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'title' => array('type' => 'string', 'null' => false, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'course_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
		'description' => array('type' => 'text', 'null' => true, 'default' => NULL, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'event_template_type_id' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 20),
		'template_id' => array('type' => 'integer', 'null' => false, 'default' => '2'),
		'self_eval' => array('type' => 'string', 'null' => false, 'length' => 11, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'com_req' => array('type' => 'integer', 'null' => false, 'default' => '0'),
		'due_date' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'release_date_begin' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'release_date_end' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'record_status' => array('type' => 'string', 'null' => false, 'default' => 'A', 'length' => 1, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'creator_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => '0000-00-00 00:00:00'),
		'updater_id' => array('type' => 'integer', 'null' => true, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);
}
