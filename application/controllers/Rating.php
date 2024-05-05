<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Rating extends CI_Controller
{
    protected $table = 'rating';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id_product',
        'id_user',
        'star'
    ];
    protected $returnType = 'App\Entities\Rating';
    protected $useTimestamps = false;
}