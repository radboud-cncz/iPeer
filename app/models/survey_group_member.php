<?php
/* SVN FILE: $Id$ */

/**
 * Enter description here ....
 *
 * @filesource
 * @copyright    Copyright (c) 2006, .
 * @link
 * @package
 * @subpackage
 * @since
 * @version      $Revision$
 * @modifiedby   $LastChangedBy$
 * @lastmodified $Date: 2006/06/20 18:44:19 $
 * @license      http://www.opensource.org/licenses/mit-license.php The MIT License
 */

/**
 * Survey
 *
 * Enter description here...
 *
 * @package
 * @subpackage
 * @since
 */
class SurveyGroupMember extends AppModel
{
    var $name = 'SurveyGroupMember';

    function getIdsByGroupSetId($groupSetId=null) {
      //return $this->find('all','group_set_id='.$groupSetId,'id');
        return $this->find('all', array(
            'conditions' => array('group_set_id' => $groupSetId),
            'fields' => array('SurveyGroupMember.id')
        ));
    }
}

?>
