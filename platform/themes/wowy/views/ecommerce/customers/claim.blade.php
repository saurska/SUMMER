@extends(Theme::getThemeNamespace() . '::views.ecommerce.customers.master')
@section('content')
    <div class="card">
        <div class="card-header">
            <h5>{{ __('Claim Details') }}</h5>
        </div>
        <div class="card-body">
        <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>{{ __('Purchased From') }}</th>
                            <th>{{ __('Order Id') }}</th>
                            <th>{{ __('Date') }}</th>
                            <th>{{ __('First Name') }}</th>
                            <th>{{ __('Last Name') }}</th>
                            <th>{{ __('Contact No') }}</th>
                            <th>{{ __('Alternate Contact No') }}</th>
                            <th>{{ __('Email') }}</th>
                            <th>{{ __('Shipping Address') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        @foreach($LoggedUserInfo as $Lg)
                       
                                <td>{{ $Lg->Purchased_from }}</td>
                                <td>{{ $Lg->OrderId }}</td>
                                <td>{{ $Lg->Purchased_date }}</td>
                                <td>{{ $Lg->First_Name }}</td>
                                <td>{{ $Lg->Last_Name }}</td>
                                <td>{{ $Lg->Contact_No }}</td>
                                <td>{{ $Lg->Alt_Contact_No }}</td>
                                <td>{{ $Lg->Email }}</td>
                                <td>{{ $Lg->Shipping_Address }}</td>
                            </tr>

                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>
@endsection
