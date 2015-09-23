<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Floor extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'floors';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'department_id',
        'image',
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
            $query->where('name', 'like', "%{$name}%");
        }

        if($department_id = \Request::get('department_id'))
        {
            $query->where('department_id', '=', "{$department_id}");
        }

        return $query;
    }

    /**
     * Asset belongs to a department
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function department()
    {
        return $this->belongsTo('App\Department');
    }
}
