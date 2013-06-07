<?php
App::uses('AppModel', 'Model');
/**
 * LessonsPupil Model
 *
 * @property Lesson $Lesson
 * @property Pupil $Pupil
 */
class LessonsPupil extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Lesson' => array(
			'className' => 'Lesson',
			'foreignKey' => 'lesson_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Pupil' => array(
			'className' => 'Pupil',
			'foreignKey' => 'pupil_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
