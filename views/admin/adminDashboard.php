<?php ob_start();?>

<div class="cards">

                <div class="card">
                    <div class="card-icon follow">
                        <span class="las la-user"></span>
                    </div>
                    <div class="card-info">
                        <h2>21996</h2>
                        <small>Total followers</small>
                    </div>
                    <div class="card-images">
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-icon likes">
                        <span class="las la-heart"></span>
                    </div>
                    <div class="card-info">
                        <h2>204126</h2>
                        <small>Total likes</small>
                    </div>
                    <div class="card-images">
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-icon comment">
                        <span class="las la-comment"></span>
                    </div>
                    <div class="card-info">
                        <h2>8651</h2>
                        <small>Total commentaire</small>
                    </div>
                    <div class="card-images">
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                        <div style="background-image: url(./assets/images/imgProfile/user-placeholder.jpg)"></div>
                    </div>
                </div>

            </div>

            <div class="chart-grid">

                <div class="chart-follow">
                    <div class="chart-head">
                        <h3>Followers</h3>
                        <span class="las la-cog"></span>
                    </div>
                    <div id="myfirstchart" style="height: 350px;">
                    </div>
                </div>

                <div class="chart-sales">
                    <div class="chart-head">
                        <h3>Ventes</h3>
                        <span class="las la-ellipsis-h"></span>

                    </div>
                    <div id="donut-example" style="height: 350px;"></div>
                </div>
                
</div>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?> -->