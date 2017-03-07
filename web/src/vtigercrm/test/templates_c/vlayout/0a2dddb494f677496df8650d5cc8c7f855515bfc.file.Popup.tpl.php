<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 07:42:26
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Settings/Roles/Popup.tpl" */ ?>
<?php /*%%SmartyHeaderCode:172380007858be64629df917-02128239%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0a2dddb494f677496df8650d5cc8c7f855515bfc' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Settings/Roles/Popup.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '172380007858be64629df917-02128239',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'COMPANY_LOGO' => 0,
    'ROOT_ROLE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be6462a5c3a',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be6462a5c3a')) {function content_58be6462a5c3a($_smarty_tpl) {?>
<div id="popupPageContainer" class="popupContainer" style="min-height: 600px"><div class="popupContainer padding1per"><div class="row-fluid"><div class="span6"><span><h3><?php echo vtranslate('LBL_ASSIGN_ROLE',"Settings:Roles");?>
</h3></span></div><div class="span6 pull-right"><span class="logo pull-right" style="float: none"><img src="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('imagepath');?>
" title="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('title');?>
" alt="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('alt');?>
"/></div></div><hr></div><div class="popupContainer row-fluid"><div class="clearfix treeView"><ul><li data-role="<?php echo $_smarty_tpl->tpl_vars['ROOT_ROLE']->value->getParentRoleString();?>
" data-roleid="<?php echo $_smarty_tpl->tpl_vars['ROOT_ROLE']->value->getId();?>
"><div><a href="javascript:;" class="btn btn-inverse"><?php echo $_smarty_tpl->tpl_vars['ROOT_ROLE']->value->getName();?>
</a></div><?php $_smarty_tpl->tpl_vars["ROLE"] = new Smarty_variable($_smarty_tpl->tpl_vars['ROOT_ROLE']->value, null, 0);?><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path("RoleTree.tpl","Settings:Roles"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</li></ul></div></div></div><script type="text/javascript">jQuery('body').ready(function(){Settings_Roles_Js.initPopupView()});</script><?php }} ?>