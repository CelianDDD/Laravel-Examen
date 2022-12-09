<?php

namespace Database\Seeders;

use App\Models\Product;

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i=0; $i < 25 ; $i++) {
            Product::create([
                'title' => $faker->sentence(3),
                'slug' => $faker->slug,
                'subtitle' => $faker->sentence(10),
                'description' => $faker->text,
                'price' => $faker->numberBetween(15, 300) * 100,
                'image' => 'https://via.placeholder.com/200x250'
            ]) -> categories() -> attach([
                rand(1, 6),
                rand(1, 6),
                rand(1, 6)
            ]);
        }
    }
}
