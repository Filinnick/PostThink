<#import "parts/common.ftl" as c>
<#import "parts/loginform.ftl" as l>

<@c.page>
Login page
<@l.loginform "/login" />
<a href="/registration">Add new user</a>
</@c.page>