<?php /* Smarty version Smarty-3.1.7, created on 2017-03-04 11:20:44
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RelatedActivities.tpl" */ ?>
<?php /*%%SmartyHeaderCode:129250457658baa30c0aea66-88538251%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f52c9fee8da9bba1784b7a66ca4c828975d2116' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RelatedActivities.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '129250457658baa30c0aea66-88538251',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
    'RECORD' => 0,
    'ACTIVITIES' => 0,
    'START_DATE' => 0,
    'START_TIME' => 0,
    'FIELD_MODEL' => 0,
    'USER_MODEL' => 0,
    'EDITVIEW_PERMITTED' => 0,
    'DETAILVIEW_PERMITTED' => 0,
    'PAGING_MODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58baa30c22e37',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58baa30c22e37')) {function content_58baa30c22e37($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars['MODULE_NAME'] = new Smarty_variable("Calendar", null, 0);?><div  class="summaryWidgetContainer"><div class="widget_header row-fluid"><span class="span8"><h4 class="textOverflowEllipsis"><?php echo vtranslate('LBL_ACTIVITIES',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span4"><button class="btn pull-right addButton createActivity" data-url="sourceModule=<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getModuleName();?>
&sourceRecord=<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getId();?>
&relationOperation=true" type="button"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button></span></div><div class="widget_contents"><?php if (count($_smarty_tpl->tpl_vars['ACTIVITIES']->value)!='0'){?><?php  $_smarty_tpl->tpl_vars['RECORD'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['RECORD']->_loop = false;
 $_smarty_tpl->tpl_vars['KEY'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ACTIVITIES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['RECORD']->key => $_smarty_tpl->tpl_vars['RECORD']->value){
$_smarty_tpl->tpl_vars['RECORD']->_loop = true;
 $_smarty_tpl->tpl_vars['KEY']->value = $_smarty_tpl->tpl_vars['RECORD']->key;
?><?php $_smarty_tpl->tpl_vars['START_DATE'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD']->value->get('date_start'), null, 0);?><?php $_smarty_tpl->tpl_vars['START_TIME'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD']->value->get('time_start'), null, 0);?><?php $_smarty_tpl->tpl_vars['EDITVIEW_PERMITTED'] = new Smarty_variable(isPermitted('Calendar','EditView',$_smarty_tpl->tpl_vars['RECORD']->value->get('crmid')), null, 0);?><?php $_smarty_tpl->tpl_vars['DETAILVIEW_PERMITTED'] = new Smarty_variable(isPermitted('Calendar','DetailView',$_smarty_tpl->tpl_vars['RECORD']->value->get('crmid')), null, 0);?><div class="activityEntries"><input type="hidden" class="activityId" value="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get('activityid');?>
"/><div class="row-fluid"><span class="span6"><strong title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString(($_smarty_tpl->tpl_vars['START_DATE']->value)." ".($_smarty_tpl->tpl_vars['START_TIME']->value));?>
"><?php echo Vtiger_Util_Helper::formatDateIntoStrings($_smarty_tpl->tpl_vars['START_DATE']->value,$_smarty_tpl->tpl_vars['START_TIME']->value);?>
</strong></span><div class="activityStatus span6"><?php if ($_smarty_tpl->tpl_vars['RECORD']->value->get('activitytype')=='Task'){?><?php $_smarty_tpl->tpl_vars['MODULE_NAME'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD']->value->getModuleName(), null, 0);?><input type="hidden" class="activityModule" value="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getModuleName();?>
"/><input type="hidden" class="activityType" value="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get('activitytype');?>
"/><div class="pull-right"><strong><span class="value"><?php echo vtranslate($_smarty_tpl->tpl_vars['RECORD']->value->get('status'),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</span></strong>&nbsp&nbsp;<span class="editStatus cursorPointer"><i class="icon-pencil" title="<?php echo vtranslate('LBL_EDIT',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
"></i></span><span class="edit hide"><?php $_smarty_tpl->tpl_vars['FIELD_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD']->value->getModule()->getField('taskstatus'), null, 0);?><?php $_smarty_tpl->tpl_vars['FIELD_VALUE'] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->set('fieldvalue',$_smarty_tpl->tpl_vars['RECORD']->value->get('status')), null, 0);?><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getUITypeModel()->getTemplateName(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('FIELD_MODEL'=>$_smarty_tpl->tpl_vars['FIELD_MODEL']->value,'USER_MODEL'=>$_smarty_tpl->tpl_vars['USER_MODEL']->value,'MODULE'=>$_smarty_tpl->tpl_vars['MODULE_NAME']->value,'OCCUPY_COMPLETE_WIDTH'=>'true'), 0);?>
<input type="hidden" class="fieldname" value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
' data-prev-value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue');?>
' /></span></div></div><?php }else{ ?><?php $_smarty_tpl->tpl_vars['MODULE_NAME'] = new Smarty_variable("Events", null, 0);?><input type="hidden" class="activityModule" value="Events"/><input type="hidden" class="activityType" value="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get('activitytype');?>
"/><?php if ($_smarty_tpl->tpl_vars['EDITVIEW_PERMITTED']->value=='yes'){?><div class="pull-right"><strong><span class="value"><?php echo vtranslate($_smarty_tpl->tpl_vars['RECORD']->value->get('eventstatus'),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</span></strong>&nbsp&nbsp;<span class="editStatus cursorPointer"><i class="icon-pencil" title="<?php echo vtranslate('LBL_EDIT',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
"></i></span><span class="edit hide"><?php $_smarty_tpl->tpl_vars['FIELD_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD']->value->getModule()->getField('eventstatus'), null, 0);?><?php $_smarty_tpl->tpl_vars['FIELD_VALUE'] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->set('fieldvalue',$_smarty_tpl->tpl_vars['RECORD']->value->get('eventstatus')), null, 0);?><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getUITypeModel()->getTemplateName(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('FIELD_MODEL'=>$_smarty_tpl->tpl_vars['FIELD_MODEL']->value,'USER_MODEL'=>$_smarty_tpl->tpl_vars['USER_MODEL']->value,'MODULE'=>$_smarty_tpl->tpl_vars['MODULE_NAME']->value,'OCCUPY_COMPLETE_WIDTH'=>'true'), 0);?>
<?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldDataType()=='multipicklist'){?><input type="hidden" class="fieldname" value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
[]' data-prev-value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getDisplayValue($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue'));?>
' /><?php }else{ ?><input type="hidden" class="fieldname" value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
' data-prev-value='<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getDisplayValue($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue'));?>
' /><?php }?></span></div><?php }?></div><?php }?></div><div class="summaryViewEntries"><?php echo vtranslate($_smarty_tpl->tpl_vars['RECORD']->value->get('activitytype'),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
&nbsp;-&nbsp;<?php if ($_smarty_tpl->tpl_vars['DETAILVIEW_PERMITTED']->value=='yes'){?><a href="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getDetailViewUrl();?>
" ><?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get('subject');?>
</a><?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['RECORD']->value->get('subject');?>
<?php }?>&nbsp;<?php if ($_smarty_tpl->tpl_vars['EDITVIEW_PERMITTED']->value=='yes'){?><a href="<?php echo $_smarty_tpl->tpl_vars['RECORD']->value->getEditViewUrl();?>
" class="fieldValue"><i class="icon-pencil summaryViewEdit" title="<?php echo vtranslate('LBL_EDIT',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
"></i></a><?php }?></div></div><hr><?php } ?><?php }else{ ?><div class="summaryWidgetContainer"><p class="textAlignCenter"><?php echo vtranslate('LBL_NO_PENDING_ACTIVITIES',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</p></div><?php }?><?php if ($_smarty_tpl->tpl_vars['PAGING_MODEL']->value->isNextPageExists()){?><div class="row-fluid"><div class="pull-right"><a href="javascript:void(0)" class="moreRecentActivities"><?php echo vtranslate('LBL_MORE',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
..</a></div></div><?php }?></div></div>
<?php }} ?>