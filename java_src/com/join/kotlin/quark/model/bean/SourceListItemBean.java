package com.join.kotlin.quark.model.bean;

import com.join.mgps.activity.TagGameListActivity_;
import com.kwad.sdk.api.model.AdnName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\bC\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bç\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010?\u001a\u00020\u0003J\u0006\u0010@\u001a\u00020\rJ\u0006\u0010A\u001a\u00020\rJ\b\u0010B\u001a\u0004\u0018\u00010\u0003J\b\u0010C\u001a\u0004\u0018\u00010\u0003J\u0006\u0010D\u001a\u00020\rJ\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010L\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010M\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010*J\u000b\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010P\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010V\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010W\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010X\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010Z\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u0096\u0002\u0010[\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÆ\u0001¢\u0006\u0002\u0010\\J\u0013\u0010]\u001a\u00020\r2\b\u0010^\u001a\u0004\u0018\u00010_HÖ\u0003J\t\u0010`\u001a\u00020\u0007HÖ\u0001J\t\u0010a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001fR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b'\u0010#R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b(\u0010#R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010+\u001a\u0004\b)\u0010*R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001fR\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b-\u0010#R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001fR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001fR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001fR\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b3\u0010#R\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b4\u0010#R\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010$\u001a\u0004\b5\u0010#R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b6\u0010#\"\u0004\b7\u00108R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b9\u0010#\"\u0004\b:\u00108R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006b"}, d2 = {"Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Ljava/io/Serializable;", "avatar", "", "disk_url", "icon", "id", "", "intro", "nickname", "priority", "publisher", "recommend", "", "release_time", "status", TagGameListActivity_.TAG_EXTRA, "tips", "title", "typeName", "typeColor", "type", "uid", "uploaded", "wanted", "wanters", "diskResource", "Lcom/join/kotlin/quark/model/bean/DiskResourceBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/join/kotlin/quark/model/bean/DiskResourceBean;)V", "getAvatar", "()Ljava/lang/String;", "getDisk_url", "getIcon", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getIntro", "getNickname", "getPriority", "getPublisher", "getRecommend", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRelease_time", "getStatus", "getTag", "getTips", "getTitle", "getTypeName", "getTypeColor", "getType", "getUid", "getUploaded", "getWanted", "setWanted", "(Ljava/lang/Integer;)V", "getWanters", "setWanters", "getDiskResource", "()Lcom/join/kotlin/quark/model/bean/DiskResourceBean;", "setDiskResource", "(Lcom/join/kotlin/quark/model/bean/DiskResourceBean;)V", "getAuthorName", "wantVisible", "withWant", "iconUrl", "introText", "hideUploadView", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/join/kotlin/quark/model/bean/DiskResourceBean;)Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "equals", AdnName.OTHER, "", "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceListItemBean implements Serializable {

    @Nullable
    private final String avatar;

    @Nullable
    private DiskResourceBean diskResource;

    @Nullable
    private final String disk_url;

    @Nullable
    private final String icon;

    @Nullable
    private final Integer id;

    @Nullable
    private final String intro;

    @Nullable
    private final String nickname;

    @Nullable
    private final Integer priority;

    @Nullable
    private final Integer publisher;

    @Nullable
    private final Boolean recommend;

    @Nullable
    private final String release_time;

    @Nullable
    private final Integer status;

    @Nullable
    private final String tag;

    @Nullable
    private final String tips;

    @Nullable
    private final String title;

    @Nullable
    private final Integer type;

    @Nullable
    private final String typeColor;

    @Nullable
    private final String typeName;

    @Nullable
    private final Integer uid;

    @Nullable
    private final Integer uploaded;

    @Nullable
    private Integer wanted;

    @Nullable
    private Integer wanters;

    public SourceListItemBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool, @Nullable String str6, @Nullable Integer num4, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable DiskResourceBean diskResourceBean) {
        this.avatar = str;
        this.disk_url = str2;
        this.icon = str3;
        this.id = num;
        this.intro = str4;
        this.nickname = str5;
        this.priority = num2;
        this.publisher = num3;
        this.recommend = bool;
        this.release_time = str6;
        this.status = num4;
        this.tag = str7;
        this.tips = str8;
        this.title = str9;
        this.typeName = str10;
        this.typeColor = str11;
        this.type = num5;
        this.uid = num6;
        this.uploaded = num7;
        this.wanted = num8;
        this.wanters = num9;
        this.diskResource = diskResourceBean;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getRelease_time() {
        return this.release_time;
    }

    @Nullable
    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getTag() {
        return this.tag;
    }

    @Nullable
    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getTips() {
        return this.tips;
    }

    @Nullable
    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getTypeName() {
        return this.typeName;
    }

    @Nullable
    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getTypeColor() {
        return this.typeColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getUid() {
        return this.uid;
    }

    @Nullable
    /* JADX INFO: renamed from: component19, reason: from getter */
    public final Integer getUploaded() {
        return this.uploaded;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDisk_url() {
        return this.disk_url;
    }

    @Nullable
    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Integer getWanted() {
        return this.wanted;
    }

    @Nullable
    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Integer getWanters() {
        return this.wanters;
    }

    @Nullable
    /* JADX INFO: renamed from: component22, reason: from getter */
    public final DiskResourceBean getDiskResource() {
        return this.diskResource;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getIntro() {
        return this.intro;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getPriority() {
        return this.priority;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getPublisher() {
        return this.publisher;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getRecommend() {
        return this.recommend;
    }

    @NotNull
    public final SourceListItemBean copy(@Nullable String avatar, @Nullable String disk_url, @Nullable String icon, @Nullable Integer id2, @Nullable String intro, @Nullable String nickname, @Nullable Integer priority, @Nullable Integer publisher, @Nullable Boolean recommend, @Nullable String release_time, @Nullable Integer status, @Nullable String tag, @Nullable String tips, @Nullable String title, @Nullable String typeName, @Nullable String typeColor, @Nullable Integer type, @Nullable Integer uid, @Nullable Integer uploaded, @Nullable Integer wanted, @Nullable Integer wanters, @Nullable DiskResourceBean diskResource) {
        return new SourceListItemBean(avatar, disk_url, icon, id2, intro, nickname, priority, publisher, recommend, release_time, status, tag, tips, title, typeName, typeColor, type, uid, uploaded, wanted, wanters, diskResource);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceListItemBean)) {
            return false;
        }
        SourceListItemBean sourceListItemBean = (SourceListItemBean) other;
        return Intrinsics.areEqual(this.avatar, sourceListItemBean.avatar) && Intrinsics.areEqual(this.disk_url, sourceListItemBean.disk_url) && Intrinsics.areEqual(this.icon, sourceListItemBean.icon) && Intrinsics.areEqual(this.id, sourceListItemBean.id) && Intrinsics.areEqual(this.intro, sourceListItemBean.intro) && Intrinsics.areEqual(this.nickname, sourceListItemBean.nickname) && Intrinsics.areEqual(this.priority, sourceListItemBean.priority) && Intrinsics.areEqual(this.publisher, sourceListItemBean.publisher) && Intrinsics.areEqual(this.recommend, sourceListItemBean.recommend) && Intrinsics.areEqual(this.release_time, sourceListItemBean.release_time) && Intrinsics.areEqual(this.status, sourceListItemBean.status) && Intrinsics.areEqual(this.tag, sourceListItemBean.tag) && Intrinsics.areEqual(this.tips, sourceListItemBean.tips) && Intrinsics.areEqual(this.title, sourceListItemBean.title) && Intrinsics.areEqual(this.typeName, sourceListItemBean.typeName) && Intrinsics.areEqual(this.typeColor, sourceListItemBean.typeColor) && Intrinsics.areEqual(this.type, sourceListItemBean.type) && Intrinsics.areEqual(this.uid, sourceListItemBean.uid) && Intrinsics.areEqual(this.uploaded, sourceListItemBean.uploaded) && Intrinsics.areEqual(this.wanted, sourceListItemBean.wanted) && Intrinsics.areEqual(this.wanters, sourceListItemBean.wanters) && Intrinsics.areEqual(this.diskResource, sourceListItemBean.diskResource);
    }

    @NotNull
    public final String getAuthorName() {
        return this.nickname + this.typeName + "分享";
    }

    @Nullable
    public final String getAvatar() {
        return this.avatar;
    }

    @Nullable
    public final DiskResourceBean getDiskResource() {
        return this.diskResource;
    }

    @Nullable
    public final String getDisk_url() {
        return this.disk_url;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final Integer getId() {
        return this.id;
    }

    @Nullable
    public final String getIntro() {
        return this.intro;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final Integer getPriority() {
        return this.priority;
    }

    @Nullable
    public final Integer getPublisher() {
        return this.publisher;
    }

    @Nullable
    public final Boolean getRecommend() {
        return this.recommend;
    }

    @Nullable
    public final String getRelease_time() {
        return this.release_time;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @Nullable
    public final String getTips() {
        return this.tips;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final String getTypeColor() {
        return this.typeColor;
    }

    @Nullable
    public final String getTypeName() {
        return this.typeName;
    }

    @Nullable
    public final Integer getUid() {
        return this.uid;
    }

    @Nullable
    public final Integer getUploaded() {
        return this.uploaded;
    }

    @Nullable
    public final Integer getWanted() {
        return this.wanted;
    }

    @Nullable
    public final Integer getWanters() {
        return this.wanters;
    }

    public int hashCode() {
        String str = this.avatar;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.disk_url;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.icon;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.id;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.intro;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.nickname;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.priority;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.publisher;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Boolean bool = this.recommend;
        int iHashCode9 = (iHashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str6 = this.release_time;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num4 = this.status;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str7 = this.tag;
        int iHashCode12 = (iHashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.tips;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.title;
        int iHashCode14 = (iHashCode13 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.typeName;
        int iHashCode15 = (iHashCode14 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.typeColor;
        int iHashCode16 = (iHashCode15 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Integer num5 = this.type;
        int iHashCode17 = (iHashCode16 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.uid;
        int iHashCode18 = (iHashCode17 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.uploaded;
        int iHashCode19 = (iHashCode18 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.wanted;
        int iHashCode20 = (iHashCode19 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.wanters;
        int iHashCode21 = (iHashCode20 + (num9 == null ? 0 : num9.hashCode())) * 31;
        DiskResourceBean diskResourceBean = this.diskResource;
        return iHashCode21 + (diskResourceBean != null ? diskResourceBean.hashCode() : 0);
    }

    public final boolean hideUploadView() {
        Integer num = this.uploaded;
        if (num != null && num.intValue() == 1) {
            return true;
        }
        Integer num2 = this.status;
        return num2 != null && num2.intValue() == 1;
    }

    @Nullable
    public final String iconUrl() {
        DiskResourceBean diskResourceBean;
        String str = this.icon;
        if (str != null || (diskResourceBean = this.diskResource) == null) {
            return str;
        }
        if (diskResourceBean != null) {
            return diskResourceBean.getIcon();
        }
        return null;
    }

    @Nullable
    public final String introText() {
        DiskResourceBean diskResourceBean;
        String str = this.intro;
        if (str != null || (diskResourceBean = this.diskResource) == null) {
            return str;
        }
        if (diskResourceBean != null) {
            return diskResourceBean.getIntro();
        }
        return null;
    }

    public final void setDiskResource(@Nullable DiskResourceBean diskResourceBean) {
        this.diskResource = diskResourceBean;
    }

    public final void setWanted(@Nullable Integer num) {
        this.wanted = num;
    }

    public final void setWanters(@Nullable Integer num) {
        this.wanters = num;
    }

    @NotNull
    public String toString() {
        return "SourceListItemBean(avatar=" + this.avatar + ", disk_url=" + this.disk_url + ", icon=" + this.icon + ", id=" + this.id + ", intro=" + this.intro + ", nickname=" + this.nickname + ", priority=" + this.priority + ", publisher=" + this.publisher + ", recommend=" + this.recommend + ", release_time=" + this.release_time + ", status=" + this.status + ", tag=" + this.tag + ", tips=" + this.tips + ", title=" + this.title + ", typeName=" + this.typeName + ", typeColor=" + this.typeColor + ", type=" + this.type + ", uid=" + this.uid + ", uploaded=" + this.uploaded + ", wanted=" + this.wanted + ", wanters=" + this.wanters + ", diskResource=" + this.diskResource + ')';
    }

    public final boolean wantVisible() {
        Integer num = this.wanters;
        if ((num != null ? num.intValue() : 0) <= 0) {
            return false;
        }
        Integer num2 = this.wanted;
        return (num2 != null ? num2.intValue() : 0) == 0;
    }

    public final boolean withWant() {
        Integer num = this.wanters;
        if ((num != null ? num.intValue() : 0) > 0) {
            return false;
        }
        Integer num2 = this.wanted;
        return (num2 != null ? num2.intValue() : 0) == 0;
    }

    public /* synthetic */ SourceListItemBean(String str, String str2, String str3, Integer num, String str4, String str5, Integer num2, Integer num3, Boolean bool, String str6, Integer num4, String str7, String str8, String str9, String str10, String str11, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, DiskResourceBean diskResourceBean, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, num, str4, str5, num2, num3, bool, str6, (i10 & 1024) != 0 ? 0 : num4, str7, str8, str9, str10, (i10 & 32768) != 0 ? "#000000" : str11, num5, num6, num7, num8, num9, diskResourceBean);
    }
}
