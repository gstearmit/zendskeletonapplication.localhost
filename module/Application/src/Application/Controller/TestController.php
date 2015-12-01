<?php
namespace Test\Controller;

use ZF\OAuth2\Controller\AuthController;
use ZF\OAuth2\Provider\UserId\UserIdProviderInterface;
use Zend\View\Model\JsonModel;

Class TestController extends AuthController {

	public function __construct($serverFactory, UserIdProviderInterface $userIdProvider) {
		parent::__construct($serverFactory, $userIdProvider);
	}

	public function indexAction() {

		die("Hoxnhh");
		$server = call_user_func($this->serverFactory, "oauth");

		if (! $server->verifyResourceRequest($this->getOAuth2Request())) {
			$response   = $server->getResponse();
			return $this->getApiProblemResponse($response);
		}

		return new JsonModel(array("Hello" => "World!"));
	}

}