<?php /* Smarty version Smarty-3.1.7, created on 2017-03-04 10:28:39
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Install/Step5.tpl" */ ?>
<?php /*%%SmartyHeaderCode:188879801758ba96d79090c0-15662735%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '92f9ff484a1189ec06591470db5fe358aee29a5a' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Install/Step5.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '188879801758ba96d79090c0-15662735',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'AUTH_KEY' => 0,
    'DB_CONNECTION_INFO' => 0,
    'INFORMATION' => 0,
    'SITE_URL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58ba96d79c8b7',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ba96d79c8b7')) {function content_58ba96d79c8b7($_smarty_tpl) {?>
<form class="form-horizontal" name="step5" method="post" action="index.php">
	<input type=hidden name="module" value="Install" />
	<input type=hidden name="view" value="Index" />
	<input type=hidden name="mode" value="Step6" />
	<input type=hidden name="auth_key" value="<?php echo $_smarty_tpl->tpl_vars['AUTH_KEY']->value;?>
" />

	<div class="row-fluid main-container">
		<div class="inner-container">
			<div class="row-fluid">
				<div class="span10">
					<h4><?php echo vtranslate('LBL_CONFIRM_CONFIGURATION_SETTINGS','Install');?>
</h4>
				</div>
				<div class="span2">
					<a href="https://wiki.vtiger.com/vtiger6/" target="_blank" class="pull-right">
						<img src="<?php echo vimage_path('help.png');?>
" alt="Help-Icon"/>
					</a>
				</div>
			</div>
		    <hr>
			<?php if ($_smarty_tpl->tpl_vars['DB_CONNECTION_INFO']->value['flag']!=true){?>
				<div class="offset2 row-fluid" id="errorMessage">
					<div class="span8">
						<div class="alert alert-error">
							<?php echo $_smarty_tpl->tpl_vars['DB_CONNECTION_INFO']->value['error_msg'];?>

							<?php echo $_smarty_tpl->tpl_vars['DB_CONNECTION_INFO']->value['error_msg_info'];?>

						</div>
					</div>
				</div>
			<?php }?>
			<div class="offset2 row-fluid">
				<div class="span8">
					<table class="config-table input-table">
						<thead>
							<tr>
								<th colspan="2"><?php echo vtranslate('LBL_DATABASE_INFORMATION','Install');?>
</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<?php echo vtranslate('LBL_DATABASE_TYPE','Install');?>
<span class="no">*</span>
								</td>
								<td>
									<?php echo vtranslate('MySQL','Install');?>

								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_DB_NAME','Install');?>
<span class="no">*</span>
								</td><td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['db_name'];?>

								</td>
							</tr>
						</tbody>
					</table>
					<table class="config-table input-table">
						<thead>
							<tr>
								<th colspan="2"><?php echo vtranslate('LBL_SYSTEM_INFORMATION','Install');?>
</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<?php echo vtranslate('LBL_URL','Install');?>
<span class="no">*</span>
								</td>
								<td>
									<a href="#"><?php echo $_smarty_tpl->tpl_vars['SITE_URL']->value;?>
</a>
								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_CURRENCY','Install');?>
<span class="no">*</span>
								</td>
								<td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['currency_name'];?>

								</td>
							</tr>
						</tbody>
					</table>
					<table class="config-table input-table">
						<thead>
							<tr>
								<th colspan="2"><?php echo vtranslate('LBL_ADMIN_USER_INFORMATION','Install');?>
</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<?php echo vtranslate('LBL_USERNAME','Install');?>

								</td>
								<td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['admin'];?>

								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_EMAIL','Install');?>
<span class="no">*</span>
								</td><td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['admin_email'];?>

								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_TIME_ZONE','Install');?>
<span class="no">*</span>
								</td>
								<td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['timezone'];?>

								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_DATE_FORMAT','Install');?>
<span class="no">*</span>
								</td>
								<td>
									<?php echo $_smarty_tpl->tpl_vars['INFORMATION']->value['dateformat'];?>

								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row-fluid offset2">
				<div class="span8">
					<div class="button-container">
						<input type="button" class="btn btn-large" value="<?php echo vtranslate('LBL_BACK','Install');?>
" <?php if ($_smarty_tpl->tpl_vars['DB_CONNECTION_INFO']->value['flag']==true){?> disabled= "disabled" <?php }?> name="back"/>
						<?php if ($_smarty_tpl->tpl_vars['DB_CONNECTION_INFO']->value['flag']==true){?>
							<input type="button" class="btn btn-large btn-primary" value="<?php echo vtranslate('LBL_NEXT','Install');?>
" name="step6"/>
						<?php }?>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

</div><?php }} ?>