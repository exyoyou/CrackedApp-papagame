package com.join.kotlin.discount.model.bean;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0017J>\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006%"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;", "", "iconRes", "", "title", "", HmInputMappingContent.FIELD_VALUE, "showArrow", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getIconRes", "()Ljava/lang/Integer;", "setIconRes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getValue", "setValue", "getShowArrow", "()Ljava/lang/Boolean;", "setShowArrow", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailInfoItemBean {

    @Nullable
    private Integer iconRes;

    @Nullable
    private Boolean showArrow;

    @Nullable
    private String title;

    @Nullable
    private String value;

    public GameDetailInfoItemBean(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
        this.iconRes = num;
        this.title = str;
        this.value = str2;
        this.showArrow = bool;
    }

    public static /* synthetic */ GameDetailInfoItemBean copy$default(GameDetailInfoItemBean gameDetailInfoItemBean, Integer num, String str, String str2, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = gameDetailInfoItemBean.iconRes;
        }
        if ((i10 & 2) != 0) {
            str = gameDetailInfoItemBean.title;
        }
        if ((i10 & 4) != 0) {
            str2 = gameDetailInfoItemBean.value;
        }
        if ((i10 & 8) != 0) {
            bool = gameDetailInfoItemBean.showArrow;
        }
        return gameDetailInfoItemBean.copy(num, str, str2, bool);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getIconRes() {
        return this.iconRes;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getShowArrow() {
        return this.showArrow;
    }

    @NotNull
    public final GameDetailInfoItemBean copy(@Nullable Integer iconRes, @Nullable String title, @Nullable String value, @Nullable Boolean showArrow) {
        return new GameDetailInfoItemBean(iconRes, title, value, showArrow);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailInfoItemBean)) {
            return false;
        }
        GameDetailInfoItemBean gameDetailInfoItemBean = (GameDetailInfoItemBean) other;
        return Intrinsics.areEqual(this.iconRes, gameDetailInfoItemBean.iconRes) && Intrinsics.areEqual(this.title, gameDetailInfoItemBean.title) && Intrinsics.areEqual(this.value, gameDetailInfoItemBean.value) && Intrinsics.areEqual(this.showArrow, gameDetailInfoItemBean.showArrow);
    }

    @Nullable
    public final Integer getIconRes() {
        return this.iconRes;
    }

    @Nullable
    public final Boolean getShowArrow() {
        return this.showArrow;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        Integer num = this.iconRes;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.showArrow;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setIconRes(@Nullable Integer num) {
        this.iconRes = num;
    }

    public final void setShowArrow(@Nullable Boolean bool) {
        this.showArrow = bool;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setValue(@Nullable String str) {
        this.value = str;
    }

    @NotNull
    public String toString() {
        return "GameDetailInfoItemBean(iconRes=" + this.iconRes + ", title=" + this.title + ", value=" + this.value + ", showArrow=" + this.showArrow + ')';
    }

    public /* synthetic */ GameDetailInfoItemBean(Integer num, String str, String str2, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, str, str2, (i10 & 8) != 0 ? Boolean.TRUE : bool);
    }
}
