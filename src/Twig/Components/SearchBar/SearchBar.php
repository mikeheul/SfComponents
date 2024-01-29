<?php

namespace App\Twig\Components;

use Symfony\UX\TwigComponent\Attribute\AsTwigComponent;

#[AsTwigComponent(exposePublicProps: false)]
class SearchBar
{
    public string $name;
    public string $label;
}