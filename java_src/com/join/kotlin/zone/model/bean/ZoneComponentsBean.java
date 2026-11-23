package com.join.kotlin.zone.model.bean;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;", "", "title", "", "gameInfoList", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getTitle", "()Ljava/lang/String;", "getGameInfoList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ZoneComponentsBean {

    @NotNull
    private final List<CommonGameInfoBean> gameInfoList;

    @NotNull
    private final String title;

    public ZoneComponentsBean(@NotNull String title, @NotNull List<CommonGameInfoBean> gameInfoList) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(gameInfoList, "gameInfoList");
        this.title = title;
        this.gameInfoList = gameInfoList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ZoneComponentsBean copy$default(ZoneComponentsBean zoneComponentsBean, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = zoneComponentsBean.title;
        }
        if ((i10 & 2) != 0) {
            list = zoneComponentsBean.gameInfoList;
        }
        return zoneComponentsBean.copy(str, list);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<CommonGameInfoBean> component2() {
        return this.gameInfoList;
    }

    @NotNull
    public final ZoneComponentsBean copy(@NotNull String title, @NotNull List<CommonGameInfoBean> gameInfoList) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(gameInfoList, "gameInfoList");
        return new ZoneComponentsBean(title, gameInfoList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZoneComponentsBean)) {
            return false;
        }
        ZoneComponentsBean zoneComponentsBean = (ZoneComponentsBean) other;
        return Intrinsics.areEqual(this.title, zoneComponentsBean.title) && Intrinsics.areEqual(this.gameInfoList, zoneComponentsBean.gameInfoList);
    }

    @NotNull
    public final List<CommonGameInfoBean> getGameInfoList() {
        return this.gameInfoList;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.gameInfoList.hashCode();
    }

    @NotNull
    public String toString() {
        return "ZoneComponentsBean(title=" + this.title + ", gameInfoList=" + this.gameInfoList + ')';
    }
}
