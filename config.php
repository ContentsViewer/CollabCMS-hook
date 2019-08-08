<?php
/**
 * 設定
 */
define( 'LOG_FILE', dirname( __FILE__ ) . '/hook.log' );
define( 'LOG_ERR', dirname( __FILE__ ) . '/hook-error.log' );
define( 'SECRET_KEY', 'kohhosodaslab' );

/**
 * 実行するコマンド
 */
$commands = array(
  'develop' => '',//developブランチ
  'master'  => 'sh ./auto_pull.sh' // masterブランチ
);