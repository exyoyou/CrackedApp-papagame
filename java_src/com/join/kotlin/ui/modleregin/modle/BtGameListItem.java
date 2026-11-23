package com.join.kotlin.ui.modleregin.modle;

import com.baidu.mobads.sdk.internal.bn;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.dto.CollectionBeanSub;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003J_\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006,"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;", "", "position", "", "icon", "", "iconGif", "gameName", bn.f7600l, PapayPayDetialActivity_.INFO_EXTRA, "gameInfo", "Lcom/join/mgps/dto/CollectionBeanSub;", "appitemShow", "Lcom/join/kotlin/domain/common/AppListItemShowBean;", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/domain/common/AppListItemShowBean;)V", "getPosition", "()I", "getIcon", "()Ljava/lang/String;", "getIconGif", "getGameName", "getTags", "getInfo", "getGameInfo", "()Lcom/join/mgps/dto/CollectionBeanSub;", "getAppitemShow", "()Lcom/join/kotlin/domain/common/AppListItemShowBean;", "setAppitemShow", "(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BtGameListItem {

    @Nullable
    private AppListItemShowBean appitemShow;

    @NotNull
    private final CollectionBeanSub gameInfo;

    @NotNull
    private final String gameName;

    @NotNull
    private final String icon;

    @Nullable
    private final String iconGif;

    @NotNull
    private final String info;
    private final int position;

    @Nullable
    private final String tags;

    public BtGameListItem(int i10, @NotNull String icon, @Nullable String str, @NotNull String gameName, @Nullable String str2, @NotNull String info, @NotNull CollectionBeanSub gameInfo, @Nullable AppListItemShowBean appListItemShowBean) {
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        this.position = i10;
        this.icon = icon;
        this.iconGif = str;
        this.gameName = gameName;
        this.tags = str2;
        this.info = info;
        this.gameInfo = gameInfo;
        this.appitemShow = appListItemShowBean;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIconGif() {
        return this.iconGif;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGameName() {
        return this.gameName;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTags() {
        return this.tags;
    }

    @NotNull
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getInfo() {
        return this.info;
    }

    @NotNull
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final CollectionBeanSub getGameInfo() {
        return this.gameInfo;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final AppListItemShowBean getAppitemShow() {
        return this.appitemShow;
    }

    @NotNull
    public final BtGameListItem copy(int position, @NotNull String icon, @Nullable String iconGif, @NotNull String gameName, @Nullable String tags, @NotNull String info, @NotNull CollectionBeanSub gameInfo, @Nullable AppListItemShowBean appitemShow) {
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        return new BtGameListItem(position, icon, iconGif, gameName, tags, info, gameInfo, appitemShow);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BtGameListItem)) {
            return false;
        }
        BtGameListItem btGameListItem = (BtGameListItem) other;
        return this.position == btGameListItem.position && Intrinsics.areEqual(this.icon, btGameListItem.icon) && Intrinsics.areEqual(this.iconGif, btGameListItem.iconGif) && Intrinsics.areEqual(this.gameName, btGameListItem.gameName) && Intrinsics.areEqual(this.tags, btGameListItem.tags) && Intrinsics.areEqual(this.info, btGameListItem.info) && Intrinsics.areEqual(this.gameInfo, btGameListItem.gameInfo) && Intrinsics.areEqual(this.appitemShow, btGameListItem.appitemShow);
    }

    @Nullable
    public final AppListItemShowBean getAppitemShow() {
        return this.appitemShow;
    }

    @NotNull
    public final CollectionBeanSub getGameInfo() {
        return this.gameInfo;
    }

    @NotNull
    public final String getGameName() {
        return this.gameName;
    }

    @NotNull
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getIconGif() {
        return this.iconGif;
    }

    @NotNull
    public final String getInfo() {
        return this.info;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final String getTags() {
        return this.tags;
    }

    public int hashCode() {
        int iHashCode = ((this.position * 31) + this.icon.hashCode()) * 31;
        String str = this.iconGif;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.gameName.hashCode()) * 31;
        String str2 = this.tags;
        int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.info.hashCode()) * 31) + this.gameInfo.hashCode()) * 31;
        AppListItemShowBean appListItemShowBean = this.appitemShow;
        return iHashCode3 + (appListItemShowBean != null ? appListItemShowBean.hashCode() : 0);
    }

    public final void setAppitemShow(@Nullable AppListItemShowBean appListItemShowBean) {
        this.appitemShow = appListItemShowBean;
    }

    @NotNull
    public String toString() {
        return "BtGameListItem(position=" + this.position + ", icon=" + this.icon + ", iconGif=" + this.iconGif + ", gameName=" + this.gameName + ", tags=" + this.tags + ", info=" + this.info + ", gameInfo=" + this.gameInfo + ", appitemShow=" + this.appitemShow + ')';
    }

    public /* synthetic */ BtGameListItem(int i10, String str, String str2, String str3, String str4, String str5, CollectionBeanSub collectionBeanSub, AppListItemShowBean appListItemShowBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? "" : str, str2, (i11 & 8) != 0 ? "" : str3, str4, (i11 & 32) != 0 ? "" : str5, collectionBeanSub, appListItemShowBean);
    }
}
