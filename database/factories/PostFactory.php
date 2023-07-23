<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $address = ['yangon', 'mandalay', 'taungyi', 'new york', 'tokyo'];
        return [
            'title' => $this->faker->sentence(8),
            'description' => $this->faker->text(100),
            'price' => rand('5000', '50000'),
            'address' => $address[array_rand(['yangon', 'mandalay', 'taungyi', 'new york', 'tokyo'])],
            'rating' => rand(1, 5)
        ];
    }
}
