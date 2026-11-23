package com.join.kotlin.discount.model.bean;

import com.join.mgps.activity.TagGameListActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0086\u0001\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\bHÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006."}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailNoticeItemBean;", "", "content", "", "icon", "jumpDetailUrl", "jumpUrl", "noticeCount", "", "releaseTime", TagGameListActivity_.TAG_EXTRA, "tagBg", "title", "id", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getIcon", "getJumpDetailUrl", "getJumpUrl", "getNoticeCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getReleaseTime", "getTag", "getTagBg", "getTitle", "getId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailNoticeItemBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailNoticeItemBean {

    @Nullable
    private final String content;

    @Nullable
    private final String icon;

    @Nullable
    private final String id;

    @Nullable
    private final String jumpDetailUrl;

    @Nullable
    private final String jumpUrl;

    @Nullable
    private final Integer noticeCount;

    @Nullable
    private final String releaseTime;

    @Nullable
    private final String tag;

    @Nullable
    private final String tagBg;

    @Nullable
    private final String title;

    public GameDetailNoticeItemBean() {
        this(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getJumpDetailUrl() {
        return this.jumpDetailUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getNoticeCount() {
        return this.noticeCount;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getReleaseTime() {
        return this.releaseTime;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getTag() {
        return this.tag;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTagBg() {
        return this.tagBg;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final GameDetailNoticeItemBean copy(@Nullable String content, @Nullable String icon, @Nullable String jumpDetailUrl, @Nullable String jumpUrl, @Nullable Integer noticeCount, @Nullable String releaseTime, @Nullable String tag, @Nullable String tagBg, @Nullable String title, @Nullable String id2) {
        return new GameDetailNoticeItemBean(content, icon, jumpDetailUrl, jumpUrl, noticeCount, releaseTime, tag, tagBg, title, id2);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailNoticeItemBean)) {
            return false;
        }
        GameDetailNoticeItemBean gameDetailNoticeItemBean = (GameDetailNoticeItemBean) other;
        return Intrinsics.areEqual(this.content, gameDetailNoticeItemBean.content) && Intrinsics.areEqual(this.icon, gameDetailNoticeItemBean.icon) && Intrinsics.areEqual(this.jumpDetailUrl, gameDetailNoticeItemBean.jumpDetailUrl) && Intrinsics.areEqual(this.jumpUrl, gameDetailNoticeItemBean.jumpUrl) && Intrinsics.areEqual(this.noticeCount, gameDetailNoticeItemBean.noticeCount) && Intrinsics.areEqual(this.releaseTime, gameDetailNoticeItemBean.releaseTime) && Intrinsics.areEqual(this.tag, gameDetailNoticeItemBean.tag) && Intrinsics.areEqual(this.tagBg, gameDetailNoticeItemBean.tagBg) && Intrinsics.areEqual(this.title, gameDetailNoticeItemBean.title) && Intrinsics.areEqual(this.id, gameDetailNoticeItemBean.id);
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getJumpDetailUrl() {
        return this.jumpDetailUrl;
    }

    @Nullable
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @Nullable
    public final Integer getNoticeCount() {
        return this.noticeCount;
    }

    @Nullable
    public final String getReleaseTime() {
        return this.releaseTime;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @Nullable
    public final String getTagBg() {
        return this.tagBg;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.icon;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.jumpDetailUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.jumpUrl;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.noticeCount;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        String str5 = this.releaseTime;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.tag;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.tagBg;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.title;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.id;
        return iHashCode9 + (str9 != null ? str9.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GameDetailNoticeItemBean(content=" + this.content + ", icon=" + this.icon + ", jumpDetailUrl=" + this.jumpDetailUrl + ", jumpUrl=" + this.jumpUrl + ", noticeCount=" + this.noticeCount + ", releaseTime=" + this.releaseTime + ", tag=" + this.tag + ", tagBg=" + this.tagBg + ", title=" + this.title + ", id=" + this.id + ')';
    }

    public GameDetailNoticeItemBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9) {
        this.content = str;
        this.icon = str2;
        this.jumpDetailUrl = str3;
        this.jumpUrl = str4;
        this.noticeCount = num;
        this.releaseTime = str5;
        this.tag = str6;
        this.tagBg = str7;
        this.title = str8;
        this.id = str9;
    }

    public /* synthetic */ GameDetailNoticeItemBean(String str, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, String str8, String str9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? "" : str4, (i10 & 16) != 0 ? 0 : num, (i10 & 32) != 0 ? "" : str5, (i10 & 64) != 0 ? "" : str6, (i10 & 128) != 0 ? "" : str7, (i10 & 256) != 0 ? "" : str8, (i10 & 512) == 0 ? str9 : "");
    }
}
