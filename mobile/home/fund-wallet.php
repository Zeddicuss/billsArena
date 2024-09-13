<div class="page-content header-clear-medium">
        
        
        <div class="card card-style bg-theme pb-0">
            <div class="content" id="tab-group-1">
                <div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-highlight">
                    <a href="#" data-active data-bs-toggle="collapse" data-bs-target="#tab-1">Auto Bank</a>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#tab-2">Bank Transfer</a>
                    <a href="#" data-bs-toggle="collapse" data-bs-target="#tab-3">Card</a>
                </div>
                <div class="clearfix mb-3"></div>
                
                
                <div data-bs-parent="#tab-group-1" class="collapse show" id="tab-1">
                <div class="text-center">
                    <p class="text-center">
                        <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                            <i class="fa fa-arrow-up font-30 color-white" style="background-color: #232D52; border-radius:10px;"></i>
                        </span>
                    </p>
                    <h4 class="text-primary">WALLET BANK ACCT.</h4>
                    <?php if($controller->getConfigValue($data2,"monifyFeStatus") == "On"): ?>
                    <?php $chargesText = $controller->getConfigValue($data2,"monifyCharges"); ?>
                    <?php if($chargesText == 50 || $chargesText == "50"){$chargesText = "N".$chargesText;} else {$chargesText = $chargesText."%";} ?>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Providus Bank Nig</p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account Name: </b><?php echo $data->sFname. " " . $data->sLname; ?></p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sFidelityBank; ?></p>
                    
                    <p class="mb-2 text-danger font-600 font-15"><b>Note:</b> If you dont have your own Auto Bank Number, Kindly <b>Request a Virtual Account</b> at ₦100 Charges Fee.  Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sFidelityBank; ?>')">Copy Account No</button>
                    <hr/>
                    <?php endif; if($controller->getConfigValue($data2,"monifyMoStatus") == "On"): ?>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Moniepoint Bank</p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sRolexBank; ?></p>
                    <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sRolexBank; ?>')">Copy Account No</button>
                    <hr/>
                    <?php endif; if($controller->getConfigValue($data2,"monifyWeStatus") == "On"): ?>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: Wema Bank</p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sBankNo; ?></p>
                    <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sBankNo; ?>')">Copy Account No</button>
                    <hr/>
                    <?php endif; if($controller->getConfigValue($data2,"monifySaStatus") == "On"): ?>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b>Sterling Bank</p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data->sSterlingBank; ?></p>
                    <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Automated bank transfer attracts additional charges of <?php echo $chargesText; ?> only.</p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data->sSterlingBank; ?>')">Copy Account No</button>
                    <?php endif; ?>
                    <a class="btn btn-success font-700 rounded-xl mt-3" href="https://tally.so/r/mR5qEd"> Request Virtual Account</a>
                </div>
                </div>
                
                
                <div data-bs-parent="#tab-group-1" class="collapse" id="tab-2">
                <div class="text-center">
                    <p class="text-center">
                        <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                        <i class="fa fa-arrow-up font-30 color-white" style="background-color: #232D52; border-radius:10px;"></i>
                        </span>
                    </p>
                    <h4 class="text-primary">TOP-UP  WALLET</h4>
                    <p class="mb-2 text-dark font-600 font-16"><b>Bank Name: </b><?php echo $data3->bankname; ?></p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account Name: </b><?php echo $data3->accountname; ?></p>
                    <p class="mb-2 text-dark font-600 font-16"><b>Account No: </b><?php echo $data3->accountno; ?></p>
                    <p class="mb-2 text-danger font-600 font-15"><b>Note: </b> Please contact admin before making <br> any transfer. or after making transfer upload your <br> transfer receipt, this will enable us to <br> credit you on-time. <br> Ensure your GooCredit email and phone are <br> writing on the transfer narration. <br> This will give us a quick track. We charge ₦2 and 1% for transfer. </p>
                    <button class="btn btn-primary font-700 rounded-xl mt-3" onclick="copyToClipboard('<?php echo $data3->accountno; ?>')">Copy Account No</button>
                    <a class="btn btn-success font-700 rounded-xl mt-3" href="https://tally.so/r/3ld8QB">Upload Receipt</a>
                    
                    
                </div>
                </div>
                
                
                

                <div data-bs-parent="#tab-group-1" class="collapse" id="tab-3">
                        <div class="text-center">
                            <p class="text-center">
                                <span class="icon icon-l gradient-blue shadow-l rounded-sm">
                                <i class="fa fa-arrow-up font-30 color-white" style="background-color: #232D52; border-radius:10px;"></i>
                                </span>
                            </p>
                            <h4 class="text-primary">FUND WALLET</h4>
                            <p class="mb-2 text-dark font-600 font-16">
                                Pay with card, bank transfer, ussd, or bank deposit. Secured by Paystack
                            </p>
                    
                        </div>
                        
                        <?php if($controller->getConfigValue($data2,"paystackStatus") == "On"): ?>
                        <form  method="post">
                        <div class="mt-5 mb-3">
                            
                            <div class="input-style has-borders no-icon input-style-always-active mb-4">
                                <input type="hidden" value="<?php echo $controller->getConfigValue($data2,"paystackCharges"); ?>" id="paystackcharges" name="paystackcharges" />
                                <input type="number" onkeyup="calculatePaystackCharges()" class="form-control" id="amount" name="amount" placeholder="Amount" required>
                                <label for="amount" class="color-highlight">Amount</label>
                                <em>(required)</em>
                            </div>
                            <div class="input-style has-borders no-icon input-style-always-active  mb-4">
                                <input type="text" class="form-control" id="charges" placeholder="Charges" readonly>
                                <label for="charges" class="color-highlight">Charges</label>
                                <em>(required)</em>
                            </div>
                            <div class="input-style has-borders no-icon input-style-always-active  mb-4">
                                <input type="text" class="form-control" id="amounttopay" placeholder="You Would Get" readonly>
                                <label for="amounttopay" class="color-highlight">You Would Get</label>
                                <em>(required)</em>
                            </div>

                            <input type="hidden" name="email" value="<?php echo $data->sEmail; ?>" />
                        </div>

                        <div class="text-center"><img src="../../assets/img/paystack.png" /></div>
                        <button type="submit" id="fund-with-paystack" name="fund-with-paystack" style="width: 100%;" class="btn btn-full btn-l font-600 font-15 gradient-highlight mt-4 rounded-s">
                                Pay Now
                        </button>
                        </form>
                        <?php else : ?>
                            <h3 class="text-center text-danger">Paystack feature is currently not <br> available for card payment. Coming Soon.</h3>
                        <?php endif; ?>
                </div>
                

                
                
            </div>
        </div> 

</div>

