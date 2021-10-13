<?php

use Illuminate\Database\Seeder;

class AdministratorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = new \App\User;
        $admin->name = "administrator";
        $admin->email = "admin@gmail.com";
        $admin->password = \Hash::make("admin123");
        $admin->roles = "Administrator";
        //$admin->profile = "https://awsimages.detik.net.id/api/wm/2017/12/06/6414c1ae-fcd1-49a6-8316-4a71c29f93ff_169.jpg?wid=54&w=650&v=1&t=jpeg";

        $admin->save();
        
        $this->command->info("Admin berhasil ditambah");
    }
}
