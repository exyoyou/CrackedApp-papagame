package com.join.kotlin.ui.gameexpress.model.bean;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;", "", "<init>", "()V", "the_new_game_list", "", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;", "getThe_new_game_list", "()Ljava/util/List;", "setThe_new_game_list", "(Ljava/util/List;)V", "game_hot_topic_list", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;", "getGame_hot_topic_list", "setGame_hot_topic_list", "hot_game_comment_list", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "getHot_game_comment_list", "setHot_game_comment_list", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameExpressResultData {

    @Nullable
    private List<GameExpressHotTopicBean> game_hot_topic_list;

    @Nullable
    private List<GameExpressHotCommentBean> hot_game_comment_list;

    @Nullable
    private List<? extends GameExpressTheNewItem> the_new_game_list;

    @Nullable
    public final List<GameExpressHotTopicBean> getGame_hot_topic_list() {
        return this.game_hot_topic_list;
    }

    @Nullable
    public final List<GameExpressHotCommentBean> getHot_game_comment_list() {
        return this.hot_game_comment_list;
    }

    @Nullable
    public final List<GameExpressTheNewItem> getThe_new_game_list() {
        return this.the_new_game_list;
    }

    public final void setGame_hot_topic_list(@Nullable List<GameExpressHotTopicBean> list) {
        this.game_hot_topic_list = list;
    }

    public final void setHot_game_comment_list(@Nullable List<GameExpressHotCommentBean> list) {
        this.hot_game_comment_list = list;
    }

    public final void setThe_new_game_list(@Nullable List<? extends GameExpressTheNewItem> list) {
        this.the_new_game_list = list;
    }
}
