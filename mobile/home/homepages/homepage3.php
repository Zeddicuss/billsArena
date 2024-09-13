
<div class="page-content header-clear-medium">

        <div class="card card-style bg-20" data-card-height="200"
        style="height: 130px; background-image: url('../../images/wally.png')"> 
            <!--style="height: 130px; background-image: linear-gradient(to top, <?php echo $sitecolor; ?> 0%, <?php echo $sitecolor; ?> 100%);">-->
            <!-- style="height: 130px; background-image: url('../../assets/img/bg.jpg')"> -->
            <div class="card-top ps-3 pt-2">
                <h1 class="color-white font-19"  style="text-shadow: 2px 2px 2px #000000;"><?php echo "Welcome, " . $data->sFname . "  " . $data->sLname; ?></h1>
            </div>
            <div class="card-top pe-3 pt-2">
                <h5 class="color-white float-end"  style="text-shadow: 2px 2px 2px #000000;"><?php echo $controller->formatUserType($data->sType); ?></h5>
            </div>
            <div class="card-center ps-3">
                <h4 class="color-white font-15" style="text-shadow: 2px 2px 2px #000000;">
                    Bank: <?php echo "$data->sBankName"; ?>
                </h4>
                <h4 class="color-white font-15" style="text-shadow: 2px 2px 2px #000000;">
                    Account: <?php echo "$data->sBankNo"; ?>
                   <!--<p class="mb-2 text-white font-600 font-16" onclick="copyToClipboard('')"> <b>Account No: </b><?php echo "$data->sBankNo"; ?>&nbsp;<img src="/assets/notes.png" alt="copy"</p>-->
                </h4>
            </div>
            <div class="card-center pe-3 pt-2">
            <a href="fund-wallet" class="float-end text-center">
                    <span class="icon icon-l bg-light shadow-l rounded-sm">
                        <i class="fa fa-landmark font-18" style="color:<?php echo $sitecolor; ?>"></i>
                    </span>
                    <h5 class="mb-0 pt-1 font-14 text-white" style="text-shadow: 2px 2px 2px #000000;">Add Funds</h5>
                </a>
            </div>
            <div class="card-bottom ps-3 pb-2 bt-3">
                <h3 id="balance" class="color-white font-20"><span style="display:none;">&#8358;<?php echo number_format($data->sWallet); ?></span>
                    <span>&#8358; ****</span>&nbsp;&nbsp;<b class="text-white"><i class="fa fa-eye" onclick="toggleBalance()"></i></b></h3>
                 <script>
                    function toggleBalance() {
                        var balanceSpans = document.querySelectorAll('#balance span');
                        balanceSpans.forEach(function(span) {
                            if (span.style.display === 'none') {
                                span.style.display = 'inline'; // Change 'block' to 'inline'
                            } else {
                                span.style.display = 'none';
                            }
                        });
                    }
                </script>
            </div>
            <div class="card-overlay bg-gradient"></div>
        </div>
         
        <!--<div class="card card-style mt-n3">-->
        <!--    <div class="content mb-3 mt-3">-->
        <!--    <div>-->
        <!--        <h5>Quick Access</h5>-->
        <!--        <hr/>-->
        <!--       </div>-->
        <!--        <div class="row text-center mb-0">-->
        <!--            <a href="buy-airtime" class="col-3">-->
        <!--                <span class="icon icon-l rounded-sm" style="background:#fcead9; color:#ff7614;">-->
        <!--                    <i class="fa fa-phone font-18"></i>-->
        <!--                </span>-->
        <!--                <p class="mb-0 pt-1 font-11">Airtime</p>-->
        <!--            </a>-->
        <!--            <a href="https://chat.whatsapp.com/FEjg9M0DvCk2hquv3z0ZMF" class="col-3">-->
        <!--                <span class="icon icon-l rounded-sm" style="background:#d9fcf7; color:#32a852;">-->
        <!--                    <i class="fab fa-whatsapp font-18"></i>-->
        <!--                </span>-->
        <!--                <p class="mb-0 pt-1 font-11">Group</p>-->
        <!--            </a>-->
        <!--            <a href="buy-data" class="col-3">-->
        <!--                <span class="icon icon-l rounded-sm" style="background:#e2d9fc; color:#5138cf;">-->
        <!--                    <i class="fa fa-wifi font-18"></i>-->
        <!--                </span>-->
        <!--                <p class="mb-0 pt-1 font-11">Data</p>-->
        <!--            </a>-->
        <!--            <a href="fund-wallet" class="col-3">-->
        <!--                <span class="icon icon-l rounded-sm" style="background:#f5d9fc; color:#ae38cf;">-->
        <!--                    <i class="fa fa-wallet font-18"></i>-->
        <!--                </span>-->
        <!--                <p class="mb-0 pt-1 font-11">My Wallet</p>-->
        <!--            </a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <div class="card card-style mt-3">
            
            <div class="content mb-2 mt-3">
            <div>
                <h5 style = "font-size:12px;">Faster Access</h5>
                <hr/>
               </div>
                <div class="row text-center mb-0">
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/mtn.png" width="45" height="45">
                        </span>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/airtel.png" width="45" height="45">
                        </span>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/glo.png" width="45" height="45">
                        </span>
                    </a>
                    
                    <a href="buy-data" class="col-3 mt-2">
                        <span class="icon icon-l rounded-sm py-2 px-2" style="background:#f2f2f2;">
                            <img src="../../assets/images/9mobile.png" width="45" height="45">
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-style mt-n3">
            <div class="content mb-3 mt-3">
               <div>
                <h5 style = "font-size:12px;">Services</h5>
                <hr/>
               </div>

                <div class="row text-center mb-0">
                    
                <a href="buy-airtime" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">
                            <i class="fa fa-phone font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Airtime</p>
                    </a>

                    <a href="buy-data" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#0066ff;">
                            <i class="fa fa-wifi font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Data</p>
                    </a>

                    <a href="buy-data-pin" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#00cc00;">
                            <i class="fa fa-barcode font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Data Card</p>
                    </a>

                    <a href="electricity" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#00cc00;">
                            <i class="fa fa-bolt font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Electricity</p>
                    </a>

                    <a href="exam-pins" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#ff6600;">
                            <i class="fa fa-graduation-cap font-18 "></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Exam Pins</p>
                    </a>
                    
                    <a href="cable-tv" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">
                            <i class="fa fa-tv font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Cable Tv</p>
                    </a>

                    
                <a href="recharge-pin" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">
                            <i class="fa fa-money-check font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Recharge Card Pins</p>
                    </a>
                    
                    
                <!--<a href="airtime2cash" class="col-4 mt-2">-->
                <!--        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">-->
                <!--            <i class="fa fa-receipt font-18"></i>-->
                <!--        </span>-->
                <!--        <p class="mb-0 pt-1 font-13">Airtime2Wallet</p>-->
                <!--    </a>-->
                    
                    
                <!--<a href="2bank" class="col-4 mt-2">-->
                <!--        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">-->
                <!--            <i class="fa fa-barcode font-18"></i>-->
                <!--        </span>-->
                <!--        <p class="mb-0 pt-1 font-13">Wallet2Bank</p>-->
                <!--    </a>-->
                    
                    
                <a href="#" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">
                            <i class="fa fa-plane font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Book Flight</p>
                    </a>
                    
                    
                    <a href="transactions" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#0066ff;">
                            <i class="fa fa-receipt font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Transactions</p>
                    </a>

                    <!-- <a href="fund-wallet" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#cc0066;">
                            <i class="fa fa-arrow-up font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Add Fund</p>
                    </a> -->

                    <a href="profile" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#0066ff;">
                            <i class="fa fa-user  font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Profile</p>
                    </a>
                    
                    <a href="contact-us" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#ff6600;">
                            <i class="fa fa-envelope font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Contact Us</p>
                    </a>

                    

                    <a href="#agent-upgrade-modal" id="upgrade-agent-btn" data-menu="agent-upgrade-modal" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#00cc00;">
                            <i class="fa fa-user-secret font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Agent</p>
                    </a>

                    <a href="logout" class="col-4 mt-2">
                        <span class="icon icon-l shadow-l rounded-sm" style="color:#ff6600;">
                            <i class="fa fa-lock  font-18"></i>
                        </span>
                        <p class="mb-0 pt-1 font-13">Logout</p>
                    </a>
                    
                </div>
            </div>
     </div>

</div>

