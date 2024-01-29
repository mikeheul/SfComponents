<?php

namespace App\Twig\Components;

use App\Twig\Components\Button;
use Symfony\UX\TwigComponent\Attribute\AsTwigComponent;

#[AsTwigComponent(exposePublicProps: false)]
class Card
{
    public int $id;
    public string $image;
    public string $alt;
    public string $title;
    public string $text;
    public Button $button;
}