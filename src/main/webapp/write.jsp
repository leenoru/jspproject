<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>localhost</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>게시판</h2>
        <hr>
        <h3>글쓰기</h3>
        <form method="post" action="create.jsp">
            <div class="input-group mb-3">
                <label for="title" class="form-label">제목</label>
                <input type="text" id="title" name="title" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <label for="author" class="form-label">작성자</label>
                <input type="text" id="author" name="author" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <label for="content" class="form-label">내용</label>
                <textarea id="content" name="content" rows = "5" class="form-control" required></textarea>
            </div>
            <button type="submit" class="btn btn-success">글쓰기</button>
        </form>
        <div>
        </div>
    </div>
</body>
</html>