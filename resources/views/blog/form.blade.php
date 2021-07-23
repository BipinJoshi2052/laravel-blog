@extends('layouts/app')
@section('content')
{{--    @if(!empty($editable))--}}
<div class="container">
        <form method = "post" action = "{{route('blog.store')}}" enctype = "multipart/form-data">
            @csrf
            <input type = "hidden" name = "post[id]" value = "<?= isset($editable['id']) && ($editable['id'] != '') ? $editable['id'] : ''; ?>"/>
            <?php $counter = 0; ?>
            <div class = "row">
                <div class = "col-md-6 align-self-center">
                    <?php
                    if (isset($editable) && !empty($editable)): ?>
                    <h4 class = "display-inline-block text-themecolor margin-bottom-0 margin-top-0"><?= $editable['title']; ?></h4>
                    <?php else: ?>
                    <h4 class = "display-inline-block text-themecolor margin-bottom-0 margin-top-0">Add New Blog</h4>
                    <?php endif; ?>
                </div>
                <div class = "col-md-6 align-self-center text-right">
                    <button type = "submit" class = "btn btn-success">Save</button>
                </div>
            </div>
            <div class = "row mt-10">
                <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class = "card">
                        <div class = "card-body">
                            <div class = "row">
                                <div class = "col-lg-12 col-sm-12 form-group">
                                    <?php $counter++; ?>
                                    <label for = "<?php echo $counter; ?>" class = "control-label">Title:</label>
                                    <input required type = "text" id = "<?php echo $counter; ?>" value = "<?= isset($editable['title']) && ($editable['title'] != '') ? $editable['title'] : ''; ?>" name = "post[title]" class = "form-control required">
                                </div>

                                <div class = "col-lg-12 col-sm-12 form-group">
                                    <?php $counter++; ?>
                                    <label for = "<?php echo $counter; ?>" class = "control-label">Description:</label>
                                    <textarea id = "tinymce1" class = "form-control required" rows = "10" name = "post[description]">
                              <?= isset($editable['description']) && ($editable['description'] != '') ? $editable['description'] : ''; ?>
                </textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
</div>
{{--    @endif--}}
@endsection