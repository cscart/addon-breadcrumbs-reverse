<div id="breadcrumbs_{$block.block_id}">

{if $breadcrumbs && $breadcrumbs|@sizeof > 1}
    <div class="ty-breadcrumbs clearfix">
        {strip}
            {section loop=$breadcrumbs name="bc" step=-1}
                {if !$smarty.section.bc.first}
                    <i class="icon-right-open-thin"></i>
                    <span class="ty-breadcrumbs__slash">/</span>
                {/if}
                {if $breadcrumbs[bc].link}
                    <a href="{$breadcrumbs[bc].link|fn_url}" class="ty-breadcrumbs__a{if $additional_class} {$additional_class}{/if}"{if $bc.nofollow} rel="nofollow"{/if}>{$breadcrumbs[bc].title|strip_tags|escape:"html" nofilter}</a>
                {else}
                    <span class="ty-breadcrumbs__current">{$breadcrumbs[bc].title|strip_tags|escape:"html" nofilter}</span>
                {/if}
            {/section}
            {include file="common/view_tools.tpl"}
        {/strip}
    </div>
{/if}

<!--breadcrumbs_{$block.block_id}--></div>
