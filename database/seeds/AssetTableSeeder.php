<?php

use Illuminate\Database\Seeder;

class AssetTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('departments')->truncate();
        DB::table('buildings')->truncate();
        DB::table('floors')->truncate();
        DB::table('categories')->truncate();
        DB::table('vendors')->truncate();
        DB::table('employees')->truncate();
        DB::table('assets')->truncate();

        // create random 20 categories
        for($i = 0; $i < 20; $i++)
        {
            factory('App\Category')->create();
        }
        // create random 20 Vendors
        for($i = 0; $i < 20; $i++)
        {
            factory('App\Vendor')->create();
        }
        // create random 20 Departments
        for($i = 0; $i < 20; $i++)
        {
            factory('App\Department')->create();
        }
        // create random 10 Buildings
        for($i = 0; $i < 20; $i++)
        {
            factory('App\Building')->create();
        }
        // create random 20 Floors
        for($i = 0; $i < 50; $i++)
        {
            factory('App\Floor')->create();
        }
        // create random 50 Employees
        for($i = 0; $i < 50; $i++)
        {
            factory('App\Employee')->create();
        }

        // create random 100 assets
        for($i = 0; $i < 100; $i++)
        {
            factory('App\Asset')->create();
        }
    }
}
