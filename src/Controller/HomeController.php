<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $ar): Response
    {
        return $this->render('home/index.html.twig', [
            'articles' => $ar->findAll(),
        ]);
    }

    #[Route('/test', name: 'app_test')]
    public function test()
    {
        return $this->render('home/test.html.twig', []);
    }

    #[Route('/contact', name: 'app_contact')]
    public function contact()
    {
        
    }
}
