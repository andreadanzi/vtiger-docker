<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 08:46:03
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/PopupSearch.tpl" */ ?>
<?php /*%%SmartyHeaderCode:208452261558be734b9960d3-88384462%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8950291cbb0cbda9767171ff0d73907dc4aa039f' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/PopupSearch.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '208452261558be734b9960d3-88384462',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SOURCE_MODULE' => 0,
    'MODULE' => 0,
    'PARENT_MODULE' => 0,
    'SOURCE_RECORD' => 0,
    'SOURCE_FIELD' => 0,
    'GETURL' => 0,
    'MULTI_SELECT' => 0,
    'CURRENCY_ID' => 0,
    'RELATED_PARENT_MODULE' => 0,
    'RELATED_PARENT_ID' => 0,
    'VIEW' => 0,
    'COMPANY_LOGO' => 0,
    'MODULE_NAME' => 0,
    'LISTVIEW_ENTRIES' => 0,
    'RECORD_STRUCTURE_MODEL' => 0,
    'RECORD_STRUCTURE' => 0,
    'fields' => 0,
    'fieldName' => 0,
    'defaultSearchField' => 0,
    'fieldObject' => 0,
    'PAGING_MODEL' => 0,
    'PAGE_COUNT' => 0,
    'moduleName' => 0,
    'PAGE_NUMBER' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be734ba7d11',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be734ba7d11')) {function content_58be734ba7d11($_smarty_tpl) {?>
<input type="hidden" id="parentModule" value="<?php echo $_smarty_tpl->tpl_vars['SOURCE_MODULE']->value;?>
"/><input type="hidden" id="module" value="<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
"/><input type="hidden" id="parent" value="<?php echo $_smarty_tpl->tpl_vars['PARENT_MODULE']->value;?>
"/><input type="hidden" id="sourceRecord" value="<?php echo $_smarty_tpl->tpl_vars['SOURCE_RECORD']->value;?>
"/><input type="hidden" id="sourceField" value="<?php echo $_smarty_tpl->tpl_vars['SOURCE_FIELD']->value;?>
"/><input type="hidden" id="url" value="<?php echo $_smarty_tpl->tpl_vars['GETURL']->value;?>
" /><input type="hidden" id="multi_select" value="<?php echo $_smarty_tpl->tpl_vars['MULTI_SELECT']->value;?>
" /><input type="hidden" id="currencyId" value="<?php echo $_smarty_tpl->tpl_vars['CURRENCY_ID']->value;?>
" /><input type="hidden" id="relatedParentModule" value="<?php echo $_smarty_tpl->tpl_vars['RELATED_PARENT_MODULE']->value;?>
"/><input type="hidden" id="relatedParentId" value="<?php echo $_smarty_tpl->tpl_vars['RELATED_PARENT_ID']->value;?>
"/><input type="hidden" id="view" value="<?php echo $_smarty_tpl->tpl_vars['VIEW']->value;?>
"/><div class="popupContainer row-fluid"><div class="logo span6"><img src="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('imagepath');?>
" title="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('title');?>
" alt="<?php echo $_smarty_tpl->tpl_vars['COMPANY_LOGO']->value->get('alt');?>
" width="160px;"/></div><div class="span6"><b><?php echo vtranslate($_smarty_tpl->tpl_vars['MODULE_NAME']->value,$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</b></div></div><div class="row-fluid"><div class="span2"><?php if ($_smarty_tpl->tpl_vars['MULTI_SELECT']->value){?><?php if (!empty($_smarty_tpl->tpl_vars['LISTVIEW_ENTRIES']->value)){?><button class="select btn"><strong><?php echo vtranslate('LBL_SELECT',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</strong></button><?php }?><?php }else{ ?>&nbsp;<?php }?></div><div class="span6"><form class="form-horizontal popupSearchContainer" onsubmit="return false;" method="POST"><div class="control-group margin0px"><input class="span2" type="text" placeholder="<?php echo vtranslate('LBL_TYPE_SEARCH');?>
" id="searchvalue"/>&nbsp;&nbsp;<span><strong><?php echo vtranslate('LBL_IN');?>
</strong></span>&nbsp;<span><?php $_smarty_tpl->tpl_vars['defaultSearchField'] = new Smarty_variable($_smarty_tpl->tpl_vars['RECORD_STRUCTURE_MODEL']->value->getModule()->getDefaultSearchField(), null, 0);?><select style="width: 140px;" class="chzn-select" id="searchableColumnsList"><?php  $_smarty_tpl->tpl_vars['fields'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['fields']->_loop = false;
 $_smarty_tpl->tpl_vars['block'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['RECORD_STRUCTURE']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['fields']->key => $_smarty_tpl->tpl_vars['fields']->value){
$_smarty_tpl->tpl_vars['fields']->_loop = true;
 $_smarty_tpl->tpl_vars['block']->value = $_smarty_tpl->tpl_vars['fields']->key;
?><?php  $_smarty_tpl->tpl_vars['fieldObject'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['fieldObject']->_loop = false;
 $_smarty_tpl->tpl_vars['fieldName'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['fields']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['fieldObject']->key => $_smarty_tpl->tpl_vars['fieldObject']->value){
$_smarty_tpl->tpl_vars['fieldObject']->_loop = true;
 $_smarty_tpl->tpl_vars['fieldName']->value = $_smarty_tpl->tpl_vars['fieldObject']->key;
?><optgroup><option value="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['fieldName']->value==$_smarty_tpl->tpl_vars['defaultSearchField']->value){?> selected <?php }?>><?php echo vtranslate($_smarty_tpl->tpl_vars['fieldObject']->value->get('label'),$_smarty_tpl->tpl_vars['MODULE']->value);?>
</option></optgroup><?php } ?><?php } ?></select></span>&nbsp;&nbsp;<span id="popupSearchButton"><button class="btn"><i class="icon-search " title="<?php echo vtranslate('LBL_SEARCH_BUTTON');?>
"></i></button></span></div></form></div><div class="span4"><?php if ($_smarty_tpl->tpl_vars['SOURCE_MODULE']->value!='PriceBooks'&&$_smarty_tpl->tpl_vars['SOURCE_FIELD']->value!='productsRelatedList'){?><div class="popupPaging"><div class="row-fluid"><span class="span3" style="float:right !important;min-width:230px"><span class="pull-right"><span class="pageNumbers"><span class="pageNumbersText"><?php if (!empty($_smarty_tpl->tpl_vars['LISTVIEW_ENTRIES']->value)){?><?php echo $_smarty_tpl->tpl_vars['PAGING_MODEL']->value->getRecordStartRange();?>
 <?php echo vtranslate('LBL_to',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 <?php echo $_smarty_tpl->tpl_vars['PAGING_MODEL']->value->getRecordEndRange();?>
<?php }else{ ?><span>&nbsp;</span><?php }?></span><span class="alignBottom"><span class="icon-refresh totalNumberOfRecords cursorPointer<?php if (empty($_smarty_tpl->tpl_vars['LISTVIEW_ENTRIES']->value)){?> hide<?php }?>" style="margin-left:5px"></span></span></span>&nbsp;&nbsp;<span class="btn-group pull-right"><button class="btn" id="listViewPreviousPageButton" <?php if (!$_smarty_tpl->tpl_vars['PAGING_MODEL']->value->isPrevPageExists()){?> disabled <?php }?>><span class="icon-chevron-left"></span></button><button class="btn dropdown-toggle" type="button" id="listViewPageJump" data-toggle="dropdown" <?php if ($_smarty_tpl->tpl_vars['PAGE_COUNT']->value==1){?> disabled <?php }?>><i class="vtGlyph vticon-pageJump" title="<?php echo vtranslate('LBL_LISTVIEW_PAGE_JUMP',$_smarty_tpl->tpl_vars['moduleName']->value);?>
"></i></button><ul class="listViewBasicAction dropdown-menu" id="listViewPageJumpDropDown"><li><span class="row-fluid"><span class="span3 pushUpandDown2per"><span class="pull-right"><?php echo vtranslate('LBL_PAGE',$_smarty_tpl->tpl_vars['moduleName']->value);?>
</span></span><span class="span4"><input type="text" id="pageToJump" class="listViewPagingInput" value="<?php echo $_smarty_tpl->tpl_vars['PAGE_NUMBER']->value;?>
"/></span><span class="span2 textAlignCenter pushUpandDown2per"><?php echo vtranslate('LBL_OF',$_smarty_tpl->tpl_vars['moduleName']->value);?>
&nbsp;</span><span class="span3 pushUpandDown2per" id="totalPageCount"><?php echo $_smarty_tpl->tpl_vars['PAGE_COUNT']->value;?>
</span></span></li></ul><button class="btn" id="listViewNextPageButton" <?php if ((!$_smarty_tpl->tpl_vars['PAGING_MODEL']->value->isNextPageExists())||($_smarty_tpl->tpl_vars['PAGE_COUNT']->value==1)){?> disabled <?php }?>><span class="icon-chevron-right"></span></button></span></span></span></div></div><?php }?></div></div><?php }} ?>