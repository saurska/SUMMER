<?php

namespace App\Http\Controllers;
use Botble\Ecommerce\Http\Controllers\LoginController;
use Botble\Ecommerce\Models\Claim;
use App\Http\Middleware\Authenticate;
use App\Mail\WelcomeEmail;
use EmailHandler;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;

class ClaimController extends Controller
{

    public function ShowClaimPage(){
        
        return view('claim');
    }
    
    public function save(Request $request){

        $claim = new Claim;
        $claim->First_Name = $request->First_Name;
        $claim->Last_Name = $request->Last_Name;
        $claim->Upload_Invoice_Copy =$request->file;
        $claim->Purchased_from = $request->PurchasedFrom;
        $claim->Orderid = $request->Order_id;
        $claim->Email_Address = $request->email;
        $claim->Shipping_Address = $request->Address;
        $claim->Contact_No = $request->number;
        $claim->Alt_Contact_No = $request->alt_number;
        $claim->created_by = session('UserLoggedIn');


        $claim->save();

        EmailHandler::setModule(ECOMMERCE_MODULE_SCREEN_NAME)
        ->setVariableValues([
            'claim_order_id' => $claim->Orderid,
            'claim_purchased_from' => $claim->Purchased_from,
        ])
        ->sendUsingTemplate('claim', $claim->Email_Address);

        $data = ['LoggedUserInfo'=>Claim::where('created_by','=',session('UserLoggedIn'))->first()];
        return redirect('customer/claim');
      
       

    }
}
