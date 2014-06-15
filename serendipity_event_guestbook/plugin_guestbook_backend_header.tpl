{function name=feedback}{* message and error feedback for approve, view, add issues *}
    <div class="msg_error">
        <span class="icon-attention-circled"></span> <strong>{$msg_header}</strong>
    {if $guestbook_messages}
        <ul>
        {foreach $guestbook_messages AS $msg}
            <li>{$msg}</li>
        {/foreach}
        </ul>
    {/if}
    </div>
{/function}
{* define the function *}
{function name=menu level=0}
  <ul class="level{$level}">
  {foreach $data as $entry}
    {if is_array($entry)}
      <li>{$entry@key}</li>
      {call name=menu data=$entry level=$level+1}
    {else}
      <li>{$entry}</li>
    {/if}
  {/foreach}
  </ul>
{/function}


{if $gb_isnav}
    <div class="clearfix gbnav">
        <ul>
            <li{$gb_liva}>
                <a href="{$serendipityHTTPPath}serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=guestbook&amp;serendipity[guestbookcategory]=gbview">{$CONST.PLUGIN_GUESTBOOK_ADMIN_VIEW}</a>
            </li>
        {if $gb_moderate === true}
            <li{$gb_liapa}>
                <a href="{$serendipityHTTPPath}serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=guestbook&amp;serendipity[guestbookcategory]=gbapp">{$CONST.PLUGIN_GUESTBOOK_ADMIN_APP}</a>
            </li>
        {/if}

            <li{$gb_liada}>
                <a href="{$serendipityHTTPPath}serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=guestbook&amp;serendipity[guestbookcategory]=gbadd">{$CONST.PLUGIN_GUESTBOOK_ADMIN_ADD}</a>
            </li>
            <li{$gb_lida}>
                <a href="{$serendipityHTTPPath}serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=guestbook&amp;serendipity[guestbookcategory]=gbdb">{$CONST.PLUGIN_GUESTBOOK_ADMIN_DBC}</a>
            </li>
        </ul>
    </div>
{/if}
