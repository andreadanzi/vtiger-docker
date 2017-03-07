<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 07:33:31
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Settings/Roles/EditView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:43577051158be624b863a67-08408613%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c721cb8b7aff964d70f010b1d7dbe60028ff75e5' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Settings/Roles/EditView.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '43577051158be624b863a67-08408613',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
    'QUALIFIED_MODULE' => 0,
    'RECORD_MODEL' => 0,
    'RECORD_ID' => 0,
    'MODE' => 0,
    'PROFILE_ID' => 0,
    'HAS_PARENT' => 0,
    'PROFILE_DIRECTLY_RELATED_TO_ROLE' => 0,
    'ALL_PROFILES' => 0,
    'PROFILE' => 0,
    'ROLE_PROFILES' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be624b9dced',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be624b9dced')) {function content_58be624b9dced($_smarty_tpl) {?>
<div class="container-fluid"><br><h3 class="themeTextColor"><?php echo vtranslate($_smarty_tpl->tpl_vars['MODULE']->value,$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</h3><hr><form name="EditRole" action="index.php" method="post" id="EditView" class="form-horizontal"><input type="hidden" name="module" value="Roles"><input type="hidden" name="action" value="Save"><input type="hidden" name="parent" value="Settings"><?php $_smarty_tpl->tpl_vars['RECORD_ID'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getId(), null, 0);?><input type="hidden" name="record" value="<?php echo $_smarty_tpl->tpl_vars['RECORD_ID']->value;?>
" /><input type="hidden" name="mode" value="<?php echo $_smarty_tpl->tpl_vars['MODE']->value;?>
"><input type="hidden" name="profile_directly_related_to_role_id" value="<?php echo $_smarty_tpl->tpl_vars['PROFILE_ID']->value;?>
" /><?php ob_start();?><?php if ($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getParent()){?><?php echo "true";?><?php }?><?php $_tmp1=ob_get_clean();?><?php $_smarty_tpl->tpl_vars['HAS_PARENT'] = new Smarty_variable($_tmp1, null, 0);?><?php if ($_smarty_tpl->tpl_vars['HAS_PARENT']->value){?><input type="hidden" name="parent_roleid" value="<?php echo $_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getParent()->getId();?>
"><?php }?><div style="padding:20px;"><div class="row-fluid"><label class="span3"><strong><?php echo vtranslate('LBL_NAME',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
<span class="redColor">*</span>: </strong></label><input type="text" class="fieldValue span7" name="rolename" id="profilename" value="<?php echo $_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getName();?>
" data-validation-engine='validate[required]'  /></div><br><div class="row-fluid"><label class="span3"><strong><?php echo vtranslate('LBL_REPORTS_TO',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
: </strong></label><div class="span8 fieldValue"><input type="hidden" name="parent_roleid" <?php if ($_smarty_tpl->tpl_vars['HAS_PARENT']->value){?>value="<?php echo $_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getParent()->getId();?>
"<?php }?>><input type="text" class="input-large" name="parent_roleid_display" <?php if ($_smarty_tpl->tpl_vars['HAS_PARENT']->value){?>value="<?php echo $_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getParent()->getName();?>
"<?php }?> readonly></div></div><br><div class="row-fluid"><label class="fieldLabel span3"><strong><?php echo vtranslate('LBL_CAN_ASSIGN_RECORDS_TO',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
: </strong></label><div class="row-fluid span9 fieldValue"><div class="span"><input type="radio" value="1"<?php if (!$_smarty_tpl->tpl_vars['RECORD_MODEL']->value->get('allowassignedrecordsto')){?> checked=""<?php }?> <?php if ($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->get('allowassignedrecordsto')=='1'){?> checked="" <?php }?> name="allowassignedrecordsto" data-handler="new" class="alignTop"/>&nbsp;<span><?php echo vtranslate('LBL_ALL_USERS',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</span></div><div class="span1">&nbsp;</div><div class="span"><input type="radio" value="2" <?php if ($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->get('allowassignedrecordsto')=='2'){?> checked="" <?php }?> name="allowassignedrecordsto" data-handler="new" class="alignTop"/>&nbsp;<span><?php echo vtranslate('LBL_USERS_WITH_SAME_OR_LOWER_LEVEL',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</span></div><div class="span1">&nbsp;</div><div class="span"><input type="radio" value="3" <?php if ($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->get('allowassignedrecordsto')=='3'){?> checked="" <?php }?> name="allowassignedrecordsto" data-handler="new" class="alignTop"/>&nbsp;<span><?php echo vtranslate('LBL_USERS_WITH_LOWER_LEVEL',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</span></div></div></div><br><div class="row-fluid"><label class="span3"><strong><?php echo vtranslate('LBL_PRIVILEGES',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
:</strong></label><div class="row-fluid span8 fieldValue"><div class="span"><input type="radio" value="1" <?php if ($_smarty_tpl->tpl_vars['PROFILE_DIRECTLY_RELATED_TO_ROLE']->value){?> checked="" <?php }?> name="profile_directly_related_to_role" data-handler="new" class="alignTop"/>&nbsp;<span><?php echo vtranslate('LBL_ASSIGN_NEW_PRIVILEGES',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</span></div><div class="span1">&nbsp;</div><div class="span"><input type="radio" value="0" <?php if ($_smarty_tpl->tpl_vars['PROFILE_DIRECTLY_RELATED_TO_ROLE']->value==false){?> checked="" <?php }?> name="profile_directly_related_to_role" data-handler="existing" class="alignTop"/>&nbsp;<span><?php echo vtranslate('LBL_ASSIGN_EXISTING_PRIVILEGES',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</span></div></div></div><br><div class="row-fluid hide padding20px boxSizingBorderBox contentsBackground" data-content="new"><div class="fieldValue span12"></div></div><div class="row-fluid hide" data-content="existing"><div class="fieldValue row-fluid"><?php $_smarty_tpl->tpl_vars["ROLE_PROFILES"] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD_MODEL']->value->getProfiles(), null, 0);?><select class="select2" multiple="true" id="profilesList" name="profiles[]" data-placeholder="<?php echo vtranslate('LBL_CHOOSE_PROFILES',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
" style="width: 800px"><?php  $_smarty_tpl->tpl_vars['PROFILE'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['PROFILE']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ALL_PROFILES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['PROFILE']->key => $_smarty_tpl->tpl_vars['PROFILE']->value){
$_smarty_tpl->tpl_vars['PROFILE']->_loop = true;
?><?php if ($_smarty_tpl->tpl_vars['PROFILE']->value->isDirectlyRelated()==false){?><option value="<?php echo $_smarty_tpl->tpl_vars['PROFILE']->value->getId();?>
" <?php if (isset($_smarty_tpl->tpl_vars['ROLE_PROFILES']->value[$_smarty_tpl->tpl_vars['PROFILE']->value->getId()])){?>selected="true"<?php }?>><?php echo $_smarty_tpl->tpl_vars['PROFILE']->value->getName();?>
</option><?php }?><?php } ?></select></div></div></div><div class="textAlignCenter"><button class="btn btn-success" type="submit"><?php echo vtranslate('LBL_SAVE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</button><a class="cancelLink" onclick="javascript:window.history.back();" type="reset"><?php echo vtranslate('LBL_CANCEL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</a></div><br></form></div><?php }} ?>