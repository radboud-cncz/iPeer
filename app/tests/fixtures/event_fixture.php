<?php
/**
 * EventFixture
 *
 * @uses CakeTestFixture
 * @package   CTLT.iPeer
 * @author    Pan Luo <pan.luo@ubc.ca>
 * @copyright 2012 All rights reserved.
 * @license   MIT {@link http://www.opensource.org/licenses/MIT}
 */
class EventFixture extends CakeTestFixture
{
    public $name = 'Event';

    public $fields = array(
        'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
        'title' => array('type' => 'string', 'null' => false, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'course_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'event_template_type_id' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 20),
        'template_id' => array('type' => 'integer', 'null' => false, 'default' => '2'),
        'self_eval' => array('type' => 'string', 'null' => false, 'length' => 11, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'com_req' => array('type' => 'integer', 'null' => false, 'default' => '0'),
        'due_date' => array('type' => 'datetime', 'null' => true, 'default' => null),
        'release_date_begin' => array('type' => 'datetime', 'null' => true, 'default' => null),
        'release_date_end' => array('type' => 'datetime', 'null' => true, 'default' => null),
        'record_status' => array('type' => 'string', 'null' => false, 'default' => 'A', 'length' => 1, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'creator_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
        'created' => array('type' => 'datetime', 'null' => false, 'default' => '0000-00-00 00:00:00'),
        'updater_id' => array('type' => 'integer', 'null' => true, 'default' => null),
        'modified' => array('type' => 'datetime', 'null' => true, 'default' => null),
    );

    public $records = array(
        array('id' => 1, 'title' => 'Event1', 'course_id' => 1, 'event_template_type_id' => 2, 'due_date' => '2011-06-10 00:00:00' ),
        array('id' => 2, 'title' => 'Event2', 'course_id' => 1, 'event_template_type_id' => 1, 'due_date' => '2022-06-10 00:00:00'),
        array('id' => 3, 'title' => 'Event3', 'course_id' => 2, 'event_template_type_id' => 1),
        array('id' => 4, 'title' => 'Event4', 'course_id' => 2, 'event_template_type_id' => 3, 'template_id' =>2),
        array('id' => 5, 'title' => 'Event5', 'course_id' => 3, 'event_template_type_id' => 3, 'record_status'=>'A', 'template_id' =>3),
        array('id' => 6, 'title' => 'Event6', 'course_id' => 3, 'event_template_type_id' => 3, 'record_status'=>'I'),
        array('id' => 7, 'title' => 'Event7', 'course_id' => 3, 'event_template_type_id' => 4, 'record_status'=>'I'),
    );

}


