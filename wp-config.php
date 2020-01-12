<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'A-WORDPRESS5' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'hLc8-P.~c#Cb}|)&xyFOV&#HuIqyU(@{mP2zW^f~E*L[PrT}#*Ku/Xygf<)GG0)V' );
define( 'SECURE_AUTH_KEY',  'FC*57!{F=ZJx/>__m5llA)til6EU=6DoPUYD/(LRine)[@?u;=MM~CF1~wY}j[QP' );
define( 'LOGGED_IN_KEY',    'bSeDJvhlku=v):tD[bsD~[xNFug{z%[.&[HGq2vX$k)cNBU:$vG0/8)3W;% Y!6r' );
define( 'NONCE_KEY',        'alIky8?lu/yKGvEBo4;#:2O<|Tt]w<BLWCNBYm0_?Ol2wt:T@&+`LsGXqZPXAYho' );
define( 'AUTH_SALT',        '6`vN76e*gYnERg(Rl_/L&_pl~620~U?30qgJs/@vn!3S]G^TdukkNo@ky_*^XEph' );
define( 'SECURE_AUTH_SALT', 'nuLWD~hrQr|Zf0b6LtZHh$|LBQytU8; }nk/[Yxo,[j3zlKGf3=h@4^<7%Y!)TrE' );
define( 'LOGGED_IN_SALT',   'nhq}/:;75-=FWQ-@Q~wDD5q>IQX|7.:V }@IUh,u`.,E;6M5qw5B+0NvscX{]ijb' );
define( 'NONCE_SALT',       'Gpwhj/`qRQyZbF(|$,Go,x`5|U0U9&zGie DIM_%!a_EC2`84Kft< >jwgAPq=N!' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
