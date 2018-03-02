" QFixGrep.

"QuickFix処理制御 >
  " QuickFix処理制御
  " 0 : なにもしない
  " 1 : QuickFix/ロケーションリストの両方で有効
  " 2 : ロケーションリストのみ有効
  " 3 : QFixMemo/QFixGrepコマンドで開いた場合のみ有効
  let QFixWin_EnableMode = 2
"QuickFixウィンドウ >
"
  let QFix_PreviewEnable = 1 " QuickFixウィンドウでプレビューを有効にする
  let QFix_Height = 0 " QuickFixウィンドウの高さ
  let QFix_Width = 0 " QuickFixウィンドウの幅
  let QFix_CopenCmd = '' " QuickFixウィンドウの開き方
  let QFix_CursorLine = 1 " QuickFixウィンドウでカーソルラインを表示
  set winwidth=20 " カレントウィンドウの最低幅(Vim設定値)
  let QFix_PreviewFtypeHighlight = 1 " QuickFixウィンドウのプレビューでfiletype別のハイライトを有効にする
  let QFix_CloseOnJump = 0 " QuickFixウィンドウから開いた後ウィンドウを閉じる
  let QFix_Edit = '' " QuickFixウィンドウの <S-CR> は分割ではなくタブで開くには 'tab'に設定する
  let QFix_UseLocationList = 0 " QuickFixウィンドウではなくロケーションリストを使用する

"プレビューウィンドウ >
  let QFix_PreviewExclude = '\.pdf$\|\.mp3$\|\.jpg$\|\.bmp$\|\.png$\|\.zip$\|\.rar$\|\.exe$\|\.dll$\|\.lnk$' " プレビュー対象外ファイルの指定
  set previewheight=12 " プレビューウィンドウの高さ(Vim設定値)
  let QFix_PreviewHeight = 12 " プレビューウィンドウの高さ(previewheightを使用したくない場合のみ指定)
  let QFix_PreviewWidth  = 0 " プレビューウィンドウの幅
  let QFix_PreviewOpenCmd = 'leftabove' " プレビューウィンドウの開き方指定
  let QFix_PreviewCursorLine = 1 " プレビュー画面のカーソルラインを表示
  let QFix_PreviewWrap = 1 " プレビューウィンドウの折り返し表示

"grepオプション >
  let MyGrep_Key  = '<leader>' " Grepコマンドのキーマップ
  let MyGrep_KeyB = 'g' " Grepコマンドの2ストローク目キーマップ
  let MyGrep_ExcludeReg = '[~#]$\|\.dll$\|\.exe$\|\.lnk$\|\.o$\|\.png$\|\.jpg$\|\.sass-cache$\|\.obj$\|\.pdf$\|\.xls$' " grep対象にしたくないファイル名の正規表現
  let mygrepprg = 'internal' " 使用するgrep(Unix)
  let myjpgrepprg = 'internal' " 日本語が含まれる場合のgrep指定

  let MyGrep_ShellEncoding = 'utf-8' " 外部grep(shell)のエンコーディング(Unix)
  let MyGrep_FileEncoding = '' " 外部grep(shell)でエンコーディング変換が行われる場合のエンコーディング指定
  " (通常はMyGrep_ShellEncodingと同一のため設定しないでください)
  let MyGrep_CurrentDirMode = 0 " 検索ディレクトリはカレントディレクトリを基点にする
  " 0 : 現バッファのファイルが存在するディレクトリ
  " 1 : カレントディレクトリ
  let MyGrep_RecursiveMode = 1 " 検索は常に再帰検索
  let MyGrep_Damemoji = 2 " 「だめ文字」対策を有効/無効
  let MyGrep_DamemojiReplaceReg = '(..)' " 「だめ文字」を置き換える正規表現
  let MyGrep_DamemojiReplace = '[]' " 「だめ文字」を自分で追加指定したい場合は正規表現で指定する
  let MyGrepcmd_useropt = '' " ユーザ定義可能な追加オプション
  let MyGrep_DefaultSearchWord = 0 " QFixGrepの検索時にカーソル位置の単語を拾う/拾わない
  let MyGrep_error = 0 " grep実行時にエラーメッセージが出たら表示


