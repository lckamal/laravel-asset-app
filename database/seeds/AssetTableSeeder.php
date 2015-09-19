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
        for($i = 0; $i <= 50; $i++)
        {
            $asset = factory('App\Asset')->make();
            $asset->save();
        }
    }
}
