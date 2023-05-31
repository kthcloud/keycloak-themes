<#import "./icon/provider.ftl" as iconProvider>

<#macro kw>
  <div class="gap-4 grid grid-cols-1">
    <#list social.providers as provider>
      <#switch provider.alias>
        <#case "bitbucket">
          <#assign color="hover:bg-provider-bitbucket/10">
          <#break>
        <#case "facebook">
          <#assign color="hover:bg-provider-facebook/10">
          <#break>
        <#case "github">
          <#assign color="hover:bg-provider-github/10">
          <#break>
        <#case "gitlab">
          <#assign color="hover:bg-provider-gitlab/10">
          <#break>
        <#case "google">
          <#assign color="hover:bg-provider-google/10">
          <#break>
        <#case "instagram">
          <#assign color="hover:bg-provider-instagram/10">
          <#break>
        <#case "linkedin">
          <#assign color="hover:bg-provider-linkedin/10">
          <#break>
        <#case "microsoft">
          <#assign color="hover:bg-provider-microsoft/10">
          <#break>
        <#case "oidc">
          <#assign color="hover:bg-provider-oidc/10">
          <#break>
        <#case "openshift-v3">
          <#assign color="hover:bg-provider-openshift/10">
          <#break>
        <#case "openshift-v4">
          <#assign color="hover:bg-provider-openshift/10">
          <#break>
        <#case "paypal">
          <#assign color="hover:bg-provider-paypal/10">
          <#break>
        <#case "stackoverflow">
          <#assign color="hover:bg-provider-stackoverflow/10">
          <#break>
        <#case "twitter">
          <#assign color="hover:bg-provider-twitter/10">
          <#break>
        <#default>
          <#assign color="hover:bg-secondary-100">
      </#switch>

      <a
        class="text-white flex align-center justify-center py-2 rounded-lg"
        data-provider="${provider.alias}"
        href="${provider.loginUrl}"
        type="button"
        style="background: #0e4fa7"
      >
        <img style="margin-right: 1rem"
        src="https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/KTH_Royal_Institute_of_Technology_logo.svg/1200px-KTH_Royal_Institute_of_Technology_logo.svg.png" 
        class="h-6 w-6 mr-2"
        alt="KTH logo"/>
       <div class="grow"> </div>
       ${provider.displayName!} 
      </a>
    </#list>
  </div>
</#macro>
