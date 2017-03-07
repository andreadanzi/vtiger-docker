<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 09:56:12
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/Relationship.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14646891558be83bc1c4920-11589997%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd911b5d164e1cd5a0aab9eb276b91b8c376fb1fa' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/MailManager/Relationship.tpl',
      1 => 1488623363,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14646891558be83bc1c4920-11589997',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'LINKEDTO' => 0,
    'moduleName' => 0,
    'LINK_TO_AVAILABLE_ACTIONS' => 0,
    'MODULE' => 0,
    'LOOKUPS' => 0,
    'RECORDS' => 0,
    'RECORD' => 0,
    'MODULES' => 0,
    'SINGLE_MODLABEL' => 0,
    'LOOKRECATLEASTONE' => 0,
    'ALLOWED_MODULES' => 0,
    'FOLDER' => 0,
    'MSGNO' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be83bc3014a',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be83bc3014a')) {function content_58be83bc3014a($_smarty_tpl) {?>

<form method="POST" action="javascript:void(0);" style="display:inline;" name="relationship"><?php if ($_smarty_tpl->tpl_vars['LINKEDTO']->value){?><table width="100%" cellpadding="2px" cellspacing=0 border=0><tr><td width="4px"><input type="radio" name="_mlinkto" value="<?php echo $_smarty_tpl->tpl_vars['LINKEDTO']->value['record'];?>
"></td><td><?php echo $_smarty_tpl->tpl_vars['LINKEDTO']->value['detailviewlink'];?>
</td><td><?php echo vtranslate($_smarty_tpl->tpl_vars['LINKEDTO']->value['module'],$_smarty_tpl->tpl_vars['moduleName']->value);?>
</td></tr><tr><td align="center" colspan="3"><?php if (count($_smarty_tpl->tpl_vars['LINK_TO_AVAILABLE_ACTIONS']->value)!=0){?><select class="small" onchange="MailManager.mail_associate_actions(this.form);" name="_mlinktotype"  id="_mlinktotype"><option value="" class="mm_blur"><?php echo vtranslate('LBL_ACTIONS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><?php  $_smarty_tpl->tpl_vars['moduleName'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['moduleName']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['LINK_TO_AVAILABLE_ACTIONS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['moduleName']->key => $_smarty_tpl->tpl_vars['moduleName']->value){
$_smarty_tpl->tpl_vars['moduleName']->_loop = true;
?><option value="<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
"><?php echo vtranslate("LBL_MAILMANAGER_ADD_".($_smarty_tpl->tpl_vars['moduleName']->value),'MailManager');?>
</option><?php } ?></select><?php }?></td></tr></table><?php }?><?php if ($_smarty_tpl->tpl_vars['LOOKUPS']->value){?><?php $_smarty_tpl->tpl_vars["LOOKRECATLEASTONE"] = new Smarty_variable(false, null, 0);?><table width="100%" cellpadding=3 cellspacing=0 border=0><?php  $_smarty_tpl->tpl_vars['RECORDS'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['RECORDS']->_loop = false;
 $_smarty_tpl->tpl_vars['MODULE'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['LOOKUPS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['RECORDS']->key => $_smarty_tpl->tpl_vars['RECORDS']->value){
$_smarty_tpl->tpl_vars['RECORDS']->_loop = true;
 $_smarty_tpl->tpl_vars['MODULE']->value = $_smarty_tpl->tpl_vars['RECORDS']->key;
?><?php  $_smarty_tpl->tpl_vars['RECORD'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['RECORD']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['RECORDS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['RECORD']->key => $_smarty_tpl->tpl_vars['RECORD']->value){
$_smarty_tpl->tpl_vars['RECORD']->_loop = true;
?><?php $_smarty_tpl->tpl_vars["LOOKRECATLEASTONE"] = new Smarty_variable(true, null, 0);?><tr><td><input type="radio" name="_mlinkto" value="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value['id'];?>
" style="align: absmiddle;"></td><td align=left><a target="_blank" href='index.php?module=<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
&view=Detail&record=<?php echo $_smarty_tpl->tpl_vars['RECORD']->value['id'];?>
'><?php echo textlength_check($_smarty_tpl->tpl_vars['RECORD']->value['label']);?>
</a></td><td align=right><?php $_smarty_tpl->tpl_vars['RECORD_MODNAME'] = new Smarty_variable($_smarty_tpl->tpl_vars['MODULES']->value[$_smarty_tpl->tpl_vars['MODULE']->value]['name'], null, 0);?><?php $_smarty_tpl->tpl_vars["SINGLE_MODLABEL"] = new Smarty_variable("SINGLE_".($_smarty_tpl->tpl_vars['RECORD_MODNAME']->value), null, 0);?><?php echo vtranslate($_smarty_tpl->tpl_vars['SINGLE_MODLABEL']->value,$_smarty_tpl->tpl_vars['MODULE']->value);?>
</td></tr><?php } ?><?php } ?><?php if ($_smarty_tpl->tpl_vars['LOOKRECATLEASTONE']->value){?><tr><td colspan="3" align="center"><?php if (count($_smarty_tpl->tpl_vars['LINK_TO_AVAILABLE_ACTIONS']->value)!=0){?><select class="small" onchange="MailManager.mail_associate_actions(this.form);" name="_mlinktotype"  id="_mlinktotype"><option value="" class="mm_blur"><?php echo vtranslate('LBL_ACTIONS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option><?php  $_smarty_tpl->tpl_vars['moduleName'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['moduleName']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['LINK_TO_AVAILABLE_ACTIONS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['moduleName']->key => $_smarty_tpl->tpl_vars['moduleName']->value){
$_smarty_tpl->tpl_vars['moduleName']->_loop = true;
?><option value="<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
"><?php echo vtranslate("LBL_MAILMANAGER_ADD_".($_smarty_tpl->tpl_vars['moduleName']->value),'MailManager');?>
</option><?php } ?></select><?php }?></td></tr><?php }else{ ?><tr><td align="center" colspan=3><?php echo vtranslate('LBL_No_Matching_Record_Found','MailManager');?>
<br/><?php if (count($_smarty_tpl->tpl_vars['ALLOWED_MODULES']->value)!=0){?><select class="small" onchange="MailManager.mail_associate_create_wizard(this.form);" name="_mlinktotype"  id="_mlinktotype"><option value="" class="mm_blur"><?php echo vtranslate('LBL_ACTIONS','MailManager');?>
</option><?php  $_smarty_tpl->tpl_vars['moduleName'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['moduleName']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ALLOWED_MODULES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['moduleName']->key => $_smarty_tpl->tpl_vars['moduleName']->value){
$_smarty_tpl->tpl_vars['moduleName']->_loop = true;
?><option value="<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
"><?php echo vtranslate("LBL_MAILMANAGER_ADD_".($_smarty_tpl->tpl_vars['moduleName']->value),'MailManager');?>
</option><?php } ?></select><?php }?></td></tr><?php }?></table><?php }else{ ?><?php if ($_smarty_tpl->tpl_vars['LINKEDTO']->value==''){?><table width="100%" cellpadding=0 cellspacing=0 border=0><tr><td align="center" colspan=3><?php echo vtranslate('LBL_No_Matching_Record_Found','MailManager');?>
<br/><?php if (count($_smarty_tpl->tpl_vars['ALLOWED_MODULES']->value)!=0){?><select class="small" onchange="MailManager.mail_associate_create_wizard(this.form);" name="_mlinktotype"  id="_mlinktotype"><option value="" class="mm_blur"><?php echo vtranslate('LBL_ACTIONS','MailManager');?>
</option><?php  $_smarty_tpl->tpl_vars['moduleName'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['moduleName']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ALLOWED_MODULES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['moduleName']->key => $_smarty_tpl->tpl_vars['moduleName']->value){
$_smarty_tpl->tpl_vars['moduleName']->_loop = true;
?><option value="<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
"><?php echo vtranslate("LBL_MAILMANAGER_ADD_".($_smarty_tpl->tpl_vars['moduleName']->value),'MailManager');?>
</option><?php } ?></select><?php }?></td></tr></table><?php }?><?php }?><input type="hidden" class="small" name="_folder" value="<?php echo $_smarty_tpl->tpl_vars['FOLDER']->value;?>
"><input type="hidden" class="small" name="_msgno" value="<?php echo $_smarty_tpl->tpl_vars['MSGNO']->value;?>
"></form><?php }} ?>