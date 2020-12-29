<#import "parts/common.ftlh" as c>

<@c.page>


    <div>Изменённый продукт</div>
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
                <th scope="row">${id}</th>
                <td>${name}</td>
                <td>${price}</td>

                </td>
            </tr>
            </tbody>

    </table>
<a href="/">Список продуктов</a>
    <br>
    <a href="/edit-prod/${id}">Изменить</a>
</@c.page>