<?php namespace App\Http\Controllers;

use App\Page;

class HomeController extends Controller {

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		/*
		    渲染 learnlaravel5/resources/views/home.blade.php 视图文件
    		把变量 $pages 传进视图，$pages = Page::all()
    		Page::all() 调用的是 Eloquent 中的 all() 方法，返回 pages 表中的所有数据。
		 */
		return view('home')->withPages(Page::all());
	}

}
