<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'assets';

    protected $dates = ['date_acquired', 'date_disposed'];
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'asset_no',
        'name',
        'description',
        'model',
        'serial',
        'purchase_price',
        'salvage_price',
        'barcode',
        'date_acquired',
        'date_disposed',
        'category_id',
        'department_id',
        'vendor_id',
        'employee_id',
        'location_lat',
        'location_long',
        'status',
    ];

    public function getDateAcquiredAttribute()
    {
        return date('Y-m-d', strtotime($this->attributes['date_acquired']));
    }

    public function getDateDisposedAttribute()
    {
        $disposed_time = strtotime($this->attributes['date_disposed']);
        if($disposed_time <= 0) return null;
        
        return date('Y-m-d', $disposed_time);
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

    /**
     * Asset belongs to a category
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    /**
     * Asset belongs to a vendor
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function vendor()
    {
        return $this->belongsTo('App\Vendor');
    }

    /**
     * Asset belongs to a employee
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function employee()
    {
        return $this->belongsTo('App\Employee');
    }
}
