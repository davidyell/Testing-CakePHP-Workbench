<div class="pupils form">
<?php echo $this->Form->create('Pupil'); ?>
	<fieldset>
		<legend><?php echo __('Edit Pupil'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('student_number');
		echo $this->Form->input('Lesson.Lesson', array('type' => 'select', 'multiple' => true));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Pupil.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Pupil.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Pupils'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); ?> </li>
	</ul>
</div>
