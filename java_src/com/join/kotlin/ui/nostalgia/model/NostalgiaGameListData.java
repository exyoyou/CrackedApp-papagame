package com.join.kotlin.ui.nostalgia.model;

import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001d\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\bHÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\bHÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR%\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;", "", "title_list", "", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaTitleTab;", "game_list", "Ljava/util/ArrayList;", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameGroup;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/List;Ljava/util/ArrayList;)V", "getTitle_list", "()Ljava/util/List;", "getGame_list", "()Ljava/util/ArrayList;", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NostalgiaGameListData {

    @Nullable
    private final ArrayList<NostalgiaGameGroup> game_list;

    @Nullable
    private final List<NostalgiaTitleTab> title_list;

    public NostalgiaGameListData(@Nullable List<NostalgiaTitleTab> list, @Nullable ArrayList<NostalgiaGameGroup> arrayList) {
        this.title_list = list;
        this.game_list = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NostalgiaGameListData copy$default(NostalgiaGameListData nostalgiaGameListData, List list, ArrayList arrayList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = nostalgiaGameListData.title_list;
        }
        if ((i10 & 2) != 0) {
            arrayList = nostalgiaGameListData.game_list;
        }
        return nostalgiaGameListData.copy(list, arrayList);
    }

    @Nullable
    public final List<NostalgiaTitleTab> component1() {
        return this.title_list;
    }

    @Nullable
    public final ArrayList<NostalgiaGameGroup> component2() {
        return this.game_list;
    }

    @NotNull
    public final NostalgiaGameListData copy(@Nullable List<NostalgiaTitleTab> title_list, @Nullable ArrayList<NostalgiaGameGroup> game_list) {
        return new NostalgiaGameListData(title_list, game_list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NostalgiaGameListData)) {
            return false;
        }
        NostalgiaGameListData nostalgiaGameListData = (NostalgiaGameListData) other;
        return Intrinsics.areEqual(this.title_list, nostalgiaGameListData.title_list) && Intrinsics.areEqual(this.game_list, nostalgiaGameListData.game_list);
    }

    @Nullable
    public final ArrayList<NostalgiaGameGroup> getGame_list() {
        return this.game_list;
    }

    @Nullable
    public final List<NostalgiaTitleTab> getTitle_list() {
        return this.title_list;
    }

    public int hashCode() {
        List<NostalgiaTitleTab> list = this.title_list;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        ArrayList<NostalgiaGameGroup> arrayList = this.game_list;
        return iHashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "NostalgiaGameListData(title_list=" + this.title_list + ", game_list=" + this.game_list + ')';
    }
}
