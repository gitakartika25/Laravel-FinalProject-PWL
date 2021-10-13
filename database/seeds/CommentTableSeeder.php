<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class CommentTableSeeder extends Seeder
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
            DB::table('comment')->insert([
                // 'id' => $faker->number,
                'email' => $faker->text($maxNbChars = 250),
                'comment' => $faker->text($maxNbChars = 250)
            ]);
    }
}
}