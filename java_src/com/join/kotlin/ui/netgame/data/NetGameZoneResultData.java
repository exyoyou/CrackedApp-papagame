package com.join.kotlin.ui.netgame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;", "", "game_type", "", "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;", "game_list", "Lcom/join/mgps/dto/CommonGameInfoBean;", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getGame_type", "()Ljava/util/List;", "setGame_type", "(Ljava/util/List;)V", "getGame_list", "setGame_list", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NetGameZoneResultData {

    @Nullable
    private List<? extends CommonGameInfoBean> game_list;

    @Nullable
    private List<NetGameTypeData> game_type;

    /* JADX WARN: Multi-variable type inference failed */
    public NetGameZoneResultData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetGameZoneResultData copy$default(NetGameZoneResultData netGameZoneResultData, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = netGameZoneResultData.game_type;
        }
        if ((i10 & 2) != 0) {
            list2 = netGameZoneResultData.game_list;
        }
        return netGameZoneResultData.copy(list, list2);
    }

    @Nullable
    public final List<NetGameTypeData> component1() {
        return this.game_type;
    }

    @Nullable
    public final List<CommonGameInfoBean> component2() {
        return this.game_list;
    }

    @NotNull
    public final NetGameZoneResultData copy(@Nullable List<NetGameTypeData> game_type, @Nullable List<? extends CommonGameInfoBean> game_list) {
        return new NetGameZoneResultData(game_type, game_list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NetGameZoneResultData)) {
            return false;
        }
        NetGameZoneResultData netGameZoneResultData = (NetGameZoneResultData) other;
        return Intrinsics.areEqual(this.game_type, netGameZoneResultData.game_type) && Intrinsics.areEqual(this.game_list, netGameZoneResultData.game_list);
    }

    @Nullable
    public final List<CommonGameInfoBean> getGame_list() {
        return this.game_list;
    }

    @Nullable
    public final List<NetGameTypeData> getGame_type() {
        return this.game_type;
    }

    public int hashCode() {
        List<NetGameTypeData> list = this.game_type;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<? extends CommonGameInfoBean> list2 = this.game_list;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setGame_list(@Nullable List<? extends CommonGameInfoBean> list) {
        this.game_list = list;
    }

    public final void setGame_type(@Nullable List<NetGameTypeData> list) {
        this.game_type = list;
    }

    @NotNull
    public String toString() {
        return "NetGameZoneResultData(game_type=" + this.game_type + ", game_list=" + this.game_list + ')';
    }

    public NetGameZoneResultData(@Nullable List<NetGameTypeData> list, @Nullable List<? extends CommonGameInfoBean> list2) {
        this.game_type = list;
        this.game_list = list2;
    }

    public /* synthetic */ NetGameZoneResultData(List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? null : list2);
    }
}
