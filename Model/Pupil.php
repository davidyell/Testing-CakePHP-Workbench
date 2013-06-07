<?php
App::uses('AppModel', 'Model');
/**
 * Pupil Model
 *
 * @property Lesson $Lesson
 */
class Pupil extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * hasAndBelongsToMany associations
 *
 * @var array
 */
	public $hasAndBelongsToMany = array(
		'Lesson' => array(
			'className' => 'Lesson',
			'joinTable' => 'lessons_pupils',
			'foreignKey' => 'pupil_id',
			'associationForeignKey' => 'lesson_id',
			'unique' => 'keepExisting',
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		)
	);

}
