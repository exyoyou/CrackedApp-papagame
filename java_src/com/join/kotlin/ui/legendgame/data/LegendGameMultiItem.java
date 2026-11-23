package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u0000 '2\u00020\u0001:\u0001'BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0019\u001a\u0004\u0018\u0001H\u001a\"\u0006\b\u0000\u0010\u001a\u0018\u0001H\u0086\b¢\u0006\u0002\u0010\u0010J\u0006\u0010\u001b\u001a\u00020\u001cJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003JI\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010#\u001a\u00020\u001c2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006("}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "", "viewType", "", "data", "bespeakUi", "Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;", "customTags", "", "", "serverInfoText", "<init>", "(ILjava/lang/Object;Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;Ljava/util/List;Ljava/lang/String;)V", "getViewType", "()I", "getData", "()Ljava/lang/Object;", "getBespeakUi", "()Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;", "setBespeakUi", "(Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;)V", "getCustomTags", "()Ljava/util/List;", "getServerInfoText", "()Ljava/lang/String;", "dataVal", "T", "isGameItem", "", "component1", "component2", "component3", "component4", "component5", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendGameMultiItem {
    public static final int TYPE_GAME_BRAND = 2;
    public static final int TYPE_GAME_LATEST = 1;
    public static final int TYPE_SERVER_OPEN = 3;

    @Nullable
    private LegendGameBespeakUiState bespeakUi;

    @Nullable
    private final List<String> customTags;

    @Nullable
    private final Object data;

    @Nullable
    private final String serverInfoText;
    private final int viewType;

    public LegendGameMultiItem(int i10, @Nullable Object obj, @Nullable LegendGameBespeakUiState legendGameBespeakUiState, @Nullable List<String> list, @Nullable String str) {
        this.viewType = i10;
        this.data = obj;
        this.bespeakUi = legendGameBespeakUiState;
        this.customTags = list;
        this.serverInfoText = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LegendGameMultiItem copy$default(LegendGameMultiItem legendGameMultiItem, int i10, Object obj, LegendGameBespeakUiState legendGameBespeakUiState, List list, String str, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = legendGameMultiItem.viewType;
        }
        if ((i11 & 2) != 0) {
            obj = legendGameMultiItem.data;
        }
        Object obj3 = obj;
        if ((i11 & 4) != 0) {
            legendGameBespeakUiState = legendGameMultiItem.bespeakUi;
        }
        LegendGameBespeakUiState legendGameBespeakUiState2 = legendGameBespeakUiState;
        if ((i11 & 8) != 0) {
            list = legendGameMultiItem.customTags;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            str = legendGameMultiItem.serverInfoText;
        }
        return legendGameMultiItem.copy(i10, obj3, legendGameBespeakUiState2, list2, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getViewType() {
        return this.viewType;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Object getData() {
        return this.data;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LegendGameBespeakUiState getBespeakUi() {
        return this.bespeakUi;
    }

    @Nullable
    public final List<String> component4() {
        return this.customTags;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getServerInfoText() {
        return this.serverInfoText;
    }

    @NotNull
    public final LegendGameMultiItem copy(int viewType, @Nullable Object data, @Nullable LegendGameBespeakUiState bespeakUi, @Nullable List<String> customTags, @Nullable String serverInfoText) {
        return new LegendGameMultiItem(viewType, data, bespeakUi, customTags, serverInfoText);
    }

    public final /* synthetic */ <T> T dataVal() {
        T t10 = (T) getData();
        Intrinsics.reifiedOperationMarker(2, "T");
        return t10;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendGameMultiItem)) {
            return false;
        }
        LegendGameMultiItem legendGameMultiItem = (LegendGameMultiItem) other;
        return this.viewType == legendGameMultiItem.viewType && Intrinsics.areEqual(this.data, legendGameMultiItem.data) && Intrinsics.areEqual(this.bespeakUi, legendGameMultiItem.bespeakUi) && Intrinsics.areEqual(this.customTags, legendGameMultiItem.customTags) && Intrinsics.areEqual(this.serverInfoText, legendGameMultiItem.serverInfoText);
    }

    @Nullable
    public final LegendGameBespeakUiState getBespeakUi() {
        return this.bespeakUi;
    }

    @Nullable
    public final List<String> getCustomTags() {
        return this.customTags;
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    @Nullable
    public final String getServerInfoText() {
        return this.serverInfoText;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i10 = this.viewType * 31;
        Object obj = this.data;
        int iHashCode = (i10 + (obj == null ? 0 : obj.hashCode())) * 31;
        LegendGameBespeakUiState legendGameBespeakUiState = this.bespeakUi;
        int iHashCode2 = (iHashCode + (legendGameBespeakUiState == null ? 0 : legendGameBespeakUiState.hashCode())) * 31;
        List<String> list = this.customTags;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.serverInfoText;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final boolean isGameItem() {
        int i10 = this.viewType;
        return i10 == 1 || i10 == 2;
    }

    public final void setBespeakUi(@Nullable LegendGameBespeakUiState legendGameBespeakUiState) {
        this.bespeakUi = legendGameBespeakUiState;
    }

    @NotNull
    public String toString() {
        return "LegendGameMultiItem(viewType=" + this.viewType + ", data=" + this.data + ", bespeakUi=" + this.bespeakUi + ", customTags=" + this.customTags + ", serverInfoText=" + this.serverInfoText + ')';
    }

    public /* synthetic */ LegendGameMultiItem(int i10, Object obj, LegendGameBespeakUiState legendGameBespeakUiState, List list, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : obj, (i11 & 4) != 0 ? null : legendGameBespeakUiState, (i11 & 8) != 0 ? null : list, (i11 & 16) != 0 ? null : str);
    }
}
