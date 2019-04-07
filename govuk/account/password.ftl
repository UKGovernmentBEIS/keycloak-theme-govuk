<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>

    <h1 class="govuk-heading-xl">${msg("changePasswordHtmlTitle")}</h1>
    
    <div class="govuk-grid-row">
        <div class="govuk-grid-column-two-thirds">
            <form action="${url.passwordUrl}" class="form-horizontal" method="post">
                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
                <input type="hidden" id="username" name="username" readonly value="${(account.username!'')}">

                <#if password.passwordSet>
                    <div class="govuk-form-group ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                        <label for="password" class="govuk-label">${msg("passwordCurrent")}</label>
                        <input type="password" class="govuk-input" id="password" name="password" autocomplete="current-password">
                    </div>
                </#if>

                <div class="govuk-form-group ${messagesPerField.printIfExists('password-new',properties.kcFormGroupErrorClass!)}">
                    <label for="password-new" class="govuk-label">${msg("passwordNew")}</label>
                    <input type="password" class="govuk-input" id="password-new" name="password-new" autocomplete="new-password">
                </div>

                <div class="govuk-form-group ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                    <label for="password-confirm" class="govuk-label" class="two-lines">${msg("passwordConfirm")}</label>
                    <input type="password" class="govuk-input" id="password-confirm" name="password-confirm" autocomplete="new-password">
                </div>

                <div class="govuk-form-group">
                    <button type="submit" class="govuk-button" name="submitAction" value="Save">${msg("doSave")}</button>
                </div>
            </form>
        </div>
    </div>

</@layout.mainLayout>