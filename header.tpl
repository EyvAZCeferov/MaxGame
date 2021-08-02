<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<base href="<?php echo $Web['adress']; ?>" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="<?=$Web['title'];?> - самый продвинутый сервер многопользовательской онлайн игры в стиле Diablo. Здесь вы можете скачать русскую версию MUonline с лаунчером, почитать новости MU, поучаствовать в квестах и pvp" />
	<meta name="keywords" content="ресет, Season 6, новости mu, новый, скачать, русский игровой сервер, launcher, квесты, му онлайн, форум, квест система, система, zeon, mu online, zeon, season" />
	<meta name="robots" content="index,follow" />
	<title><?=GetCurrentModule($Web_URL[0]).' ('.GetServer($ServerNum).')';?> - <?=$Web['title'];?></title>
	<link rel="shortcut icon" href="templates/images/favicon.ico" type="image/x-icon" />
	<!-- Стиль начало  -->
	<link rel="stylesheet" type="text/css" href="templates/css/style.css" />
	<link rel="stylesheet" type="text/css" href="templates/css/noticeui.css" media="screen" title="no title" charset="utf-8" />
	<!-- Стиль конец  -->
	<!-- Скрипты начало  -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="templates/js/engine.js"></script>
	<!-- Скрипты конец -->
</head>
<body id="body" onkeydown="engine(event);">
	<script type="text/javascript" src="templates/js/tooltip.js"></script>	
	<div id='wrapper'>
		<!-- Шапка -->
		<div id='header'></div>
		<div id='logo'><img src="templates/images/logo.jpg" width="274" height="45" alt=""></div>
		<div id='content'>
			<div id='left_block'>   
				<!-- Блок Навигация -->
				<div class='left_block_title'><img src="templates/images/title_nav.gif" width="146" height="14" alt=""></div>
				<div class='left_block'>
					<div class='left_block_bottom'>
						<div class='menu_link'>
							<a href="news">НОВОСТИ</a>
							<a href="register">РЕГИСТРАЦИЯ</a>
							<a href="download">СКАЧАТЬ</a>
							<a href="about">О СЕРВЕРЕ</a>
							<a href="statistics">СТАТИСТИКА</a>
							<a href="prison">ТЮРЬМА</a>
							<a href="rules">ПРАВИЛА</a>
							<a href="recover">ЗАБЫЛИ ПАРОЛЬ</a>
						</div>
					</div>
				</div> 
				<!-- Блок Навигация конец -->
				
				<!-- Блок Топ -->
				<div class='left_block_title'><img src="templates/images/title_top.gif" width="146" height="14" alt=""></div>
				<div class='left_block'>
					<div class='left_block_bottom'>
						<div class='menu_link'>
							<a href="top">РЕЙТИНГ TOP 50</a>
							<a href="guilds">ГИЛЬДИИ</a>
							<a href="online">СЕЙЧАС ИГРАЮТ</a>
						</div>
					</div>
				</div> 
				<!-- Блок Топ конец -->
		  
				<!-- Блок Файлов -->
				<!-- <div class='left_block_title'><img src="templates/images/title_files.gif" width="146" height="14" alt=""></div>
				<div class='left_block'>
					<div class='left_block_bottom'>
						<div class='menu_link'>
							<a href="#">КЛИЕНТ</a>
							<a href="#">ЗВУК/МУЗЫКА</a>
							<a href="#">АВТОКЛИКЕР</a>
						</div>
					</div>
				</div> -->
				<!-- Блок Файлов конец -->
 
				<!-- Блок Сообщество -->
				<div class='left_block_title'><img src="templates/images/title_community.gif" width="146" height="14" alt=""></div>
				<div class='left_block'>
					<div class='left_block_bottom'>
						<div class='menu_link'>
							<a href="#">ФОРУМ</a>
							<a href="#">МЫ ВКОНТАКТЕ</a>
							<a href="#">КАНАЛ YOUTUBE</a>
						</div>
					</div>
				</div>
				<!-- Блок Сообщество конец -->
		 
				<!-- Блок Статистика -->
				<div class='left_block_title'><img src="templates/images/title_stat.gif" width="146" height="14" alt=""></div>
				<div class='left_block'>
					<div class='left_block_end'>
						<div class='counter'>
							<a href="#" target="_blank"><img src="http://mu.mmotop.ru/images/88x31b_mu.png" width="88" height="31"></a>
						</div>
					</div>
				</div>
				<!-- Блок Статистика конец -->
			</div>
			<div id='right_block'>
				<!-- Блок Личный кабинет -->
				<div class='right_block_title'><img src="templates/images/title_lk.gif" width="146" height="14" alt=""></div>
				<div class='right_block'>
					<div class='right_block_bottom'>
						<div id='lk'>
							<div id='lk_top'>
								<div id='lk_bottom'>
									<? if(isset($_SESSION['UserName'])) { ?>
									<div style='color: #dbb795; text-transform:uppercase;'>
										<div class='account_menu'>
											<span>АККАУНТ <?=$UserStatus;?></span>
											<a href="account" style="color:#69F;">Панель управления</a>
											<a href="stats">Распределить очки</a>
											<a href="reset">Сделать ресет</a>
											<a href="grandreset">Сделать ребит</a>
											<a href="donate">Пожертвования</a>
											<a href="bank">Банк</a>
											<a href="shop">Магазин</a>
											<a href="exchanger">Обменник</a>
											<a href="hide">Скрытность</a>
											<a href="change">Сменить класс</a>
											<?php if (in_array($_SESSION['UserName'], explode(',', $Admin['account']))) echo '<a href="admin" style="text-decoration: blink; color: rgb(250, 0, 0);">Админка</a>'; ?>
											<span style="padding-top: 15px;">ПЕРСОНАЖ</span>
											<form name='select_char' method='post' action=''><?php echo $CharacterSelect;?></form>
										</div>																
									</div>
									<form action="" method="post" name="log_out">
										<div id='logout_button' style='padding-top: 15px;'><input type="hidden" name="exit" value="1"><a href="javascript://" onclick="document.log_out.submit();" type="submit"></a></div>
									</form>	
									<? } else { ?>
									<form action="" method="post" name="login">
										<div id='lk_fields'>
											<div class='f_icon'><img src="templates/images/login_icon.gif" width="24" height="21" alt=""></div>
											<div class='f_field'><input type="text" name="acc" maxlength="16" onmouseover="Tip('Логин');" onmouseout="UnTip();" size="10" maxlength="10" value='Логин' onfocus="if (this.value=='Логин') this.value=''" onblur="if (this.value=='') this.value='Логин'" value="Логин" size="20"></div>
											<div class='f_icon'><img src="templates/images/password_icon.gif" width="24" height="21" alt=""></div>
											<div class='f_field'><input type="password" name="pass" maxlength="16" onmouseover="Tip('Пароль');" onmouseout="UnTip();" size="10" maxlength="10" value='******' onfocus="if (this.value=='******') this.value=''" onblur="if (this.value=='') this.value='******'" value="Пароль" size="20"></div>
										</div>
										<div id='lk_captcha'>
											<div id='c_title'>Код:</div>
											<div id='c_input'><input type="text" name="security_code" size="10" onmouseover="Tip('Введите код, указанный на картинке');" onmouseout="UnTip();"></div>
											<div id='c_img'><img src="core/chaptcha.php" name="captcha" width="60" height="21" onclick="refresh_captcha();" onmouseover="Tip('Нажмите, что бы обновить код');" onmouseout="UnTip();"></div>
										</div>
										<div id='login_button'><a href="javascript://" onclick="document.login.submit();" type="submit"></a></div>
									</form>	
									<? } ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Блок Личный кабинет конец -->

				<!-- Блок Статус серверов -->
				<div class='right_block_title'><img src="templates/images/title_server.gif" width="146" height="14" alt=""></div>
				<div class='right_block'>
					<div class='right_block_bottom'>
						<div id='servers'>
							<div class='serv_name'><span class='s_title'>Сервер</span></div>
							<div class='serv_stat'><span class='s_title' style="display: block; padding-top: 3px;">Статус</span></div>
							<div class='serv_online'><span class='s_title'>Онлайн</span></div>
							<?php require_once 'core/online.php'; ?>
						</div>
						<div class='account_menu'>
						<span style="padding-top: 5px;">ВЫБЕРИТЕ СЕРВЕР</span>
						<?php require_once 'core/servers.php'; ?></div>
					</div>
				</div>
				<!-- Блок Статус серверов конец -->
		   
				<!-- Блок Эвенты -->
				<div class='right_block_title'><img src="templates/images/title_events.gif" width="146" height="14" alt=""></div>
				<div class='right_block'>
					<div class='right_block_bottom'>
						<div id="events"><script>EventsTime();</script></div>
					</div>
				</div>
				<!-- Блок Эвенты конец -->
		  
				<!-- Блок Последние темы -->
				<div class='right_block_title'><img src="templates/images/title_themes.gif" width="146" height="14" alt=""></div>
				<div class='right_block'>
					<div class='right_block_end'></div>
				</div>
				<!-- Блок Последние темы конец -->
			</div>
			<div id='center_block'>
				<div id='center_block_top'>
					<div id='center_block_bottom'>
						<div id='dle-content'>