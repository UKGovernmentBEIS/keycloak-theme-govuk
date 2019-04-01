<#import "template.ftl" as layout>
<@layout.mainLayout active='applications' bodyClass='applications'; section>

    <h1 class="govuk-heading-xl">${msg("applicationsHtmlTitle")}</h1>
    <ul class="govuk-list">
        <#list applications.applications as application>
            <#if application.effectiveUrl?has_content && application.client.clientId!='account'>
                <li>
                    <a href="${application.effectiveUrl}" class="govuk-link govuk-heading-m">
                        <#if application.client.name?has_content>${advancedMsg(application.client.name)}<#else>${application.client.clientId}</#if>
                    </a>
                </li>
            </#if>
        </#list>
    </ul>

</@layout.mainLayout>
