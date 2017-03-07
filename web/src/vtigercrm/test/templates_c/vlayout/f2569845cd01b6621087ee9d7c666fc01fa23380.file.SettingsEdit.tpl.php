<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 07:28:52
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/SettingsEdit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:40581560558be6134d26665-46246989%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f2569845cd01b6621087ee9d7c666fc01fa23380' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/SettingsEdit.tpl',
      1 => 1488623363,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '40581560558be6134d26665-46246989',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
    'SERVERNAME' => 0,
    'MAILBOX' => 0,
    'FOLDERS' => 0,
    'FOLDER' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be61350b287',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be61350b287')) {function content_58be61350b287($_smarty_tpl) {?>

<div class="editViewContainer"><form action="javascript:void(0);" method="POST" id="EditView"><div class="widget_header row-fluid"><h3><?php echo vtranslate('JSLBL_Settings',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</h3></div><hr><table class="table table-bordered blockContainer showInlineTable"><thead><tr><th class="blockHeader" colspan="4"><strong><?php echo vtranslate('LBL_CREATE_MAILBOX',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></th></tr></thead><tbody><tr><td class="fieldLabel"><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_SELECT_ACCOUNT_TYPE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" style="width: 70%;"><select id="_mbox_helper" class="chzn-select small" onchange="MailManager.handle_settings_confighelper(this);"><option value=''><?php echo vtranslate('JSLBL_Choose_Server_Type',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value='gmail' <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value=='gmail'){?> selected <?php }?>><?php echo vtranslate('JSLBL_Gmail',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value='yahoo' <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value=='yahoo'){?> selected <?php }?>><?php echo vtranslate('JSLBL_Yahoo',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value='fastmail' <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value=='fastmail'){?> selected <?php }?>><?php echo vtranslate('JSLBL_Fastmail',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value='other' <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value=='other'){?> selected <?php }?>><?php echo vtranslate('JSLBL_Other',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option></select></td></tr><tr class="settings_details" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value==''){?> style="display:none;"<?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><font color="red">*</font> <?php echo vtranslate('LBL_Mail_Server',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap style="width: 70%;"><input name="_mbox_server" value="<?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->server();?>
" data-validation-engine="validate[required]]" type="text" class="detailedViewTextBox" onblur="this.className='detailedViewTextBox'" onfocus="this.className='detailedViewTextBoxOn'" placeholder="mail.company.com or 192.168.X.X"></td></tr><tr class="settings_details" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value==''){?> style="display:none;"<?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><font color="red">*</font> <?php echo vtranslate('LBL_Username',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap><input name="_mbox_user" id="_mbox_user" onkeypress="MailManager.showSelectFolderDesc();" value="<?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->username();?>
" type="text" class="detailedViewTextBox" onblur="this.className='detailedViewTextBox'" onfocus="this.className='detailedViewTextBoxOn'" placeholder="<?php echo vtranslate('LBL_Your_Mailbox_Account',$_smarty_tpl->tpl_vars['MODULE']->value);?>
"></td></tr><tr class="settings_details" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value==''){?> style="display:none;"<?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><font color="red">*</font> <?php echo vtranslate('LBL_Password',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap><input name="_mbox_pwd" id="_mbox_pwd" value="<?php echo $_smarty_tpl->tpl_vars['MAILBOX']->value->password();?>
" type="password" class="detailedViewTextBox" onblur="this.className='detailedViewTextBox'" onfocus="this.className='detailedViewTextBoxOn'" placeholder="<?php echo vtranslate('LBL_Account_Password',$_smarty_tpl->tpl_vars['MODULE']->value);?>
"></td></tr><tr class="additional_settings" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value!='other'){?> style="display:none;" <?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_Protocol',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap style="width: 70%;"><input type="radio" name="_mbox_protocol" value="IMAP2" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->protocol(),'imap2')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_Imap2',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<input type="radio" name="_mbox_protocol" value="IMAP4" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->protocol(),'imap4')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_Imap4',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</td></tr><tr class="additional_settings" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value!='other'){?> style="display:none;" <?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_SSL_Options',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap><input type="radio" name="_mbox_ssltype" value="notls" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->ssltype(),'notls')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_No_TLS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<input type="radio" name="_mbox_ssltype" value="tls" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->ssltype(),'tls')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_TLS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<input type="radio" name="_mbox_ssltype" value="ssl" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->ssltype(),'ssl')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_SSL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</td></tr><tr class="additional_settings" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value!='other'){?> style="display:none;" <?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_Certificate_Validations',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap><input type="radio" name="_mbox_certvalidate" value="validate-cert" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->certvalidate(),'validate-cert')===0){?>checked=true<?php }?> > <?php echo vtranslate('LBL_Validate_Cert',$_smarty_tpl->tpl_vars['MODULE']->value);?>
<input type="radio" name="_mbox_certvalidate" value="novalidate-cert" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->certvalidate(),'novalidate-cert')===0){?>checked=true<?php }?>> <?php echo vtranslate('LBL_Do_Not_Validate_Cert',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</td></tr><tr class="refresh_settings" <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?><?php }else{ ?> style="display:none;" <?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_REFRESH_TIME',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType" nowrap  style="width: 70%;"><select name="_mbox_refresh_timeout"><option value="" <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value->refreshTimeOut()==''){?>selected<?php }?>><?php echo vtranslate('LBL_NONE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value="300000" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->refreshTimeOut(),'300000')==0){?>selected<?php }?>><?php echo vtranslate('LBL_5_MIN',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><option value="600000" <?php if (strcasecmp($_smarty_tpl->tpl_vars['MAILBOX']->value->refreshTimeOut(),'600000')==0){?>selected<?php }?>><?php echo vtranslate('LBL_10_MIN',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option></select></td></tr><tr class="settings_details" <?php if ($_smarty_tpl->tpl_vars['SERVERNAME']->value==''){?> style="display:none;"<?php }?>><td class="fieldLabel" nowrap><label class="muted pull-right marginRight10px"><?php echo vtranslate('LBL_CHOOSE_EXISTING_FOLDER',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</label></td><td class="fieldValue narrowWidthType selectFolderValue <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value->folder()==''){?>hide<?php }?>" nowrap style="width: 70%;"><select name="_mbox_sent_folder"><?php  $_smarty_tpl->tpl_vars['FOLDER'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FOLDER']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['FOLDERS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FOLDER']->key => $_smarty_tpl->tpl_vars['FOLDER']->value){
$_smarty_tpl->tpl_vars['FOLDER']->_loop = true;
?><option value="<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
" <?php if ($_smarty_tpl->tpl_vars['FOLDER']->value->name()==$_smarty_tpl->tpl_vars['MAILBOX']->value->folder()){?> selected <?php }?>><?php echo $_smarty_tpl->tpl_vars['FOLDER']->value->name();?>
</option><?php } ?></select><span class="mm_blur"> <?php echo vtranslate('LBL_CHOOSE_FOLDER',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</span></td><td class="fieldValue narrowWidthType selectFolderDesc alert alert-info <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value->folder()!=''){?>hide<?php }?>" nowrap style="width: 70%;"><?php echo vtranslate('LBL_CHOOSE_FOLDER_DESC',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</td></tr></tbody></table><br><div class="row-fluid refresh_settings" <?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?><?php }else{ ?>style="display:none;" <?php }?>><div class="pull-right"><button class="btn btn-success" onclick="MailManager.save_settings(this.form);"><strong><?php echo vtranslate('LBL_SAVE_BUTTON_LABEL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?><a href="javascript:;" class="cancelLink" onclick="MailManager.close_settings();"><?php echo vtranslate('LBL_CANCEL_BUTTON_LABEL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</button><?php }?></div></div></form></div><?php }} ?>