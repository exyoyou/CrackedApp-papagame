package com.join.kotlin.discount.model.bean;

import com.baidu.mobads.sdk.internal.bn;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b&\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010,\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rHÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0082\u0001\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010/J\u0013\u00100\u001a\u00020\t2\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\u0007HÖ\u0001J\t\u00103\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0013R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0013R\u001b\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0013¨\u00064"}, d2 = {"Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "", "avatar", "", "comment_id", "content", "like", "", "my_like", "", "nickname", "show_time", bn.f7600l, "", "Lcom/join/kotlin/discount/model/bean/CommentTagBean;", "uid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getComment_id", "getContent", "getLike", "()Ljava/lang/Integer;", "setLike", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMy_like", "()Ljava/lang/Boolean;", "setMy_like", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getNickname", "getShow_time", "getTags", "()Ljava/util/List;", "getUid", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommentDetailBean {

    @Nullable
    private final String avatar;

    @Nullable
    private final String comment_id;

    @Nullable
    private final String content;

    @Nullable
    private Integer like;

    @Nullable
    private Boolean my_like;

    @Nullable
    private final String nickname;

    @Nullable
    private final String show_time;

    @Nullable
    private final List<CommentTagBean> tags;

    @Nullable
    private final String uid;

    public CommentDetailBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Boolean bool, @Nullable String str4, @Nullable String str5, @Nullable List<CommentTagBean> list, @Nullable String str6) {
        this.avatar = str;
        this.comment_id = str2;
        this.content = str3;
        this.like = num;
        this.my_like = bool;
        this.nickname = str4;
        this.show_time = str5;
        this.tags = list;
        this.uid = str6;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getComment_id() {
        return this.comment_id;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getLike() {
        return this.like;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getMy_like() {
        return this.my_like;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getShow_time() {
        return this.show_time;
    }

    @Nullable
    public final List<CommentTagBean> component8() {
        return this.tags;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @NotNull
    public final CommentDetailBean copy(@Nullable String avatar, @Nullable String comment_id, @Nullable String content, @Nullable Integer like, @Nullable Boolean my_like, @Nullable String nickname, @Nullable String show_time, @Nullable List<CommentTagBean> tags, @Nullable String uid) {
        return new CommentDetailBean(avatar, comment_id, content, like, my_like, nickname, show_time, tags, uid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentDetailBean)) {
            return false;
        }
        CommentDetailBean commentDetailBean = (CommentDetailBean) other;
        return Intrinsics.areEqual(this.avatar, commentDetailBean.avatar) && Intrinsics.areEqual(this.comment_id, commentDetailBean.comment_id) && Intrinsics.areEqual(this.content, commentDetailBean.content) && Intrinsics.areEqual(this.like, commentDetailBean.like) && Intrinsics.areEqual(this.my_like, commentDetailBean.my_like) && Intrinsics.areEqual(this.nickname, commentDetailBean.nickname) && Intrinsics.areEqual(this.show_time, commentDetailBean.show_time) && Intrinsics.areEqual(this.tags, commentDetailBean.tags) && Intrinsics.areEqual(this.uid, commentDetailBean.uid);
    }

    @Nullable
    public final String getAvatar() {
        return this.avatar;
    }

    @Nullable
    public final String getComment_id() {
        return this.comment_id;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final Integer getLike() {
        return this.like;
    }

    @Nullable
    public final Boolean getMy_like() {
        return this.my_like;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getShow_time() {
        return this.show_time;
    }

    @Nullable
    public final List<CommentTagBean> getTags() {
        return this.tags;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.avatar;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.comment_id;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.content;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.like;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.my_like;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.nickname;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.show_time;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<CommentTagBean> list = this.tags;
        int iHashCode8 = (iHashCode7 + (list == null ? 0 : list.hashCode())) * 31;
        String str6 = this.uid;
        return iHashCode8 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setLike(@Nullable Integer num) {
        this.like = num;
    }

    public final void setMy_like(@Nullable Boolean bool) {
        this.my_like = bool;
    }

    @NotNull
    public String toString() {
        return "CommentDetailBean(avatar=" + this.avatar + ", comment_id=" + this.comment_id + ", content=" + this.content + ", like=" + this.like + ", my_like=" + this.my_like + ", nickname=" + this.nickname + ", show_time=" + this.show_time + ", tags=" + this.tags + ", uid=" + this.uid + ')';
    }
}
