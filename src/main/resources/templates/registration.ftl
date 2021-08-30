<#import "parts/common.ftl" as c>
<#import "parts/loginform.ftl" as l>

<@c.page>
Add new user
${message!}
<@l.loginform "/registration" />
</@c.page>