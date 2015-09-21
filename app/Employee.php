<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'employees';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'employee_number',
        'street_1',
        'street_2',
        'city',
        'state',
        'region',
        'country',
        'zip_code',
        'phone',
        'mobile',
        'marital_status',
        'dob',
        'ssn',
        'timezone',
        'drivers_license',
    ];

    /**
     * scope query with filter options
     * @param  query $query
     * @return Query
     */
    public static function scopeFilter($query)
    {
        if($name = \Request::get('q'))
        {
            $query->where('first_name', 'like', "%{$name}%");
            $query->orWhere('last_name', 'like', "%{$name}%");
            $query->orWhere('email', 'like', "%{$name}%");
            $query->orWhere('employee_number', 'like', "%{$name}%");
        }

        return $query;
    }
}
