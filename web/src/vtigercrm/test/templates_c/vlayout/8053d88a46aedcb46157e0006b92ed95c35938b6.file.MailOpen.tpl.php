<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 09:56:11
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/MailOpen.tpl" */ ?>
<?php /*%%SmartyHeaderCode:189674473358be83bb869836-12188315%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8053d88a46aedcb46157e0006b92ed95c35938b6' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/MailOpen.tpl',
      1 => 1488623363,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '189674473358be83bb869836-12188315',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MAIL' => 0,
    'FOLDER' => 0,
    'MODULE' => 0,
    'SENDER' => 0,
    'RECEPIENT' => 0,
    'CC' => 0,
    'BCC' => 0,
    'ATTACHMENTS' => 0,
    'ATTACHNAME' => 0,
    'INLINE_ATT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be83bba2f4b',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be83bba2f4b')) {function content_58be83bba2f4b($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include '/var/www/html/vtigercrm/libraries/Smarty/libs/plugins/modifier.escape.php';
?>

<div class="detailViewContainer" id="open_email_con" name="open_email_con"><div class="row-fluid detailViewTitle"><div class="span12"><div class="row-fluid"><div><h3 id="_mailopen_subject"><?php echo $_smarty_tpl->tpl_vars['MAIL']->value->subject();?>
</h3></div></div><br><div class="row-fluid"><div class="btn-toolbar span10"><div class="btn-group"><button class="btn pull-left" onclick="MailManager.mail_close();" href='javascript:void(0);'><strong>&#171; <?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
</strong></button></div><div class="btn-group"><button class="btn" onclick="MailManager.mail_reply(true);"><strong><?php echo vtranslate('LBL_Reply_All',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><button class="btn" onclick="MailManager.mail_reply(false);"><strong><?php echo vtranslate('LBL_Reply',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><button class="btn" onclick="MailManager.mail_forward(<?php echo $_smarty_tpl->tpl_vars['MAIL']->value->msgno();?>
);"><strong><?php echo vtranslate('LBL_Forward',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><button class="btn" onclick="MailManager.mail_mark_unread('<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
', <?php echo $_smarty_tpl->tpl_vars['MAIL']->value->msgno();?>
);"><strong><?php echo vtranslate('LBL_Mark_As_Unread',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><button class="btn" onclick="MailManager.mail_print();"><strong><?php echo vtranslate('LBL_Print',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button></div><div class="btn-group"><button class="btn btn-danger" id = 'mail_delete_dtlview' onclick="MailManager.maildelete('<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
',<?php echo $_smarty_tpl->tpl_vars['MAIL']->value->msgno();?>
,true);"><strong><?php echo vtranslate('LBL_Delete',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button></div></div><div class="span2"><span class="btn-group pull-right"><button class="btn"<?php if ($_smarty_tpl->tpl_vars['MAIL']->value->msgno()<$_smarty_tpl->tpl_vars['FOLDER']->value->count()){?>onclick="MailManager.mail_open( '<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
', <?php echo $_smarty_tpl->tpl_vars['MAIL']->value->msgno(1);?>
);"<?php }else{ ?>disabled="disabled"<?php }?>><span class="icon-chevron-left"></span></button><button class="btn"<?php if ($_smarty_tpl->tpl_vars['MAIL']->value->msgno()>1){?>onclick="MailManager.mail_open( '<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
', <?php echo $_smarty_tpl->tpl_vars['MAIL']->value->msgno(-1);?>
);"<?php }else{ ?>disabled="disabled"<?php }?>><span class="icon-chevron-right"></span></button></span></div></div></div></div><div class="detailViewInfo row-fluid"><div class="span12 details"><div class="contents" style="padding-right: 2.2%;"><div class="row-fluid"><div class="span6"><span id="_mailopen_msgid_" style="display:none;"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['MAIL']->value->_uniqueid, 'UTF-8');?>
</span><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_FROM',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span id="_mailopen_from"><?php  $_smarty_tpl->tpl_vars['SENDER'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['SENDER']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MAIL']->value->from(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['SENDER']->key => $_smarty_tpl->tpl_vars['SENDER']->value){
$_smarty_tpl->tpl_vars['SENDER']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['SENDER']->value;?>
<?php } ?></span><br><?php if ($_smarty_tpl->tpl_vars['MAIL']->value->to()){?><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_TO',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span id="_mailopen_to"><?php  $_smarty_tpl->tpl_vars['RECEPIENT'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['RECEPIENT']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MAIL']->value->to(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["TO"]['index']=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['RECEPIENT']->key => $_smarty_tpl->tpl_vars['RECEPIENT']->value){
$_smarty_tpl->tpl_vars['RECEPIENT']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["TO"]['index']++;
?><?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['TO']['index']>0){?>, <?php }?><?php echo $_smarty_tpl->tpl_vars['RECEPIENT']->value;?>
<?php } ?></span><br><?php }?><?php if ($_smarty_tpl->tpl_vars['MAIL']->value->cc()){?><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_CC',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span id="_mailopen_cc"><?php  $_smarty_tpl->tpl_vars['CC'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['CC']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MAIL']->value->cc(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["CC"]['index']=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['CC']->key => $_smarty_tpl->tpl_vars['CC']->value){
$_smarty_tpl->tpl_vars['CC']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["CC"]['index']++;
?><?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['CC']['index']>0){?>, <?php }?><?php echo $_smarty_tpl->tpl_vars['CC']->value;?>
<?php } ?></span><br><?php }?><?php if ($_smarty_tpl->tpl_vars['MAIL']->value->bcc()){?><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_BCC',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span id="_mailopen_cc"><?php  $_smarty_tpl->tpl_vars['BCC'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['BCC']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MAIL']->value->bcc(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["BCC"]['index']=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['BCC']->key => $_smarty_tpl->tpl_vars['BCC']->value){
$_smarty_tpl->tpl_vars['BCC']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["BCC"]['index']++;
?><?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['BCC']['index']>0){?>, <?php }?><?php echo $_smarty_tpl->tpl_vars['BCC']->value;?>
<?php } ?></span><br><?php }?><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_Date',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span id="_mailopen_date"><?php echo $_smarty_tpl->tpl_vars['MAIL']->value->date();?>
</span><br><?php if ($_smarty_tpl->tpl_vars['ATTACHMENTS']->value){?><label class="displayInlineBlock"><strong><?php echo vtranslate('LBL_Attachments',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 :&nbsp;</strong></label><span><?php  $_smarty_tpl->tpl_vars['ATTACHVALUE'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ATTACHVALUE']->_loop = false;
 $_smarty_tpl->tpl_vars['ATTACHNAME'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ATTACHMENTS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['ATTACHVALUE']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']["attach"]['total'] = $_smarty_tpl->tpl_vars['ATTACHVALUE']->total;
foreach ($_from as $_smarty_tpl->tpl_vars['ATTACHVALUE']->key => $_smarty_tpl->tpl_vars['ATTACHVALUE']->value){
$_smarty_tpl->tpl_vars['ATTACHVALUE']->_loop = true;
 $_smarty_tpl->tpl_vars['ATTACHNAME']->value = $_smarty_tpl->tpl_vars['ATTACHVALUE']->key;
?><?php if ($_smarty_tpl->tpl_vars['INLINE_ATT']->value[$_smarty_tpl->tpl_vars['ATTACHNAME']->value]==null){?><img border=0 src="<?php echo vimage_path('attachments.gif');?>
"><a href="index.php?module=<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
&view=Index&_operation=mail&_operationarg=attachment_dld&_muid=<?php echo $_smarty_tpl->tpl_vars['MAIL']->value->muid();?>
&_atname=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ATTACHNAME']->value, 'htmlall', 'UTF-8');?>
"><?php echo $_smarty_tpl->tpl_vars['ATTACHNAME']->value;?>
</a>&nbsp;<?php }?><?php } ?><input type="hidden" id="_mail_attachmentcount_" value="<?php echo $_smarty_tpl->getVariable('smarty')->value['foreach']['attach']['total'];?>
" ></span><br><?php }?></div><div class="span6"><div class="pull-right"><strong><?php echo vtranslate('LBL_RELATED_RECORDS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong><button class="small" id="_mailrecord_findrel_btn_" onclick="MailManager.mail_find_relationship();"><?php echo vtranslate('JSLBL_Find_Relation_Now',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</button><div id="_mailrecord_relationshipdiv_"></div></div></div></div><hr><br><div class="row-fluid"><div class='mm_body' id="_mailopen_body"><?php echo $_smarty_tpl->tpl_vars['MAIL']->value->body();?>
</div></div></div></div></div><?php }} ?>