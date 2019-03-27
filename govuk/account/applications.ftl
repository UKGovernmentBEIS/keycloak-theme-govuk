<#import "template.ftl" as layout>
<@layout.mainLayout active='applications' bodyClass='applications'; section>

    <h1 class="govuk-heading-xl">${msg("applicationsHtmlTitle")}</h1>

    <table class="govuk-table">
        <tbody class="govuk-table__body">
          <#list applications.applications as application>
              <#if application.effectiveUrl?has_content && application.client.clientId!='account'>
                  <tr class="govuk-table__row">
                    <td class="govuk-table__cell">
                        <a href="${application.effectiveUrl}" class="govuk-link govuk-heading-m">
                            <#if application.client.name?has_content>${advancedMsg(application.client.name)}<#else>${application.client.clientId}</#if>
                        </a>
                    </td>
                </tr>
              </#if>
          </#list>
        </tbody>
    </table>

</@layout.mainLayout>
