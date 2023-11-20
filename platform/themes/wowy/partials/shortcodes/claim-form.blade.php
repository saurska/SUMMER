 <section class="mt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-10 m-auto">
                    <div class="contact-from-area  padding-20-row-col wow tmFadeInUp animated"
                        style="visibility: visible;">
                        <h3 class="mb-10 text-center">Warranty Registration Form</h3>
                        <p class="text-muted mb-30 text-center font-sm">Contact Us For Any Questions</p>
                         {!! Form::open(['route' => 'public.send.claim', 'class' => 'claim-form-style text-center claim-form', 'method' => 'POST']) !!} 
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Order Purchased From</label>
                                    <br>
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Order ID</label>
                                    <br>
                                    <input name="order-id" placeholder="Order Id" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Date Of Purchase</label>
                                    <br>
                                    <input name="date" placeholder="date" type="date">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <div class="mb-3">
                                        <label for="formFile" class="form-label">Upload Invoice Copy</label>
                                        <br>
                                        <input class="form-control" type="file" id="formFile">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">First Name</label>
                                    <br>
                                    <input type="text" name="first-name" id="first-name" placeholder="First Name">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Last Name</label>
                                    <br>
                                    <input type="text" name="last-name" id="last-name" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Contact No</label>
                                    <br>
                                    <input type="number" name="number" id="number" placeholder="Contact Number">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Alternate Contact No.</label>
                                    <br>
                                    <input type="number" name="alt-number" id="alt-number"
                                        placeholder="Alternate Contact Number">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Email Address</label>
                                    <br>
                                    <input type="email" name="email" id="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="input-style mb-20">
                                    <label for="formFile" class="form-label">Shipping Address</label>
                                    <br>
                                    <input type="text" name="Address" id="address" placeholder="Shipping Address">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>