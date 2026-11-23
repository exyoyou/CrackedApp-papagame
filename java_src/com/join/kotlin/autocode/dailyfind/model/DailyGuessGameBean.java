package com.join.kotlin.autocode.dailyfind.model;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J7\u0010\u001b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0016HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\""}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;", "", "curItems", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "items", "extBean", "Lcom/join/mgps/dto/ExtBean;", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)V", "getCurItems", "()Ljava/util/List;", "setCurItems", "(Ljava/util/List;)V", "getItems", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "uniquePool", "firstBatch", QuarkInstallAppActivity_.COUNT_EXTRA, "", "nextBatch", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyGuessGameBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyGuessGameBean.kt\ncom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1669#2,8:49\n1563#2:57\n1634#2,3:58\n774#2:61\n865#2,2:62\n774#2:64\n865#2,2:65\n1563#2:67\n1634#2,3:68\n774#2:71\n865#2,2:72\n1869#2,2:74\n*S KotlinDebug\n*F\n+ 1 DailyGuessGameBean.kt\ncom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean\n*L\n12#1:49,8\n27#1:57\n27#1:58,3\n27#1:61\n27#1:62,2\n28#1:64\n28#1:65,2\n33#1:67\n33#1:68,3\n34#1:71\n34#1:72,2\n34#1:74,2\n*E\n"})
public final /* data */ class DailyGuessGameBean {

    @Nullable
    private List<? extends CollectionBeanSub> curItems;

    @NotNull
    private ExtBean extBean;

    @Nullable
    private final List<CollectionBeanSub> items;

    /* JADX WARN: Multi-variable type inference failed */
    public DailyGuessGameBean(@Nullable List<? extends CollectionBeanSub> list, @Nullable List<? extends CollectionBeanSub> list2, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        this.curItems = list;
        this.items = list2;
        this.extBean = extBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyGuessGameBean copy$default(DailyGuessGameBean dailyGuessGameBean, List list, List list2, ExtBean extBean, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = dailyGuessGameBean.curItems;
        }
        if ((i10 & 2) != 0) {
            list2 = dailyGuessGameBean.items;
        }
        if ((i10 & 4) != 0) {
            extBean = dailyGuessGameBean.extBean;
        }
        return dailyGuessGameBean.copy(list, list2, extBean);
    }

    public static /* synthetic */ List firstBatch$default(DailyGuessGameBean dailyGuessGameBean, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 5;
        }
        return dailyGuessGameBean.firstBatch(i10);
    }

    public static /* synthetic */ List nextBatch$default(DailyGuessGameBean dailyGuessGameBean, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 5;
        }
        return dailyGuessGameBean.nextBatch(i10);
    }

    @Nullable
    public final List<CollectionBeanSub> component1() {
        return this.curItems;
    }

    @Nullable
    public final List<CollectionBeanSub> component2() {
        return this.items;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @NotNull
    public final DailyGuessGameBean copy(@Nullable List<? extends CollectionBeanSub> curItems, @Nullable List<? extends CollectionBeanSub> items, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        return new DailyGuessGameBean(curItems, items, extBean);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyGuessGameBean)) {
            return false;
        }
        DailyGuessGameBean dailyGuessGameBean = (DailyGuessGameBean) other;
        return Intrinsics.areEqual(this.curItems, dailyGuessGameBean.curItems) && Intrinsics.areEqual(this.items, dailyGuessGameBean.items) && Intrinsics.areEqual(this.extBean, dailyGuessGameBean.extBean);
    }

    @NotNull
    public final List<CollectionBeanSub> firstBatch(int count) {
        List<CollectionBeanSub> listUniquePool = uniquePool();
        return CollectionsKt___CollectionsKt.take(CollectionsKt__CollectionsJVMKt.shuffled(listUniquePool), RangesKt___RangesKt.coerceAtMost(count, listUniquePool.size()));
    }

    @Nullable
    public final List<CollectionBeanSub> getCurItems() {
        return this.curItems;
    }

    @NotNull
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final List<CollectionBeanSub> getItems() {
        return this.items;
    }

    public int hashCode() {
        List<? extends CollectionBeanSub> list = this.curItems;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<CollectionBeanSub> list2 = this.items;
        return ((iHashCode + (list2 != null ? list2.hashCode() : 0)) * 31) + this.extBean.hashCode();
    }

    @NotNull
    public final List<CollectionBeanSub> nextBatch(int count) {
        List<CollectionBeanSub> listUniquePool = uniquePool();
        if (listUniquePool.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(count, listUniquePool.size());
        List<? extends CollectionBeanSub> listEmptyList = this.curItems;
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        List<? extends CollectionBeanSub> list = listEmptyList;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(DailyGuessGameBeanKt.guessLikeKey((CollectionBeanSub) it2.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (((String) next).length() > 0) {
                arrayList2.add(next);
            }
        }
        Set set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        List<CollectionBeanSub> list2 = listUniquePool;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list2) {
            if (!set.contains(DailyGuessGameBeanKt.guessLikeKey((CollectionBeanSub) obj))) {
                arrayList3.add(obj);
            }
        }
        List listShuffled = CollectionsKt__CollectionsJVMKt.shuffled(arrayList3);
        if (listShuffled.size() >= iCoerceAtMost) {
            return CollectionsKt___CollectionsKt.take(listShuffled, iCoerceAtMost);
        }
        List<CollectionBeanSub> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listShuffled);
        List<CollectionBeanSub> list3 = mutableList;
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10));
        Iterator<T> it4 = list3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(DailyGuessGameBeanKt.guessLikeKey((CollectionBeanSub) it4.next()));
        }
        Set mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList4);
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list2) {
            if (!mutableSet.contains(DailyGuessGameBeanKt.guessLikeKey((CollectionBeanSub) obj2))) {
                arrayList5.add(obj2);
            }
        }
        for (CollectionBeanSub collectionBeanSub : CollectionsKt__CollectionsJVMKt.shuffled(arrayList5)) {
            if (mutableList.size() < iCoerceAtMost) {
                mutableList.add(collectionBeanSub);
                mutableSet.add(DailyGuessGameBeanKt.guessLikeKey(collectionBeanSub));
            }
        }
        return mutableList;
    }

    public final void setCurItems(@Nullable List<? extends CollectionBeanSub> list) {
        this.curItems = list;
    }

    public final void setExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.extBean = extBean;
    }

    @NotNull
    public String toString() {
        return "DailyGuessGameBean(curItems=" + this.curItems + ", items=" + this.items + ", extBean=" + this.extBean + ')';
    }

    @NotNull
    public final List<CollectionBeanSub> uniquePool() {
        List<CollectionBeanSub> listEmptyList = this.items;
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listEmptyList) {
            if (hashSet.add(DailyGuessGameBeanKt.guessLikeKey((CollectionBeanSub) obj))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
