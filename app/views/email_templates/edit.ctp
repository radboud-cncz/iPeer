<div>
<?php
    echo $this->Form->create('Emailtemplate');
    echo empty($this->data['EmailTemplate']['id']) ?
        $form->hidden('EmailTemplate.user_id', array('value'=>$currentUser['id'])) :
        $form->hidden('EmailTemplate.id', array('value'=>$this->data['EmailTemplate']['id']));
    echo $this->Form->input('EmailTemplate.name');
    echo $this->Form->input('EmailTemplate.subject');
    echo $this->Form->input(
        'EmailTemplate.availability',array(
            'type' => 'radio',
            'options' => array(
                '0' => __('Private',true),
                '1' => __('Public',true).' <font size="2">(Share Template Among Instructors)</font>'
            )
        )
    );
    echo $this->Form->input('EmailTemplate.description');
    echo $this->Form->input(
        'Email.merge', array(
            'type' => 'select',
            'id' => 'merge',
            'name' => 'merge',
            'options' => $mergeList,
            'empty' => __('-- Select Merge Field --', true),
            'label' => 'Insert Merge Field'
        )
    );
    echo $this->Form->input('EmailTemplate.content');
    echo $this->Form->submit();
    echo $this->Form->end();
?>
</div>