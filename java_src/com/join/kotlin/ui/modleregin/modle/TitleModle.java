package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.Util.IntentDateBean;
import com.kwad.sdk.api.model.AdnName;
import com.papa91.common.BaseAppConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011J<\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/TitleModle;", "", "title", "", BaseAppConfig.KEY_END_GAME_SUBTITLE, "intentDateBean", "Lcom/join/mgps/Util/IntentDateBean;", "showWhiteBack", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V", "getTitle", "()Ljava/lang/String;", "getSubTitle", "getIntentDateBean", "()Lcom/join/mgps/Util/IntentDateBean;", "getShowWhiteBack", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TitleModle {

    @Nullable
    private final IntentDateBean intentDateBean;

    @Nullable
    private final Boolean showWhiteBack;

    @Nullable
    private final String subTitle;

    @NotNull
    private final String title;

    public TitleModle(@NotNull String title, @Nullable String str, @Nullable IntentDateBean intentDateBean, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.subTitle = str;
        this.intentDateBean = intentDateBean;
        this.showWhiteBack = bool;
    }

    public static /* synthetic */ TitleModle copy$default(TitleModle titleModle, String str, String str2, IntentDateBean intentDateBean, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = titleModle.title;
        }
        if ((i10 & 2) != 0) {
            str2 = titleModle.subTitle;
        }
        if ((i10 & 4) != 0) {
            intentDateBean = titleModle.intentDateBean;
        }
        if ((i10 & 8) != 0) {
            bool = titleModle.showWhiteBack;
        }
        return titleModle.copy(str, str2, intentDateBean, bool);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @NotNull
    public final TitleModle copy(@NotNull String title, @Nullable String subTitle, @Nullable IntentDateBean intentDateBean, @Nullable Boolean showWhiteBack) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new TitleModle(title, subTitle, intentDateBean, showWhiteBack);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TitleModle)) {
            return false;
        }
        TitleModle titleModle = (TitleModle) other;
        return Intrinsics.areEqual(this.title, titleModle.title) && Intrinsics.areEqual(this.subTitle, titleModle.subTitle) && Intrinsics.areEqual(this.intentDateBean, titleModle.intentDateBean) && Intrinsics.areEqual(this.showWhiteBack, titleModle.showWhiteBack);
    }

    @Nullable
    public final IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    @Nullable
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @Nullable
    public final String getSubTitle() {
        return this.subTitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = this.title.hashCode() * 31;
        String str = this.subTitle;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        IntentDateBean intentDateBean = this.intentDateBean;
        int iHashCode3 = (iHashCode2 + (intentDateBean == null ? 0 : intentDateBean.hashCode())) * 31;
        Boolean bool = this.showWhiteBack;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TitleModle(title=" + this.title + ", subTitle=" + this.subTitle + ", intentDateBean=" + this.intentDateBean + ", showWhiteBack=" + this.showWhiteBack + ')';
    }

    public /* synthetic */ TitleModle(String str, String str2, IntentDateBean intentDateBean, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, intentDateBean, (i10 & 8) != 0 ? Boolean.FALSE : bool);
    }
}
