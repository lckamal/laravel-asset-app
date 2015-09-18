<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('departments')->truncate();
        DB::table('users')->truncate();
        DB::table('roles')->truncate();
        DB::table('permissions')->truncate();
        DB::table('role_user')->truncate();
        DB::table('permission_role')->truncate();

        DB::table('departments')->insert([
            'name' => 'Head office'
        ]);
        
        DB::table('users')->insert([
            'department_id' => '1',
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('password'),
            'status' => '1',
        ]);

        DB::table('roles')->insert([
            'name' => 'admin',
            'label' => 'Administrator'
        ]);

        DB::table('permissions')->insert([
            [
                'name' => 'manage_users',
                'label' => 'Manage user accounts'
            ],
            [
                'name' => 'manage_roles',
                'label' => 'Manage roles'
            ],
            [
                'name' => 'manage_permissions',
                'label' => 'Manage permissions'
            ],
            [
                'name' => 'manage_departments',
                'label' => 'Manage departments'
            ],
            [
                'name' => 'manage_employees',
                'label' => 'Manage employees'
            ],
            [
                'name' => 'manage_assets',
                'label' => 'Manage assets'
            ],
            [
                'name' => 'manage_categories',
                'label' => 'Manage categories'
            ],
            [
                'name' => 'manage_vendors',
                'label' => 'Manage vendors'
            ],
        ]);

        DB::table('role_user')->insert([
            'role_id' => '1',
            'user_id' => '1'
        ]);

        DB::table('permission_role')->insert([
            [
                'permission_id' => '1',
                'role_id' => '1',
            ],
            [
                'permission_id' => '2',
                'role_id' => '1',
            ]
        ]);
    }
}
