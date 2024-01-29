<?php

namespace App\Controller;

use Exception;
use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Serializer\Normalizer\AbstractObjectNormalizer;
use Symfony\Component\Serializer\SerializerInterface;

class ArticleController extends AbstractController
{
    #[Route('/article/search', name: 'search_article')]
    public function search(Request $request, ArticleRepository $articleRepository, SerializerInterface $serializer)
    {
        try {
            // Handle AJAX request here
            // Retrieve search term from the request
            $searchTerm = $request->query->get('searchTerm');

            // Query the database for articles matching the search term
            $articles = $articleRepository->findBySearchTerm($searchTerm);
           
            // Serialize the array of objects into JSON
            $jsonContent = $serializer->serialize($articles, 'json', []);

            // Create a Response object with the serialized content and appropriate headers
            $response = new Response($jsonContent);
            $response->headers->set('Content-Type', 'application/json');

            return $response;

        } catch (Exception $e) {
            // Handle exceptions and return an error response
            return new Response(json_encode(['error' => $e->getMessage()]), 500, ['Content-Type' => 'application/json']);
        }
    }
}   
