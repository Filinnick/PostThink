<#import "parts/common.ftl" as c>
<#import "parts/loginform.ftl" as l>

<@c.page>
<div class="mb-1">Add new user
${message?ifExists}
<@l.loginform "/registration" true/>
</@c.page>