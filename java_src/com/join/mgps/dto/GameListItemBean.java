package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameListItemBean extends CollectionBeanSub {
    int bg_color_tag_type;
    private List<CommentBaseBean> comment_list;
    int comment_score_switch;
    private DownloadTask downloadTask;
    private String game_describe_second;
    GameScore game_score;
    int itemType;

    public GameListItemBean() {
    }

    public int getBg_color_tag_type() {
        return this.bg_color_tag_type;
    }

    public List<CommentBaseBean> getComment_list() {
        return this.comment_list;
    }

    public int getComment_score_switch() {
        return this.comment_score_switch;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public String getGame_describe_second() {
        return this.game_describe_second;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public int getItemType() {
        return this.itemType;
    }

    public void setBg_color_tag_type(int bg_color_tag_type) {
        this.bg_color_tag_type = bg_color_tag_type;
    }

    public void setComment_list(List<CommentBaseBean> comment_list) {
        this.comment_list = comment_list;
    }

    public void setComment_score_switch(int comment_score_switch) {
        this.comment_score_switch = comment_score_switch;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setGame_describe_second(String game_describe_second) {
        this.game_describe_second = game_describe_second;
    }

    public void setGame_score(GameScore game_score) {
        this.game_score = game_score;
    }

    public void setItemType(int itemType) {
        this.itemType = itemType;
    }

    public GameListItemBean(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }
}
