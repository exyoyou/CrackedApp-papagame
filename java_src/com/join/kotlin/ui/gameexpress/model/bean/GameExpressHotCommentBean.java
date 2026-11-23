package com.join.kotlin.ui.gameexpress.model.bean;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.SearchHistoryBean;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\u001e\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0007\"\u0004\b)\u0010\tR\u001c\u0010*\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\r\"\u0004\b,\u0010\u000fR\u001c\u0010-\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\r\"\u0004\b/\u0010\u000fR\"\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001a\u00107\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010$\"\u0004\b9\u0010&¨\u0006:"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "", "<init>", "()V", "game_id", "", "getGame_id", "()J", "setGame_id", "(J)V", SearchHistoryBean.GAME_NAME, "", "getGame_name", "()Ljava/lang/String;", "setGame_name", "(Ljava/lang/String;)V", "game_icon", "getGame_icon", "setGame_icon", "comment_text", "getComment_text", "setComment_text", "comment_id", "getComment_id", "setComment_id", "comment_praise", "", "getComment_praise", "()I", "setComment_praise", "(I)V", "comment_count", "getComment_count", "setComment_count", "is_praise", "", "()Z", "set_praise", "(Z)V", "uid", "getUid", "setUid", "nickname", "getNickname", "setNickname", "avatar", "getAvatar", "setAvatar", "recommend_game_list", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getRecommend_game_list", "()Ljava/util/List;", "setRecommend_game_list", "(Ljava/util/List;)V", "hasExposed", "getHasExposed", "setHasExposed", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameExpressHotCommentBean {

    @Nullable
    private String avatar;
    private int comment_count;
    private long comment_id;
    private int comment_praise;

    @Nullable
    private String comment_text;

    @Nullable
    private String game_icon;
    private long game_id;

    @Nullable
    private String game_name;
    private boolean hasExposed;

    @JsonProperty("is_praise")
    private boolean is_praise;

    @Nullable
    private String nickname;

    @Nullable
    private List<? extends CommonGameInfoBean> recommend_game_list;
    private long uid;

    @Nullable
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getComment_count() {
        return this.comment_count;
    }

    public final long getComment_id() {
        return this.comment_id;
    }

    public final int getComment_praise() {
        return this.comment_praise;
    }

    @Nullable
    public final String getComment_text() {
        return this.comment_text;
    }

    @Nullable
    public final String getGame_icon() {
        return this.game_icon;
    }

    public final long getGame_id() {
        return this.game_id;
    }

    @Nullable
    public final String getGame_name() {
        return this.game_name;
    }

    public final boolean getHasExposed() {
        return this.hasExposed;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final List<CommonGameInfoBean> getRecommend_game_list() {
        return this.recommend_game_list;
    }

    public final long getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: is_praise, reason: from getter */
    public final boolean getIs_praise() {
        return this.is_praise;
    }

    public final void setAvatar(@Nullable String str) {
        this.avatar = str;
    }

    public final void setComment_count(int i10) {
        this.comment_count = i10;
    }

    public final void setComment_id(long j10) {
        this.comment_id = j10;
    }

    public final void setComment_praise(int i10) {
        this.comment_praise = i10;
    }

    public final void setComment_text(@Nullable String str) {
        this.comment_text = str;
    }

    public final void setGame_icon(@Nullable String str) {
        this.game_icon = str;
    }

    public final void setGame_id(long j10) {
        this.game_id = j10;
    }

    public final void setGame_name(@Nullable String str) {
        this.game_name = str;
    }

    public final void setHasExposed(boolean z10) {
        this.hasExposed = z10;
    }

    public final void setNickname(@Nullable String str) {
        this.nickname = str;
    }

    public final void setRecommend_game_list(@Nullable List<? extends CommonGameInfoBean> list) {
        this.recommend_game_list = list;
    }

    public final void setUid(long j10) {
        this.uid = j10;
    }

    public final void set_praise(boolean z10) {
        this.is_praise = z10;
    }
}
