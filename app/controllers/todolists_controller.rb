class TodolistsController < ApplicationController
  def new
    @list=List.new
  end
  
  def create
    # データの新規登録するためのインスタンス作成
    list = LIst.new(list_params)
    # データをデータベースに保存するためのsaveメソッド実行
    list.save
    # トップ画面へリダイレクト
    redirect_to'/top'
  end
  
  
  private
  #ストロングパラメーター
  def list_params
    params.require(:list).permit(:title,:body)
  end
  
end
