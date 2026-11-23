package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SearchIntegratedBean {
    private SearchIntegratedFavoriteBean game_favorite_list;
    private SearchIntegratedGameBean game_list;
    private String keyword;
    private SearchIntegratedPostBean posts_list;

    public SearchIntegratedFavoriteBean getGame_favorite_list() {
        return this.game_favorite_list;
    }

    public SearchIntegratedGameBean getGame_list() {
        return this.game_list;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public SearchIntegratedPostBean getPosts_list() {
        return this.posts_list;
    }

    public void setGame_favorite_list(SearchIntegratedFavoriteBean game_favorite_list) {
        this.game_favorite_list = game_favorite_list;
    }

    public void setGame_list(SearchIntegratedGameBean game_list) {
        this.game_list = game_list;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setPosts_list(SearchIntegratedPostBean posts_list) {
        this.posts_list = posts_list;
    }
}
