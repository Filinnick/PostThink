<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>


<@c.page>
<div calss="card">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="text" placeholder="Введите сообщение" />
            </div>
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="tag" placeholder="Тэг">
            </div>
            <div class="form-group mt-3">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div class="form-group mt-3">
                <button type="submit" class="btn btn-primary">Добавить</button>
            </div>
        </form>
    </div>
</div>

    <div class="form-row mt-5">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control mb-3" value="${filter?ifExists}" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary ml-2 mb-3">Search</button>
            </form>
        </div>
    </div>


    <div class="row" data-masonry='{"percentPosition": true }'>
        <#list messages as message>
            <div class="col-sm-6 col-lg-4 mb-4">
                <div class="card my-3">
                    <#if message.filename??>
                        <img src="/img/${message.filename}" class="card-img-top">
                    </#if>
                    <div class="m-2">
                        <span>${message.text}</span>
                        <i>${message.tag}</i>
                    </div>
                    <div class="card-footer text-muted">
                        ${message.authorName}
                    </div>
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>
</@c.page>