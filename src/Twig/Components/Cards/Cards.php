<?php

namespace App\Twig\Components;

use Symfony\UX\LiveComponent\DefaultActionTrait;
use Symfony\UX\LiveComponent\Attribute\AsLiveComponent;
use Symfony\UX\TwigComponent\Attribute\AsTwigComponent;

// #[AsTwigComponent(exposePublicProps: false)]
#[AsLiveComponent]
class Cards
{
    use DefaultActionTrait;
    public array $cards;
}