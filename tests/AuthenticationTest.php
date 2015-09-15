<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class AuthenticationTest extends TestCase
{
    /** @test */
    public function show_login_button()
    {
        $this->visit('/')
             ->see('Login');
    }
    /** @test */
    public function test_login_form()
    {
        $this->visit('/auth/login')
            ->submitForm('Login', ['email' => 'admin@admin.com', 'password' => 'password'])
            ->see('Welcome!')
            ->onPage('home');
    }
}
