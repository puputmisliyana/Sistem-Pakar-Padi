<?php

use Illuminate\Database\Seeder;

use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        return User::create([
        	'name' => 'Puputmisliyana',
        	'email' => 'puputmisliyana13@gmail.com',
        	'password' => bcrypt('puput'),
        ]);
    }
}
