package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0012\b\u0002\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\tHÆ\u0003JY\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\r\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u0011R\u001b\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailSubAccountBean;", "", "id", "", "title", "gameServer", "gameTotal", "amount", "images", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getTitle", "getGameServer", "setGameServer", "(Ljava/lang/String;)V", "getGameTotal", "setGameTotal", "getAmount", "setAmount", "getImages", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailSubAccountBean {

    @Nullable
    private String amount;

    @Nullable
    private String gameServer;

    @Nullable
    private String gameTotal;

    @Nullable
    private final String id;

    @Nullable
    private final List<String> images;

    @Nullable
    private final String title;

    public GameDetailSubAccountBean() {
        this(null, null, null, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameDetailSubAccountBean copy$default(GameDetailSubAccountBean gameDetailSubAccountBean, String str, String str2, String str3, String str4, String str5, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gameDetailSubAccountBean.id;
        }
        if ((i10 & 2) != 0) {
            str2 = gameDetailSubAccountBean.title;
        }
        String str6 = str2;
        if ((i10 & 4) != 0) {
            str3 = gameDetailSubAccountBean.gameServer;
        }
        String str7 = str3;
        if ((i10 & 8) != 0) {
            str4 = gameDetailSubAccountBean.gameTotal;
        }
        String str8 = str4;
        if ((i10 & 16) != 0) {
            str5 = gameDetailSubAccountBean.amount;
        }
        String str9 = str5;
        if ((i10 & 32) != 0) {
            list = gameDetailSubAccountBean.images;
        }
        return gameDetailSubAccountBean.copy(str, str6, str7, str8, str9, list);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGameServer() {
        return this.gameServer;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGameTotal() {
        return this.gameTotal;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAmount() {
        return this.amount;
    }

    @Nullable
    public final List<String> component6() {
        return this.images;
    }

    @NotNull
    public final GameDetailSubAccountBean copy(@Nullable String id2, @Nullable String title, @Nullable String gameServer, @Nullable String gameTotal, @Nullable String amount, @Nullable List<String> images) {
        return new GameDetailSubAccountBean(id2, title, gameServer, gameTotal, amount, images);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailSubAccountBean)) {
            return false;
        }
        GameDetailSubAccountBean gameDetailSubAccountBean = (GameDetailSubAccountBean) other;
        return Intrinsics.areEqual(this.id, gameDetailSubAccountBean.id) && Intrinsics.areEqual(this.title, gameDetailSubAccountBean.title) && Intrinsics.areEqual(this.gameServer, gameDetailSubAccountBean.gameServer) && Intrinsics.areEqual(this.gameTotal, gameDetailSubAccountBean.gameTotal) && Intrinsics.areEqual(this.amount, gameDetailSubAccountBean.amount) && Intrinsics.areEqual(this.images, gameDetailSubAccountBean.images);
    }

    @Nullable
    public final String getAmount() {
        return this.amount;
    }

    @Nullable
    public final String getGameServer() {
        return this.gameServer;
    }

    @Nullable
    public final String getGameTotal() {
        return this.gameTotal;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final List<String> getImages() {
        return this.images;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.gameServer;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.gameTotal;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.amount;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<String> list = this.images;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final void setAmount(@Nullable String str) {
        this.amount = str;
    }

    public final void setGameServer(@Nullable String str) {
        this.gameServer = str;
    }

    public final void setGameTotal(@Nullable String str) {
        this.gameTotal = str;
    }

    @NotNull
    public String toString() {
        return "GameDetailSubAccountBean(id=" + this.id + ", title=" + this.title + ", gameServer=" + this.gameServer + ", gameTotal=" + this.gameTotal + ", amount=" + this.amount + ", images=" + this.images + ')';
    }

    public GameDetailSubAccountBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable List<String> list) {
        this.id = str;
        this.title = str2;
        this.gameServer = str3;
        this.gameTotal = str4;
        this.amount = str5;
        this.images = list;
    }

    public /* synthetic */ GameDetailSubAccountBean(String str, String str2, String str3, String str4, String str5, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? "" : str4, (i10 & 16) == 0 ? str5 : "", (i10 & 32) != 0 ? null : list);
    }
}
