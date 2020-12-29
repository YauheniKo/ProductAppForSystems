<#import "parts/common.ftlh" as c>

<@c.page>
    <a class="btn btn-primary mb-2" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Добавление продукта
    </a>
    <div class="collapse" id="collapseExample">

        <div class="form-group mt-3">
            <form method="post"  action="/add">
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="Название продукта">
                </div>
                <div class="form-group">
                    <input type="number" min="1" class="form-control" name="price" placeholder="Цена">
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-success">Сохранить продукт</button>
                </div>
            </form>
        </div>
    </div>

    <div class="form row">
        <div class="form-group col-md-6">
            <form method="get" action="/" class="form-inline">
                <input type="text" name="filter"  class="form-control"  value="${filter!""}" placeholder="Поиск по названию">
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>

    <div>Список продуктов</div>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Название продукта</th>
            <th scope="col">Стоимость</th>
            <th scope="col" width="30%" >Действие</th>
        </tr>
        </thead>
        <#list products as product>
            <tbody>
            <tr>
                <th scope="row">${product.id}</th>
                <td>${product.name}</td>
                <td>${product.price}</td>
               <td >

                   <div class="form-inline">
                       <form method="get" action="/edit-prod/${product.id}" >
                           <button type="submit" class="btn btn-primary ml-2">Изменить</button>
                       </form>

                       <form method="get" action="/delete-prod/${product.id}">
                           <button type="submit" class="btn btn-danger ml-2">Удалить</button>
                       </form>
                   </div>


                   <#--                   <a href="/edit-prod/${product.id}"> Изменить</a>/-->
<#--                <a href="/delete-prod/${product.id}"> Удалить</a>-->
                </td>
            </tr>
            </tbody>
        <#else>
            Нет продуктов по данному запросу
        </#list>
    </table>

</@c.page>