package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003JI\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017¨\u0006("}, d2 = {"Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;", "", "progress", "", "max", "starCount", "title", "", "type", "userPercent", "<init>", "(IIILjava/lang/String;ILjava/lang/String;)V", "getProgress", "()I", "setProgress", "(I)V", "getMax", "setMax", "getStarCount", "setStarCount", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "setType", "getUserPercent", "setUserPercent", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommentDataProgressBean {
    private int max;
    private int progress;
    private int starCount;

    @Nullable
    private String title;
    private int type;

    @Nullable
    private String userPercent;

    public CommentDataProgressBean(int i10, int i11, int i12, @Nullable String str, int i13, @Nullable String str2) {
        this.progress = i10;
        this.max = i11;
        this.starCount = i12;
        this.title = str;
        this.type = i13;
        this.userPercent = str2;
    }

    public static /* synthetic */ CommentDataProgressBean copy$default(CommentDataProgressBean commentDataProgressBean, int i10, int i11, int i12, String str, int i13, String str2, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = commentDataProgressBean.progress;
        }
        if ((i14 & 2) != 0) {
            i11 = commentDataProgressBean.max;
        }
        int i15 = i11;
        if ((i14 & 4) != 0) {
            i12 = commentDataProgressBean.starCount;
        }
        int i16 = i12;
        if ((i14 & 8) != 0) {
            str = commentDataProgressBean.title;
        }
        String str3 = str;
        if ((i14 & 16) != 0) {
            i13 = commentDataProgressBean.type;
        }
        int i17 = i13;
        if ((i14 & 32) != 0) {
            str2 = commentDataProgressBean.userPercent;
        }
        return commentDataProgressBean.copy(i10, i15, i16, str3, i17, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMax() {
        return this.max;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getStarCount() {
        return this.starCount;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUserPercent() {
        return this.userPercent;
    }

    @NotNull
    public final CommentDataProgressBean copy(int progress, int max, int starCount, @Nullable String title, int type, @Nullable String userPercent) {
        return new CommentDataProgressBean(progress, max, starCount, title, type, userPercent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentDataProgressBean)) {
            return false;
        }
        CommentDataProgressBean commentDataProgressBean = (CommentDataProgressBean) other;
        return this.progress == commentDataProgressBean.progress && this.max == commentDataProgressBean.max && this.starCount == commentDataProgressBean.starCount && Intrinsics.areEqual(this.title, commentDataProgressBean.title) && this.type == commentDataProgressBean.type && Intrinsics.areEqual(this.userPercent, commentDataProgressBean.userPercent);
    }

    public final int getMax() {
        return this.max;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getStarCount() {
        return this.starCount;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getUserPercent() {
        return this.userPercent;
    }

    public int hashCode() {
        int i10 = ((((this.progress * 31) + this.max) * 31) + this.starCount) * 31;
        String str = this.title;
        int iHashCode = (((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.type) * 31;
        String str2 = this.userPercent;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setMax(int i10) {
        this.max = i10;
    }

    public final void setProgress(int i10) {
        this.progress = i10;
    }

    public final void setStarCount(int i10) {
        this.starCount = i10;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void setUserPercent(@Nullable String str) {
        this.userPercent = str;
    }

    @NotNull
    public String toString() {
        return "CommentDataProgressBean(progress=" + this.progress + ", max=" + this.max + ", starCount=" + this.starCount + ", title=" + this.title + ", type=" + this.type + ", userPercent=" + this.userPercent + ')';
    }

    public /* synthetic */ CommentDataProgressBean(int i10, int i11, int i12, String str, int i13, String str2, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? 0 : i10, (i14 & 2) != 0 ? 100 : i11, (i14 & 4) != 0 ? 1 : i12, (i14 & 8) != 0 ? "" : str, (i14 & 16) != 0 ? 1 : i13, str2);
    }
}
