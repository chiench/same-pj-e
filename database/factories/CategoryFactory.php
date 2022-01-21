<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $cate_name = $this->faker->unique()->words($nb=2,$asText=true);
        $slug = Str::slug($cate_name);

        return [
            'name'=> $cate_name,
            'slug'=>$slug
        ];
    }
}
