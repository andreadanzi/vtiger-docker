<?php /* Smarty version Smarty-3.1.7, created on 2017-03-04 11:20:45
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RecentActivities.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6792149458baa30d739115-65633223%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f59f9f8f0859131a40073578b28048cc82d4cbd5' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RecentActivities.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6792149458baa30d739115-65633223',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'PAGING_MODEL' => 0,
    'RECENT_ACTIVITIES' => 0,
    'RECENT_ACTIVITY' => 0,
    'RELATION' => 0,
    'PROCEED' => 0,
    'MODULE_NAME' => 0,
    'FIELDMODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58baa30d8e98b',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58baa30d8e98b')) {function content_58baa30d8e98b($_smarty_tpl) {?>
<div class="recentActivitiesContainer" id="updates"><input type="hidden" id="updatesCurrentPage" value="<?php echo $_smarty_tpl->tpl_vars['PAGING_MODEL']->value->get('page');?>
" /><div><?php if (!empty($_smarty_tpl->tpl_vars['RECENT_ACTIVITIES']->value)){?><ul class="unstyled"><?php  $_smarty_tpl->tpl_vars['RECENT_ACTIVITY'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['RECENT_ACTIVITIES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->key => $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value){
$_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['PROCEED'] = new Smarty_variable(true, null, 0);?><?php if (($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRelationLink())||($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRelationUnLink())){?><?php $_smarty_tpl->tpl_vars['RELATION'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getRelationInstance(), null, 0);?><?php if (!($_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord())){?><?php $_smarty_tpl->tpl_vars['PROCEED'] = new Smarty_variable(false, null, 0);?><?php }?><?php }?><?php if ($_smarty_tpl->tpl_vars['PROCEED']->value){?><?php if ($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isCreate()){?><li><div><span><strong><?php echo $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getModifiedBy()->getName();?>
</strong> <?php echo vtranslate('LBL_CREATED',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</span><span class="pull-right"><p class="muted"><small title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getParent()->get('createdtime'));?>
"><?php echo Vtiger_Util_Helper::formatDateDiffInStrings($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getParent()->get('createdtime'));?>
</small></p></span></div></li><?php }elseif($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isUpdate()){?><li><div><span><strong><?php echo $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getModifiedBy()->getDisplayName();?>
</strong> <?php echo vtranslate('LBL_UPDATED',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</span><span class="pull-right"><p class="muted"><small title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getActivityTime());?>
"><?php echo Vtiger_Util_Helper::formatDateDiffInStrings($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getActivityTime());?>
</small></p></span></div><?php  $_smarty_tpl->tpl_vars['FIELDMODEL'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FIELDMODEL']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getFieldInstances(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FIELDMODEL']->key => $_smarty_tpl->tpl_vars['FIELDMODEL']->value){
$_smarty_tpl->tpl_vars['FIELDMODEL']->_loop = true;
?><?php if ($_smarty_tpl->tpl_vars['FIELDMODEL']->value&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()->isViewable()&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()->getDisplayType()!='5'){?><div class='font-x-small updateInfoContainer'><i><?php echo vtranslate($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getName(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</i> :&nbsp;<?php if ($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('prevalue')!=''&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')!=''&&!($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()->getFieldDataType()=='reference'&&($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')=='0'||$_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('prevalue')=='0'))){?>&nbsp;<?php echo vtranslate('LBL_FROM');?>
 <b style="white-space:pre-wrap;"><?php echo Vtiger_Util_Helper::toVtiger6SafeHTML($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getDisplayValue(decode_html($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('prevalue'))));?>
</b><?php }elseif($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')==''||($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()->getFieldDataType()=='reference'&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')=='0')){?>&nbsp; <b> <?php echo vtranslate('LBL_DELETED');?>
 </b> ( <del><?php echo Vtiger_Util_Helper::toVtiger6SafeHTML($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getDisplayValue(decode_html($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('prevalue'))));?>
</del> )<?php }else{ ?>&nbsp;<?php echo vtranslate('LBL_CHANGED');?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')!=''&&!($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getFieldInstance()->getFieldDataType()=='reference'&&$_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue')=='0')){?>&nbsp;<?php echo vtranslate('LBL_TO');?>
&nbsp;<b style="white-space:pre-wrap;"><?php echo Vtiger_Util_Helper::toVtiger6SafeHTML($_smarty_tpl->tpl_vars['FIELDMODEL']->value->getDisplayValue(decode_html($_smarty_tpl->tpl_vars['FIELDMODEL']->value->get('postvalue'))));?>
</b><?php }?></div><?php }?><?php } ?></li><?php }elseif(($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRelationLink()||$_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRelationUnLink())){?><li><div class="row-fluid"><?php $_smarty_tpl->tpl_vars['RELATION'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getRelationInstance(), null, 0);?><span><strong><?php echo $_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->getModifiedBy()->getName();?>
 </strong></span><span><?php if ($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRelationLink()){?><?php echo vtranslate('LBL_ADDED',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
<?php }else{ ?><?php echo vtranslate('LBL_REMOVED',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
<?php }?> </span><span><?php if ($_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getModuleName()=='Calendar'){?><?php if (isPermitted('Calendar','DetailView',$_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getId())=='yes'){?> <strong><?php echo $_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getName();?>
</strong> <?php }else{ ?> <?php }?><?php }else{ ?> <strong><?php echo $_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getName();?>
</strong> <?php }?></span>(<span><?php echo vtranslate($_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getModuleName(),$_smarty_tpl->tpl_vars['RELATION']->value->getLinkedRecord()->getModuleName());?>
</span>)<span class="pull-right"><p class="muted"><small title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString($_smarty_tpl->tpl_vars['RELATION']->value->get('changedon'));?>
"><?php echo Vtiger_Util_Helper::formatDateDiffInStrings($_smarty_tpl->tpl_vars['RELATION']->value->get('changedon'));?>
</small></p></span></div></li><?php }elseif($_smarty_tpl->tpl_vars['RECENT_ACTIVITY']->value->isRestore()){?><li></li><?php }?><?php }?><?php } ?></ul><?php }else{ ?><div class="summaryWidgetContainer"><p class="textAlignCenter"><?php echo vtranslate('LBL_NO_RECENT_UPDATES');?>
</p></div><?php }?></div><div class="row-fluid" id="moreLink"><?php if ($_smarty_tpl->tpl_vars['PAGING_MODEL']->value->isNextPageExists()){?><div class="pull-right"><a href="javascript:void(0)" class="moreRecentUpdates"><?php echo vtranslate('LBL_MORE',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
..</a></div><?php }?></div><span class="clearfix"></span></div>
<?php }} ?>