<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class MenuTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(0,10) as $i){
            DB::table('menu')->insert([
                // 'id' => $faker->number,
                'nama_menu' => $faker->text($maxNbChars = 20),
                'category' => $faker->text($maxNbChars = 20),
                'harga' => $faker->text($maxNbChars = 20),
                'deskripsi' => $faker->text($maxNbChars = 250),
                'featured_image' => $faker->imageUrl($width = 640, $height = 480),
            ]);
    }
}
}