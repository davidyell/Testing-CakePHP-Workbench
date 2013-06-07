<?php
App::uses('AppController', 'Controller');
/**
 * Pupils Controller
 *
 * @property Pupil $Pupil
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class PupilsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Pupil->recursive = 0;
		$this->set('pupils', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Pupil->exists($id)) {
			throw new NotFoundException(__('Invalid pupil'));
		}
		$options = array('conditions' => array('Pupil.' . $this->Pupil->primaryKey => $id));
		$this->set('pupil', $this->Pupil->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
         var_dump($this->request->data);
         exit;
			$this->Pupil->create();
			if ($this->Pupil->save($this->request->data)) {
				$this->Session->setFlash(__('The pupil has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The pupil could not be saved. Please, try again.'));
			}
		}
		$lessons = $this->Pupil->Lesson->find('list');
		$this->set(compact('lessons'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Pupil->exists($id)) {
			throw new NotFoundException(__('Invalid pupil'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Pupil->save($this->request->data)) {
				$this->Session->setFlash(__('The pupil has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The pupil could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Pupil.' . $this->Pupil->primaryKey => $id));
			$this->request->data = $this->Pupil->find('first', $options);
		}
		$lessons = $this->Pupil->Lesson->find('list');
		$this->set(compact('lessons'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Pupil->id = $id;
		if (!$this->Pupil->exists()) {
			throw new NotFoundException(__('Invalid pupil'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Pupil->delete()) {
			$this->Session->setFlash(__('Pupil deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Pupil was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
