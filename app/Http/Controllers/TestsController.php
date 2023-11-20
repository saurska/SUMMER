<?php

namespace App\Http\Controllers;
use DB;
use Botble\Ecommerce\Models\Product;

use Illuminate\Http\Request;

class TestsController extends Controller
{
    function GetData(){

        $data = Product::all();
        
        return view('Testsview',['data' =>$data]);
        
    }
}
