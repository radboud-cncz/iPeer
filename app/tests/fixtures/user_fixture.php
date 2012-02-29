<?php
/**
 * UserFixture User Fixture
 *
 * @uses CakeTestFixture
 * @package   CTLT.iPeer
 * @author    Pan Luo <pan.luo@ubc.ca>
 * @copyright 2012 All rights reserved.
 * @license   MIT {@link http://www.opensource.org/licenses/MIT}
 */
class UserFixture extends CakeTestFixture
{
    public $name = 'User';

    public $fields = array(
        'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
        'username' => array('type' => 'string', 'null' => false, 'length' => 80, 'key' => 'unique', 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'password' => array('type' => 'string', 'null' => false, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'role' => array('type' => 'string', 'null' => false, 'default' => 'S', 'length' => 1, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'first_name' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'last_name' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'student_no' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 30, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'title' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'email' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'last_login' => array('type' => 'datetime', 'null' => true, 'default' => null),
        'last_logout' => array('type' => 'datetime', 'null' => true, 'default' => null),
        'last_accessed' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 10, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'record_status' => array('type' => 'string', 'null' => false, 'default' => 'A', 'length' => 1, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'creator_id' => array('type' => 'integer', 'null' => false, 'default' => '0'),
        'created' => array('type' => 'datetime', 'null' => false, 'default' => '0000-00-00 00:00:00'),
        'updater_id' => array('type' => 'integer', 'null' => true, 'default' => null),
        'modified' => array('type' => 'datetime', 'null' => true, 'default' => null),
    );

    public $records = array(
        array('id' => 1, 'username' => 'GSlade', 'role' => 'I', 'first_name' => 'steve', 'last_name' => 'slade'),
        array('id' => 2, 'username' => 'Peterson', 'role' => 'I', 'first_name' => 'sam', 'last_name' => 'peterson'),
        array('id' => 3, 'username' => 'StudentY', 'role' => 'S', 'password'=>'password1', 'student_no'=>123, 'email' => 'email1', 'first_name' => 'TestName', 'last_name' => 'TestLastname'),
        array('id' => 4, 'username' => 'StudentZ', 'role' => 'S', 'password'=>'password1', 'student_no'=>100, 'first_name' => 'name', 'last_name' => 'lastname'),
        array('id' => 5, 'username' => 'INSTRUCTOR1', 'role' => 'I', 'password'=>'password2', 'student_no'=>321),
        array('id' => 6, 'username' => 'INSTRUCTOR2', 'role' => 'I'),
        array('id' => 7, 'username' => 'INSTRUCTOR3', 'role' => 'I', 'student_no'=>0),
        array('id' => 8, 'username' => 'Admin', 'role' => 'A', 'password'=>'passwordA', 'student_no'=>111),
        array('id' => 9, 'username' => 'SuperAdmin', 'role' => 'SA', 'password'=>'passwordA', 'student_no'=>112),
        array('id' => 10, 'username' => 'kevin', 'password' => 'kevin', 'role' => 'S', 'record_status' => 'A', 'creator_id' => 8, 'created' => 0),
        array('id' => 11, 'username' => 'zion', 'password' => 'zion', 'role' => 'S', 'record_status' => 'A', 'creator_id' => 8, 'created' => 0),
    );
}