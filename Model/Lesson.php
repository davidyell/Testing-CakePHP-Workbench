<?php
App::uses('AppModel', 'Model');
/**
 * Lesson Model
 *
 * @property Pupil $Pupil
 */
class Lesson extends AppModel {

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
		'Pupil' => array(
			'className' => 'Pupil',
			'joinTable' => 'lessons_pupils',
			'foreignKey' => 'lesson_id',
			'associationForeignKey' => 'pupil_id',
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
