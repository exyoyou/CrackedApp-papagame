package com.join.kotlin.zone.model.bean;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;", "", "title", "", "headAdInfo", "Lcom/join/mgps/dto/CommonGameInfoBean;", "recGameInfo", "components", "", "Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;", "<init>", "(Ljava/lang/String;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/util/List;)V", "getTitle", "()Ljava/lang/String;", "getHeadAdInfo", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "getRecGameInfo", "getComponents", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameZoneDataBean {

    @Nullable
    private final List<ZoneComponentsBean> components;

    @Nullable
    private final CommonGameInfoBean headAdInfo;

    @Nullable
    private final CommonGameInfoBean recGameInfo;

    @Nullable
    private final String title;

    public GameZoneDataBean(@Nullable String str, @Nullable CommonGameInfoBean commonGameInfoBean, @Nullable CommonGameInfoBean commonGameInfoBean2, @Nullable List<ZoneComponentsBean> list) {
        this.title = str;
        this.headAdInfo = commonGameInfoBean;
        this.recGameInfo = commonGameInfoBean2;
        this.components = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameZoneDataBean copy$default(GameZoneDataBean gameZoneDataBean, String str, CommonGameInfoBean commonGameInfoBean, CommonGameInfoBean commonGameInfoBean2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gameZoneDataBean.title;
        }
        if ((i10 & 2) != 0) {
            commonGameInfoBean = gameZoneDataBean.headAdInfo;
        }
        if ((i10 & 4) != 0) {
            commonGameInfoBean2 = gameZoneDataBean.recGameInfo;
        }
        if ((i10 & 8) != 0) {
            list = gameZoneDataBean.components;
        }
        return gameZoneDataBean.copy(str, commonGameInfoBean, commonGameInfoBean2, list);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CommonGameInfoBean getHeadAdInfo() {
        return this.headAdInfo;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CommonGameInfoBean getRecGameInfo() {
        return this.recGameInfo;
    }

    @Nullable
    public final List<ZoneComponentsBean> component4() {
        return this.components;
    }

    @NotNull
    public final GameZoneDataBean copy(@Nullable String title, @Nullable CommonGameInfoBean headAdInfo, @Nullable CommonGameInfoBean recGameInfo, @Nullable List<ZoneComponentsBean> components) {
        return new GameZoneDataBean(title, headAdInfo, recGameInfo, components);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameZoneDataBean)) {
            return false;
        }
        GameZoneDataBean gameZoneDataBean = (GameZoneDataBean) other;
        return Intrinsics.areEqual(this.title, gameZoneDataBean.title) && Intrinsics.areEqual(this.headAdInfo, gameZoneDataBean.headAdInfo) && Intrinsics.areEqual(this.recGameInfo, gameZoneDataBean.recGameInfo) && Intrinsics.areEqual(this.components, gameZoneDataBean.components);
    }

    @Nullable
    public final List<ZoneComponentsBean> getComponents() {
        return this.components;
    }

    @Nullable
    public final CommonGameInfoBean getHeadAdInfo() {
        return this.headAdInfo;
    }

    @Nullable
    public final CommonGameInfoBean getRecGameInfo() {
        return this.recGameInfo;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        CommonGameInfoBean commonGameInfoBean = this.headAdInfo;
        int iHashCode2 = (iHashCode + (commonGameInfoBean == null ? 0 : commonGameInfoBean.hashCode())) * 31;
        CommonGameInfoBean commonGameInfoBean2 = this.recGameInfo;
        int iHashCode3 = (iHashCode2 + (commonGameInfoBean2 == null ? 0 : commonGameInfoBean2.hashCode())) * 31;
        List<ZoneComponentsBean> list = this.components;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GameZoneDataBean(title=" + this.title + ", headAdInfo=" + this.headAdInfo + ", recGameInfo=" + this.recGameInfo + ", components=" + this.components + ')';
    }
}
