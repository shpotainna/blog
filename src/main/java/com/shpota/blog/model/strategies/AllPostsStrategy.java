package com.shpota.blog.model.strategies;

import com.shpota.blog.model.BlogRepository;
import com.shpota.blog.model.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AllPostsStrategy extends Strategy {
    public AllPostsStrategy(BlogRepository repository) {
        super(repository);
    }

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Post> posts = repository.getAllPost();
        request.setAttribute("posts", posts);
        request.setAttribute("formatter", DATE_FORMATTER);
        request.getRequestDispatcher("/posts.jsp").forward(request, response);
    }
}