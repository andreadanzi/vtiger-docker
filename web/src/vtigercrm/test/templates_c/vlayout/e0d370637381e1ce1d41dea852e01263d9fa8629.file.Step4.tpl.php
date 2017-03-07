<?php /* Smarty version Smarty-3.1.7, created on 2017-03-04 10:27:05
         compiled from "/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Install/Step4.tpl" */ ?>
<?php /*%%SmartyHeaderCode:142215315158ba96795e4f13-12337313%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e0d370637381e1ce1d41dea852e01263d9fa8629' => 
    array (
      0 => '/var/www/html/vtigercrm/includes/runtime/../../layouts/vlayout/modules/Install/Step4.tpl',
      1 => 1468488064,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '142215315158ba96795e4f13-12337313',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'DB_HOSTNAME' => 0,
    'DB_USERNAME' => 0,
    'DB_PASSWORD' => 0,
    'DB_NAME' => 0,
    'CURRENCIES' => 0,
    'CURRENCY_NAME' => 0,
    'CURRENCY_INFO' => 0,
    'ADMIN_NAME' => 0,
    'ADMIN_PASSWORD' => 0,
    'ADMIN_LASTNAME' => 0,
    'ADMIN_EMAIL' => 0,
    'TIMEZONES' => 0,
    'TIMEZONE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58ba96796de11',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ba96796de11')) {function content_58ba96796de11($_smarty_tpl) {?>
<form class="form-horizontal" name="step4" method="post" action="index.php">
	<input type=hidden name="module" value="Install" />
	<input type=hidden name="view" value="Index" />
	<input type=hidden name="mode" value="Step5" />

	<div class="row-fluid main-container">
		<div class="inner-container">
			<div class="row-fluid">
				<div class="span10">
					<h4><?php echo vtranslate('LBL_SYSTEM_CONFIGURATION','Install');?>
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
			<div class="row-fluid hide" id="errorMessage"></div>
			<div class="row-fluid">
				<div class="span6">
					<table class="config-table input-table">
						<thead>
							<tr><th colspan="2"><?php echo vtranslate('LBL_DATABASE_INFORMATION','Install');?>
</th></tr>
						</thead>
						<tbody>
							<tr><td><?php echo vtranslate('LBL_DATABASE_TYPE','Install');?>
<span class="no">*</span></td>
								<td><?php echo vtranslate('MySQL','Install');?>
<?php if (function_exists('mysqli_connect')){?><input type="hidden" value="mysqli" name="db_type"><?php }else{ ?>
                                                                    <input type="hidden" value="mysql" name="db_type"><?php }?></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_HOST_NAME','Install');?>
<span class="no">*</span></td>
								<td><input type="text" value="<?php echo $_smarty_tpl->tpl_vars['DB_HOSTNAME']->value;?>
" name="db_hostname"></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_USERNAME','Install');?>
<span class="no">*</span></td>
								<td><input type="text" value="<?php echo $_smarty_tpl->tpl_vars['DB_USERNAME']->value;?>
" name="db_username"></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_PASSWORD','Install');?>
</td>
								<td><input type="password" value="<?php echo $_smarty_tpl->tpl_vars['DB_PASSWORD']->value;?>
" name="db_password"></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_DB_NAME','Install');?>
<span class="no">*</span></td>
								<td><input type="text" value="<?php echo $_smarty_tpl->tpl_vars['DB_NAME']->value;?>
" name="db_name"></td>
							</tr>
							<tr><td colspan="2"><input type="checkbox" name="create_db"/><div class="chkbox"></div><label for="checkbox-1"><?php echo vtranslate('LBL_CREATE_NEW_DB','Install');?>
</label></td>
							</tr>
							<tr class="hide" id="root_user"><td><?php echo vtranslate('LBL_ROOT_USERNAME','Install');?>
<span class="no">*</span></td>
								<td><input type="text" value="" name="db_root_username"></td>
							</tr>
							<tr class="hide" id="root_password"><td><?php echo vtranslate('LBL_ROOT_PASSWORD','Install');?>
</td>
								<td><input type="password" value="" name="db_root_password"></td>
							</tr>
							<!--tr><td colspan="2"><input type="checkbox" checked name="populate"/><div class="chkbox"></div><label for="checkbox-1"> Populate database with demo data</label></td-->
							</tr>
						</tbody>
					</table>
				</div>
				<div class="span6">
					<table class="config-table input-table">
						<thead>
							<tr><th colspan="2"><?php echo vtranslate('LBL_SYSTEM_INFORMATION','Install');?>
</th></tr>
						</thead>
						<tbody>
							<tr><td><?php echo vtranslate('LBL_CURRENCIES','Install');?>
<span class="no">*</span></td>
								<td><select name="currency_name" class="select2" style="width:220px;">
										<?php  $_smarty_tpl->tpl_vars['CURRENCY_INFO'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['CURRENCY_INFO']->_loop = false;
 $_smarty_tpl->tpl_vars['CURRENCY_NAME'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['CURRENCIES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['CURRENCY_INFO']->key => $_smarty_tpl->tpl_vars['CURRENCY_INFO']->value){
$_smarty_tpl->tpl_vars['CURRENCY_INFO']->_loop = true;
 $_smarty_tpl->tpl_vars['CURRENCY_NAME']->value = $_smarty_tpl->tpl_vars['CURRENCY_INFO']->key;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['CURRENCY_NAME']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['CURRENCY_NAME']->value=='USA, Dollars'){?> selected <?php }?>><?php echo $_smarty_tpl->tpl_vars['CURRENCY_NAME']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['CURRENCY_INFO']->value[1];?>
)</option>
										<?php } ?>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="config-table input-table">
						<thead><tr><th colspan="2"><?php echo vtranslate('LBL_ADMIN_INFORMATION','Install');?>
</th></tr>
						</thead>
						<tbody>
							<tr><td><?php echo vtranslate('LBL_USERNAME','Install');?>
</td>
								<td>admin<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['ADMIN_NAME']->value;?>
" value="admin" /></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_PASSWORD','Install');?>
<span class="no">*</span></td>
								<td><input type="password" value="<?php echo $_smarty_tpl->tpl_vars['ADMIN_PASSWORD']->value;?>
" name="password" /></td>
							</tr>
							<tr><td><?php echo vtranslate('LBL_RETYPE_PASSWORD','Install');?>
 <span class="no">*</span></td>
								<td><input type="password" value="<?php echo $_smarty_tpl->tpl_vars['ADMIN_PASSWORD']->value;?>
" name="retype_password" />
									<span id="passwordError" class="no"></span></td>
							</tr>
							<tr><td><?php echo vtranslate('First Name','Install');?>
</td>
								<td><input type="text" value="" name="firstname" /></td>
							</tr>
							<tr><td>
									<?php echo vtranslate('Last Name','Install');?>
 <span class="no">*</span>
								</td><td>
									<input type="text" value="<?php echo $_smarty_tpl->tpl_vars['ADMIN_LASTNAME']->value;?>
" name="lastname" />
								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_EMAIL','Install');?>
 <span class="no">*</span>
								</td><td>
									<input type="text" value="<?php echo $_smarty_tpl->tpl_vars['ADMIN_EMAIL']->value;?>
" name="admin_email">
								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_DATE_FORMAT','Install');?>
 <span class="no">*</span>
								</td>
								<td><select class="select2" style="width:220px;" name="dateformat">
										<option> mm-dd-yyyy</option>
										<option> dd-mm-yyyy</option>
										<option> yyyy-mm-dd</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<?php echo vtranslate('LBL_TIME_ZONE','Install');?>
 <span class="no">*</span>
								</td>
								<td><select class="select2" name="timezone">
									<?php  $_smarty_tpl->tpl_vars['TIMEZONE'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['TIMEZONE']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['TIMEZONES']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['TIMEZONE']->key => $_smarty_tpl->tpl_vars['TIMEZONE']->value){
$_smarty_tpl->tpl_vars['TIMEZONE']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['TIMEZONE']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['TIMEZONE']->value=='America/Los_Angeles'){?>selected<?php }?>><?php echo vtranslate($_smarty_tpl->tpl_vars['TIMEZONE']->value,'Users');?>
</option>
									<?php } ?>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="row-fluid">
				<div>
					<div class="button-container">
						<input type="button" class="btn btn-large" value="<?php echo vtranslate('LBL_BACK','Install');?>
" name="back"/>
						<input type="button" class="btn btn-large btn-primary" value="<?php echo vtranslate('LBL_NEXT','Install');?>
" name="step5"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</form><?php }} ?>