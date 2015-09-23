<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
        'status' => 1,
        'department_id' => App\Department::orderByRaw("RAND()")->first()->id,
        'password' => bcrypt(str_random(10)),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Permission::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'label' => $faker->name,
    ];
});


$factory->define(App\Role::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'label' => $faker->name,
    ];
});

$factory->define(App\Department::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->company,
        'latitude' => $faker->latitude,
        'longitude' => $faker->longitude,
    ];
});

$factory->define(App\Vendor::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->company,
    ];
});

$factory->define(App\Category::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->text($maxNbChars = 200),
    ];
});

$factory->define(App\Employee::class, function (Faker\Generator $faker) {
    return [
        'first_name' => $faker->firstName,
        'last_name' => $faker->lastName,
        'email' => $faker->email,
        'employee_number' => $faker->numberBetween(10,1000),
        'street_1' => $faker->streetAddress,
        'street_2' => null,
        'city' => $faker->city,
        'state' => $faker->state,
        'region' => null,
        'country' => $faker->countryCode,
        'zip_code' => $faker->postcode,
        'phone' => null,
        'mobile' => $faker->phoneNumber,
        'marital_status' => $faker->shuffle('married', 'single'),
        'dob' => $faker->dateTimeThisCentury->format('Y-m-d'),
        'ssn' => null,
        'timezone' => $faker->timezone,
        'drivers_license' => null,
    ];
});

$factory->define(App\Asset::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'asset_no' => $faker->randomNumber(4),
        'department_id' => App\Department::orderByRaw("RAND()")->first()->id,
        'category_id' => App\Category::orderByRaw("RAND()")->first()->id,
        'employee_id' => App\Employee::orderByRaw("RAND()")->first()->id,
        'vendor_id' => App\Vendor::orderByRaw("RAND()")->first()->id,
        'description' => $faker->paragraph,
        'model' => $faker->word,
        'serial' => $faker->randomLetter,
        'barcode' => $faker->ean13,
        'date_acquired' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'date_disposed' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'purchase_price' => $faker->randomNumber(3),
        // 'image' => $faker->imageUrl($width = 640, $height = 480)
        'image' => NULL,
        'status' => 'active',
    ];
});

$factory->define(App\Floor::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'department_id' => App\Department::orderByRaw("RAND()")->first()->id,
        'image' => NULL,
    ];
});
