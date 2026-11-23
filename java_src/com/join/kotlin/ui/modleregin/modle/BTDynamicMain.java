package com.join.kotlin.ui.modleregin.modle;

import com.kwad.sdk.api.model.AdnName;
import com.papa91.common.BaseAppConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;", "", "components", "", "Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "title", "", BaseAppConfig.KEY_END_GAME_SUBTITLE, "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getComponents", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "getSubTitle", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BTDynamicMain {

    @Nullable
    private final List<BTDynamicModle> components;

    @Nullable
    private final String subTitle;

    @NotNull
    private final String title;

    public BTDynamicMain(@Nullable List<BTDynamicModle> list, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.components = list;
        this.title = title;
        this.subTitle = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BTDynamicMain copy$default(BTDynamicMain bTDynamicMain, List list, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = bTDynamicMain.components;
        }
        if ((i10 & 2) != 0) {
            str = bTDynamicMain.title;
        }
        if ((i10 & 4) != 0) {
            str2 = bTDynamicMain.subTitle;
        }
        return bTDynamicMain.copy(list, str, str2);
    }

    @Nullable
    public final List<BTDynamicModle> component1() {
        return this.components;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    @NotNull
    public final BTDynamicMain copy(@Nullable List<BTDynamicModle> components, @NotNull String title, @Nullable String subTitle) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new BTDynamicMain(components, title, subTitle);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BTDynamicMain)) {
            return false;
        }
        BTDynamicMain bTDynamicMain = (BTDynamicMain) other;
        return Intrinsics.areEqual(this.components, bTDynamicMain.components) && Intrinsics.areEqual(this.title, bTDynamicMain.title) && Intrinsics.areEqual(this.subTitle, bTDynamicMain.subTitle);
    }

    @Nullable
    public final List<BTDynamicModle> getComponents() {
        return this.components;
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
        List<BTDynamicModle> list = this.components;
        int iHashCode = (((list == null ? 0 : list.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.subTitle;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BTDynamicMain(components=" + this.components + ", title=" + this.title + ", subTitle=" + this.subTitle + ')';
    }
}
