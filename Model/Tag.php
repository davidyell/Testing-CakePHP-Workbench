<?php
App::uses('AppModel', 'Model');
/**
 * Tag Model
 *
 * @property Category $Category
 */
class Tag extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'title';

   public $actsAs = array(
        'Listing.Listable' => array(
            'relatedModelName' => 'Category',
            'relatedModelDisplayField' => 'title',
        )
    );

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Category' => array(
			'className' => 'Category',
			'foreignKey' => 'category_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
