<?php

namespace Database\Seeders;

use App\Models\Category;

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'name' => 'Hauts',
            'slug' => 'hauts'
        ]);

        Category::create([
            'name' => 'Bas',
            'slug' => 'bas'
        ]);

        Category::create([
            'name' => 'Robes',
            'slug' => 'robes'
        ]);

        Category::create([
            'name' => 'Ensembles',
            'slug' => 'ensembles'
        ]);

        Category::create([
            'name' => 'Accessoires',
            'slug' => 'accessoires'
        ]);

        Category::create([
            'name' => 'Nouveautés',
            'slug' => 'nouveautes'
        ]);

        
    }
}
