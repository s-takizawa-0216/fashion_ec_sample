crumb :root do
  link "ZOZOTOWN", root_path
end

# ログイン画面
crumb :signIn do
  link "ログイン", new_user_session_path
  parent :root
end

# 新規登録画面
crumb :signUP do
  link "新規会員登録", new_user_registration_path
  parent :root
end

# Googleでの新規登録画面
crumb :google do
  link "新規会員登録", new_user_google_path
  parent :root
end

# ユーザー登録情報
crumb :userShow do
  link "登録情報", user_path
  parent :root
end

# ユーザー基本情報の追加
crumb :userNew do
  link "基本情報の追加", new_user_path
  parent :root
end

# ユーザー基本情報の変更
crumb :userEdit do
  link "基本情報の変更", edit_user_path
  parent :root
end

# メールアドレスの追加
crumb :userEmail do
  link "メールアドレスの変更", user_email_path
  parent :root
end

# お届け先の追加
crumb :userShipping do
  link "お届け先の追加",  shipping_users_path
  parent :root
end

# お届け先の変更
crumb :editShipping do
  link "お届け先の変更",  shipping_edit_users_path
  parent :root
end


# アイテム詳細のブランド
crumb :brandShow do
  item = Item.find(params[:id]).brand.name
  link item,  item_path
  parent :root
end

# アイテム詳細の親カテゴリー
crumb :parentCategorydShow do
  parent_category = Item.find(params[:id]).parent_category.name
  link parent_category,  item_path
  parent :brandShow
end

# アイテム詳細の子カテゴリー
crumb :childCategorydShow do
  child_category = Item.find(params[:id]).child_category.name
  link child_category,  item_path
  parent :parentCategorydShow 
end

# アイテム詳細
crumb :itemShow do
  link "アイテム詳細",  item_path
  parent :childCategorydShow
end
