<div class="tags form">
<?php echo $this->Form->create('Tag'); ?>
	<fieldset>
		<legend><?php echo __('Edit Tag'); ?></legend>
	<?php
		echo $this->Form->input('tag_id', array('type' => 'select', 'options' => $tags, 'empty' => 'Select a tag'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
