<div class="pupils form">
<?php echo $this->Form->create('Pupil'); ?>
	<fieldset>
		<legend><?php echo __('Add Pupil'); ?></legend>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('student_number');
		echo $this->Form->input('status_id');
		echo $this->Form->input('Lesson');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Pupils'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); ?> </li>
	</ul>
</div>
