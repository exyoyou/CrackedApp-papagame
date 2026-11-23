package com.join.kotlin.autocode.dailyfind.model;

import android.text.SpannableString;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u0012(\b\u0002\u0010\b\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0005j\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u0001`\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u001d\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0003J)\u0010$\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0005j\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u0001`\u0007HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010&\u001a\u00020\u000eHÆ\u0003Jq\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072(\b\u0002\u0010\b\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0005j\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u0001`\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R%\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R:\u0010\b\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0005j\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0016\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006."}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;", "", "selectedIndex", "", "rankListData", "Ljava/util/ArrayList;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;", "Lkotlin/collections/ArrayList;", "dataList", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "spannableText", "Landroid/text/SpannableString;", "extBean", "Lcom/join/mgps/dto/ExtBean;", "<init>", "(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/text/SpannableString;Lcom/join/mgps/dto/ExtBean;)V", "getSelectedIndex", "()I", "setSelectedIndex", "(I)V", "getRankListData", "()Ljava/util/ArrayList;", "getDataList", "setDataList", "(Ljava/util/ArrayList;)V", "getSpannableText", "()Landroid/text/SpannableString;", "setSpannableText", "(Landroid/text/SpannableString;)V", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyRankItemBean {

    @Nullable
    private ArrayList<List<CollectionBeanSub>> dataList;

    @NotNull
    private ExtBean extBean;

    @Nullable
    private final ArrayList<DailyRankListItemBean> rankListData;
    private int selectedIndex;

    @Nullable
    private SpannableString spannableText;

    public DailyRankItemBean(int i10, @Nullable ArrayList<DailyRankListItemBean> arrayList, @Nullable ArrayList<List<CollectionBeanSub>> arrayList2, @Nullable SpannableString spannableString, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        this.selectedIndex = i10;
        this.rankListData = arrayList;
        this.dataList = arrayList2;
        this.spannableText = spannableString;
        this.extBean = extBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyRankItemBean copy$default(DailyRankItemBean dailyRankItemBean, int i10, ArrayList arrayList, ArrayList arrayList2, SpannableString spannableString, ExtBean extBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = dailyRankItemBean.selectedIndex;
        }
        if ((i11 & 2) != 0) {
            arrayList = dailyRankItemBean.rankListData;
        }
        ArrayList arrayList3 = arrayList;
        if ((i11 & 4) != 0) {
            arrayList2 = dailyRankItemBean.dataList;
        }
        ArrayList arrayList4 = arrayList2;
        if ((i11 & 8) != 0) {
            spannableString = dailyRankItemBean.spannableText;
        }
        SpannableString spannableString2 = spannableString;
        if ((i11 & 16) != 0) {
            extBean = dailyRankItemBean.extBean;
        }
        return dailyRankItemBean.copy(i10, arrayList3, arrayList4, spannableString2, extBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Nullable
    public final ArrayList<DailyRankListItemBean> component2() {
        return this.rankListData;
    }

    @Nullable
    public final ArrayList<List<CollectionBeanSub>> component3() {
        return this.dataList;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SpannableString getSpannableText() {
        return this.spannableText;
    }

    @NotNull
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @NotNull
    public final DailyRankItemBean copy(int selectedIndex, @Nullable ArrayList<DailyRankListItemBean> rankListData, @Nullable ArrayList<List<CollectionBeanSub>> dataList, @Nullable SpannableString spannableText, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        return new DailyRankItemBean(selectedIndex, rankListData, dataList, spannableText, extBean);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyRankItemBean)) {
            return false;
        }
        DailyRankItemBean dailyRankItemBean = (DailyRankItemBean) other;
        return this.selectedIndex == dailyRankItemBean.selectedIndex && Intrinsics.areEqual(this.rankListData, dailyRankItemBean.rankListData) && Intrinsics.areEqual(this.dataList, dailyRankItemBean.dataList) && Intrinsics.areEqual(this.spannableText, dailyRankItemBean.spannableText) && Intrinsics.areEqual(this.extBean, dailyRankItemBean.extBean);
    }

    @Nullable
    public final ArrayList<List<CollectionBeanSub>> getDataList() {
        return this.dataList;
    }

    @NotNull
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final ArrayList<DailyRankListItemBean> getRankListData() {
        return this.rankListData;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Nullable
    public final SpannableString getSpannableText() {
        return this.spannableText;
    }

    public int hashCode() {
        int i10 = this.selectedIndex * 31;
        ArrayList<DailyRankListItemBean> arrayList = this.rankListData;
        int iHashCode = (i10 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList<List<CollectionBeanSub>> arrayList2 = this.dataList;
        int iHashCode2 = (iHashCode + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        SpannableString spannableString = this.spannableText;
        return ((iHashCode2 + (spannableString != null ? spannableString.hashCode() : 0)) * 31) + this.extBean.hashCode();
    }

    public final void setDataList(@Nullable ArrayList<List<CollectionBeanSub>> arrayList) {
        this.dataList = arrayList;
    }

    public final void setExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.extBean = extBean;
    }

    public final void setSelectedIndex(int i10) {
        this.selectedIndex = i10;
    }

    public final void setSpannableText(@Nullable SpannableString spannableString) {
        this.spannableText = spannableString;
    }

    @NotNull
    public String toString() {
        return "DailyRankItemBean(selectedIndex=" + this.selectedIndex + ", rankListData=" + this.rankListData + ", dataList=" + this.dataList + ", spannableText=" + ((Object) this.spannableText) + ", extBean=" + this.extBean + ')';
    }

    public /* synthetic */ DailyRankItemBean(int i10, ArrayList arrayList, ArrayList arrayList2, SpannableString spannableString, ExtBean extBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, arrayList, (i11 & 4) != 0 ? null : arrayList2, (i11 & 8) != 0 ? null : spannableString, extBean);
    }
}
