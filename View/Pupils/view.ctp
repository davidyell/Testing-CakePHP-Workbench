<div class="pupils view">
<h2><?php  echo __('Pupil'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($pupil['Pupil']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($pupil['Pupil']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Student Number'); ?></dt>
		<dd>
			<?php echo h($pupil['Pupil']['student_number']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($pupil['Pupil']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($pupil['Pupil']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Pupil'), array('action' => 'edit', $pupil['Pupil']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Pupil'), array('action' => 'delete', $pupil['Pupil']['id']), null, __('Are you sure you want to delete # %s?', $pupil['Pupil']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Pupils'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Pupil'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php echo __('Related Lessons'); ?></h3>
	<?php if (!empty($pupil['LessonsPupil'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Name'); ?></th>
		<th><?php echo __('Created'); ?></th>
		<th><?php echo __('Modified'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($pupil['LessonsPupil'] as $lesson): ?>
		<tr>
			<td><?php echo $lesson['Lesson']['id']; ?></td>
			<td><?php echo $lesson['Lesson']['name']; ?></td>
			<td><?php echo $lesson['Lesson']['created']; ?></td>
			<td><?php echo $lesson['Lesson']['modified']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'lessons', 'action' => 'view', $lesson['Lesson']['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'lessons', 'action' => 'edit', $lesson['Lesson']['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'lessons', 'action' => 'delete', $lesson['Lesson']['id']), null, __('Are you sure you want to delete # %s?', $lesson['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
