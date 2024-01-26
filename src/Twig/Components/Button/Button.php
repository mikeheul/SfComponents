<?php

namespace App\Twig\Components;

use Symfony\UX\TwigComponent\Attribute\PreMount;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\UX\TwigComponent\Attribute\AsTwigComponent;

#[AsTwigComponent(exposePublicProps: true)]
class Button
{
    public string $text;
    public string $type = "primary";
}