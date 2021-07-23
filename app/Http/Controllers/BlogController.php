<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller {
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $totalStocks = Blog::all()->toArray();
        $data = [
                'title' => 'Blog List',
                'list'  => $totalStocks,

        ];
        return view('blog/index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('blog/form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $submit = $_POST['post'];
        if(!empty($submit)) {
            if(isset($submit['id']) && !empty($submit['id'])) {
                $blog = Blog::find($submit['id']);
                if(!empty($blog)) {
                    $blog->update(
                            [
                                    'title'     => $submit['title'],
                                    'description'         => $submit['description']
                            ]
                    );
                    return redirect()->route('blog.edit', $blog->id);
                }
            }
            else{
//                $blog = Blog::create(
//                        [
//                                'title'     => (isset($submit['title']) && $submit['title'] !== '') ? $submit['title'] : '',
//                                'description' => (isset($submit['description']) && $submit['description'] !== '') ? $submit['description'] : '',
//                        ]);
                $blog = new Blog();
                $userId = Auth::id();
                $blog->title = (isset($submit['title']) && $submit['title'] !== '') ? $submit['title'] : '';
                $blog->description = (isset($submit['description']) && $submit['description'] !== '') ? $submit['description'] : '';
                $blog->created_by = (isset($userId) && $userId !== '') ? $userId : '';
                if($blog->save()) {
                    return redirect()->route('blog.edit', $blog->id);
                }
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        echo '<pre>';
        print_r('aaa');
        echo '</pre>';
        die;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //     $editable = Blog::where('id', $id)->orderBy('id', 'desc')->get()->toArray();
        $editable = Blog::find($id)->toArray();
        return view('blog/form', compact(['editable']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id) {
        if(!empty($id)) {
            $blog = Blog::find($id);
            if($blog->delete()){
                return redirect()->route('blog')->with('msg','Blog Deleted.');
            }
            return redirect()->route('blog')->with('msg','Could not delete blog.');
        }
        return redirect()->route('blog')->with('msg','Blog Id empty.');
    }
}
