package com.cmj.book.freelecspringboot2webservice.web.dto;

import com.cmj.book.freelecspringboot2webservice.domain.posts.Posts;
import lombok.Getter;

@Getter
public class PostsResponseDto {

    private Long id;

    private String title;

    private String content;

    private String author;

    public PostsResponseDto(Posts entity) {
        this.id = entity.getId();
        this.author = entity.getAuthor();
    }

}
