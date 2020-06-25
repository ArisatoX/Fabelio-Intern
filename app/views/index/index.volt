{% extends "layouts/base.volt" %}

{% block content %}

<div class="container">
    <div class="row">
        <div class="col-lg-9">
            {% for item in furniture %}
                <div class="card mt-1">
                    <img class="card-img-top img-fluid" src="{{item.picture}}" alt="">
                    <div class="card-body">
                        <h4 class="card-title"><b>{{item.productName}} <span><span> </b></h4>
                        <h5><b>Rp {{item.price}}</b></h5>
                        <p class="card-text">
                            Dimension: {{item.dimension}} <br>
                            Colours: {{item.colours}} <br>
                            Material: {{item.material}} <br>
                        </p>
                        <button type="button" class="btn btn-success float-right"><b>BELI</b></button>
                    </div>
                </div>
                <br>
            {% endfor %}
        </div>
    </div>
</div>
                                  
{% endblock %}

