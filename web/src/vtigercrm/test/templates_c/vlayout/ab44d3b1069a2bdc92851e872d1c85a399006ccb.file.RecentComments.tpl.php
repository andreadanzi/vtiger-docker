<?php /* Smarty version Smarty-3.1.7, created on 2017-03-04 11:20:45
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RecentComments.tpl" */ ?>
<?php /*%%SmartyHeaderCode:70913781458baa30d40d6e9-47625343%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab44d3b1069a2bdc92851e872d1c85a399006ccb' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Vtiger/RecentComments.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '70913781458baa30d40d6e9-47625343',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'COMMENTS_MODULE_MODEL' => 0,
    'MODULE_NAME' => 0,
    'COMMENT_TEXTAREA_DEFAULT_ROWS' => 0,
    'COMMENTS' => 0,
    'COMMENT' => 0,
    'IMAGE_PATH' => 0,
    'COMMENTOR' => 0,
    'REASON_TO_EDIT' => 0,
    'CURRENTUSER' => 0,
    'PARENT_COMMENT_MODEL' => 0,
    'CHILD_COMMENTS_MODEL' => 0,
    'PAGING_MODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58baa30d5597f',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58baa30d5597f')) {function content_58baa30d5597f($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars["COMMENT_TEXTAREA_DEFAULT_ROWS"] = new Smarty_variable("2", null, 0);?><div class="commentContainer recentComments"><div class="commentTitle row-fluid"><?php if ($_smarty_tpl->tpl_vars['COMMENTS_MODULE_MODEL']->value->isPermitted('EditView')){?><div class="addCommentBlock"><div><textarea name="commentcontent" class="commentcontent"  placeholder="<?php echo vtranslate('LBL_ADD_YOUR_COMMENT_HERE',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
" rows="<?php echo $_smarty_tpl->tpl_vars['COMMENT_TEXTAREA_DEFAULT_ROWS']->value;?>
"></textarea></div><div class="pull-right"><button class="btn btn-success detailViewSaveComment" type="button" data-mode="add"><strong><?php echo vtranslate('LBL_POST',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button></div></div><?php }?></div><hr><br><div class="commentsBody"><?php if (!empty($_smarty_tpl->tpl_vars['COMMENTS']->value)){?><?php  $_smarty_tpl->tpl_vars['COMMENT'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['COMMENT']->_loop = false;
 $_smarty_tpl->tpl_vars['index'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['COMMENTS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['COMMENT']->key => $_smarty_tpl->tpl_vars['COMMENT']->value){
$_smarty_tpl->tpl_vars['COMMENT']->_loop = true;
 $_smarty_tpl->tpl_vars['index']->value = $_smarty_tpl->tpl_vars['COMMENT']->key;
?><div class="commentDetails"><div class="commentDiv"><div class="singleComment"><div class="commentInfoHeader row-fluid" data-commentid="<?php echo $_smarty_tpl->tpl_vars['COMMENT']->value->getId();?>
" data-parentcommentid="<?php echo $_smarty_tpl->tpl_vars['COMMENT']->value->get('parent_comments');?>
"><div class="commentTitle"><?php $_smarty_tpl->tpl_vars['PARENT_COMMENT_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['COMMENT']->value->getParentCommentModel(), null, 0);?><?php $_smarty_tpl->tpl_vars['CHILD_COMMENTS_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['COMMENT']->value->getChildComments(), null, 0);?><div class="row-fluid"><div class="span1"><?php $_smarty_tpl->tpl_vars['IMAGE_PATH'] = new Smarty_variable($_smarty_tpl->tpl_vars['COMMENT']->value->getImagePath(), null, 0);?><img class="alignMiddle pull-left" src="<?php if (!empty($_smarty_tpl->tpl_vars['IMAGE_PATH']->value)){?><?php echo $_smarty_tpl->tpl_vars['IMAGE_PATH']->value;?>
<?php }else{ ?><?php echo vimage_path('DefaultUserIcon.png');?>
<?php }?>"></div><div class="span11 commentorInfo"><?php $_smarty_tpl->tpl_vars['COMMENTOR'] = new Smarty_variable($_smarty_tpl->tpl_vars['COMMENT']->value->getCommentedByModel(), null, 0);?><div class="inner"><span class="commentorName"><strong><?php echo $_smarty_tpl->tpl_vars['COMMENTOR']->value->getName();?>
</strong></span><span class="pull-right"><p class="muted"><small title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString($_smarty_tpl->tpl_vars['COMMENT']->value->getCommentedTime());?>
"><?php echo Vtiger_Util_Helper::formatDateDiffInStrings($_smarty_tpl->tpl_vars['COMMENT']->value->getCommentedTime());?>
</small></p></span><div class="clearfix"></div></div><div class="commentInfoContent"><?php echo nl2br($_smarty_tpl->tpl_vars['COMMENT']->value->get('commentcontent'));?>
</div></div></div></div></div><div class="row-fluid commentActionsContainer"><?php $_smarty_tpl->tpl_vars["REASON_TO_EDIT"] = new Smarty_variable($_smarty_tpl->tpl_vars['COMMENT']->value->get('reasontoedit'), null, 0);?><div class="row-fluid editStatus"  name="editStatus"><span class="span6<?php if (empty($_smarty_tpl->tpl_vars['REASON_TO_EDIT']->value)){?> hide<?php }?>"><p class="muted"><small>[ <?php echo vtranslate('LBL_EDIT_REASON',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
 ] :<span  name="editReason" class="textOverflowEllipsis"><?php echo nl2br($_smarty_tpl->tpl_vars['REASON_TO_EDIT']->value);?>
</span></small></p></span><?php if ($_smarty_tpl->tpl_vars['COMMENT']->value->getCommentedTime()!=$_smarty_tpl->tpl_vars['COMMENT']->value->getModifiedTime()){?><span class="<?php if (empty($_smarty_tpl->tpl_vars['REASON_TO_EDIT']->value)){?>row-fluid<?php }else{ ?> span6<?php }?>"><p class="muted pull-right"><small><em><?php echo vtranslate('LBL_MODIFIED',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</em></small>&nbsp;<small title="<?php echo Vtiger_Util_Helper::formatDateTimeIntoDayString($_smarty_tpl->tpl_vars['COMMENT']->value->getModifiedTime());?>
" class="commentModifiedTime"><?php echo Vtiger_Util_Helper::formatDateDiffInStrings($_smarty_tpl->tpl_vars['COMMENT']->value->getModifiedTime());?>
</small></p></span><?php }?></div><div class="row-fluid"><div class="pull-right commentActions"><?php if ($_smarty_tpl->tpl_vars['COMMENTS_MODULE_MODEL']->value->isPermitted('EditView')){?><span><a class="cursorPointer replyComment feedback"><i class="icon-share-alt"></i><?php echo vtranslate('LBL_REPLY',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</a><?php if ($_smarty_tpl->tpl_vars['CURRENTUSER']->value->getId()==$_smarty_tpl->tpl_vars['COMMENT']->value->get('userid')){?>&nbsp;<span>|</span>&nbsp;<a class="cursorPointer editComment feedback"><?php echo vtranslate('LBL_EDIT',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</a><?php }?></span><?php }?><span><?php if ($_smarty_tpl->tpl_vars['PARENT_COMMENT_MODEL']->value!=false||$_smarty_tpl->tpl_vars['CHILD_COMMENTS_MODEL']->value!=null){?><?php if ($_smarty_tpl->tpl_vars['COMMENTS_MODULE_MODEL']->value->isPermitted('EditView')){?>&nbsp;<span>|</span>&nbsp;<?php }?><a href="javascript:void(0);" class="cursorPointer detailViewThread"><?php echo vtranslate('LBL_VIEW_THREAD',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</a><?php }?></span></div></div></div></div></div></div><?php } ?><?php }else{ ?><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path("NoComments.tpl"), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }?></div><?php if ($_smarty_tpl->tpl_vars['PAGING_MODEL']->value->isNextPageExists()){?><div class="row-fluid"><div class="pull-right"><a href="javascript:void(0)" class="moreRecentComments"><?php echo vtranslate('LBL_MORE',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
..</a></div></div><?php }?><div class="hide basicAddCommentBlock"><div class="row-fluid"><span class="span1">&nbsp;</span><div class="span11"><textarea class="commentcontenthidden fullWidthAlways" name="commentcontent" rows="<?php echo $_smarty_tpl->tpl_vars['COMMENT_TEXTAREA_DEFAULT_ROWS']->value;?>
" placeholder="<?php echo vtranslate('LBL_ADD_YOUR_COMMENT_HERE',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
"></textarea></div></div><div class="pull-right"><button class="btn btn-success detailViewSaveComment" type="button" data-mode="add"><strong><?php echo vtranslate('LBL_POST',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><a class="cursorPointer closeCommentBlock cancelLink" type="reset"><?php echo vtranslate('LBL_CANCEL',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</a></div></div><div class="hide basicEditCommentBlock" style="min-height: 150px;"><div class="row-fluid"><span class="span1">&nbsp;</span><div class="span11"><input type="text" name="reasonToEdit" placeholder="<?php echo vtranslate('LBL_REASON_FOR_CHANGING_COMMENT',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
" class="input-block-level"/></div></div><div class="row-fluid"><span class="span1">&nbsp;</span><div class="span11"><textarea class="commentcontenthidden fullWidthAlways" name="commentcontent" rows="<?php echo $_smarty_tpl->tpl_vars['COMMENT_TEXTAREA_DEFAULT_ROWS']->value;?>
"></textarea></div></div><div class="pull-right"><button class="btn btn-success detailViewSaveComment" type="button" data-mode="edit"><strong><?php echo vtranslate('LBL_POST',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</strong></button><a class="cursorPointer closeCommentBlock cancelLink" type="reset"><?php echo vtranslate('LBL_CANCEL',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</a></div></div></div><?php }} ?>