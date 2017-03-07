<?php /* Smarty version Smarty-3.1.7, created on 2017-03-07 11:29:01
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Potentials/SummaryViewWidgets.tpl" */ ?>
<?php /*%%SmartyHeaderCode:102214256758be997d465129-32472878%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18c5063034beaadb86529141f7cea77c9591c1cd' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Potentials/SummaryViewWidgets.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '102214256758be997d465129-32472878',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'DETAILVIEW_LINKS' => 0,
    'DETAIL_VIEW_WIDGET' => 0,
    'MODULE_SUMMARY' => 0,
    'COMMENTS_WIDGET_MODEL' => 0,
    'MODULE_NAME' => 0,
    'PRODUCT_WIDGET_MODEL' => 0,
    'RELATED_ACTIVITIES' => 0,
    'CONTACT_WIDGET_MODEL' => 0,
    'DOCUMENT_WIDGET_MODEL' => 0,
    'UPDATES_WIDGET_MODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58be997d5c0d8',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58be997d5c0d8')) {function content_58be997d5c0d8($_smarty_tpl) {?>
<?php  $_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['DETAILVIEW_LINKS']->value['DETAILVIEWWIDGET']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->key => $_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value){
$_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->_loop = true;
?><?php if (($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value->getLabel()=='Documents')){?><?php $_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value, null, 0);?><?php }elseif(($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value->getLabel()=='LBL_RELATED_CONTACTS')){?><?php $_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value, null, 0);?><?php }elseif(($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value->getLabel()=='LBL_RELATED_PRODUCTS')){?><?php $_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value, null, 0);?><?php }elseif(($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value->getLabel()=='ModComments')){?><?php $_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value, null, 0);?><?php }elseif(($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value->getLabel()=='LBL_UPDATES')){?><?php $_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['DETAIL_VIEW_WIDGET']->value, null, 0);?><?php }?><?php } ?><div class="row-fluid"><div class="span7"><div class="summaryView row-fluid"><?php echo $_smarty_tpl->tpl_vars['MODULE_SUMMARY']->value;?>
</div><?php if ($_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value){?><div class="summaryWidgetContainer"><div class="widgetContainer_comments" data-url="<?php echo $_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->getUrl();?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->getLabel();?>
"><div class="widget_header row-fluid"><input type="hidden" name="relatedModule" value="<?php echo $_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->get('linkName');?>
" /><span class="span9 margin0px"><h4><?php echo vtranslate($_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span3"><span class="pull-right"><?php if ($_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->get('action')){?><button class="btn addButton createRecord" type="button" data-url="<?php echo $_smarty_tpl->tpl_vars['COMMENTS_WIDGET_MODEL']->value->get('actionURL');?>
"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><?php }?></span></span></div><div class="widget_contents"></div></div></div><?php }?><?php if ($_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value){?><div class="summaryWidgetContainer"><div class="widgetContainer_products" data-url="<?php echo $_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->getUrl();?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->getLabel();?>
"><div class="widget_header row-fluid"><input type="hidden" name="relatedModule" value="<?php echo $_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->get('linkName');?>
" /><span class="span9 margin0px"><h4><?php echo vtranslate($_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span3"><span class="pull-right"><?php if ($_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->get('action')){?><button class="btn addButton createRecord" type="button" data-url="<?php echo $_smarty_tpl->tpl_vars['PRODUCT_WIDGET_MODEL']->value->get('actionURL');?>
"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><?php }?></span></span></div><div class="widget_contents"></div></div></div><?php }?></div><div class='span5' style="overflow: hidden"><div id="relatedActivities"><?php echo $_smarty_tpl->tpl_vars['RELATED_ACTIVITIES']->value;?>
</div><?php if ($_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value){?><div class="summaryWidgetContainer"><div class="widgetContainer_contacts" data-url="<?php echo $_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->getUrl();?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->getLabel();?>
"><div class="widget_header row-fluid"><input type="hidden" name="relatedModule" value="<?php echo $_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->get('linkName');?>
" /><span class="span9 margin0px"><h4><?php echo vtranslate($_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span3"><span class="pull-right"><?php if ($_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->get('action')){?><button class="btn addButton createRecord" type="button" data-url="<?php echo $_smarty_tpl->tpl_vars['CONTACT_WIDGET_MODEL']->value->get('actionURL');?>
"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><?php }?></span></span></div><div class="widget_contents"></div></div></div><?php }?><?php if ($_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value){?><div class="summaryWidgetContainer"><div class="widgetContainer_documents" data-url="<?php echo $_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->getUrl();?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->getLabel();?>
"><div class="widget_header row-fluid"><input type="hidden" name="relatedModule" value="<?php echo $_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->get('linkName');?>
" /><span class="span9 margin0px"><h4><?php echo vtranslate($_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span3"><span class="pull-right"><?php if ($_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->get('action')){?><button class="btn pull-right addButton createRecord" type="button" data-url="<?php echo $_smarty_tpl->tpl_vars['DOCUMENT_WIDGET_MODEL']->value->get('actionURL');?>
"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><?php }?></span></span></div><div class="widget_contents"></div></div></div><?php }?><?php if ($_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value){?><div class="summaryWidgetContainer"><div class="widgetContainer_updates" data-url="<?php echo $_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->getUrl();?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->getLabel();?>
"><div class="widget_header row-fluid"><input type="hidden" name="relatedModule" value="<?php echo $_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->get('linkName');?>
" /><span class="span9 margin0px"><h4><?php echo vtranslate($_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->getLabel(),$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</h4></span><span class="span3"><span class="pull-right"><?php if ($_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->get('action')){?><button class="btn pull-right addButton createRecord" type="button" data-url="<?php echo $_smarty_tpl->tpl_vars['UPDATES_WIDGET_MODEL']->value->get('actionURL');?>
"><strong><?php echo vtranslate('LBL_ADD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><?php }?></span></span></div><div class="widget_contents"></div></div></div><?php }?></div></div><?php }} ?>