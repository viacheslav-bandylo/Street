<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group row">
            <div class="col-sm-6">
                <input type="text" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       value="<#if user??>${user.username}</#if>" name="username" placeholder="Username"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${ usernameError }
                    </div>
                </#if>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-6">
                <input type="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       name="password" placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${ passwordError }
                    </div>
                </#if>
            </div>
        </div>

        <#if isRegisterForm>

            <div class="form-group row">
                <div class="col-sm-6">
                    <input type="password" class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           name="password2" placeholder="Confirm password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${ password2Error }
                        </div>
                    </#if>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-6">
                    <input type="email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                           value="<#if user??>${user.email}</#if>" name="email" placeholder="example@test.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${ emailError }
                        </div>
                    </#if>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="g-recaptcha" data-sitekey="6LeTgPgUAAAAAN6LqVh6JWr6s8El2FhgjPejT2Jy"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>

        </#if>

        <input type="hidden" name="_csrf" value="${ _csrf.token }">
        <#if !isRegisterForm><a href="/registration">Registration</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Registration<#else>Sign in</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${ _csrf.token }">
        <button class="btn btn-primary" type="submit">Sign out</button>
    </form>
</#macro>