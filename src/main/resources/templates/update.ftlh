<#import "parts/common.ftlh" as c>

<@c.page>

<p>Изменение продукта</p>
    <div class="form-group mt-3">
        <form method="post"  action="/update-prod/${product.id}">
            <div class="form-group">
                <input type="text" value="${product.name}" name="name" class="form-control"  placeholder="Название продукта">
            </div>
            <div class="form-group">
                <input type="text"   value="${product.price}" name="price" class="form-control" placeholder="Цена">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Сохранить продукт</button>
            </div>
        </form>
    </div>


    <div>Продукт</div>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Название продукта</th>
            <th scope="col">Стоимость</th>

        </tr>
        </thead>
            <tbody>
            <tr>
                <th scope="row">${product.id}</th>
                <td>${product.name}</td>
                <td>${product.price}</td>

            </tr>
            </tbody>

    </table>
    <a href="/">Список продуктов</a>
</@c.page>