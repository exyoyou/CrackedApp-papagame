package com.join.kotlin.autocode.dailyfind.model;

import android.text.SpannableString;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J;\u0010\u001f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\bHÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;", "", "items", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "spannableText", "Landroid/text/SpannableString;", "itemHeight", "", "extBean", "Lcom/join/mgps/dto/ExtBean;", "<init>", "(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)V", "getItems", "()Ljava/util/List;", "getSpannableText", "()Landroid/text/SpannableString;", "setSpannableText", "(Landroid/text/SpannableString;)V", "getItemHeight", "()I", "setItemHeight", "(I)V", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyTodayGameBean {

    @NotNull
    private ExtBean extBean;
    private int itemHeight;

    @Nullable
    private final List<CommonGameInfoBean> items;

    @Nullable
    private SpannableString spannableText;

    /* JADX WARN: Multi-variable type inference failed */
    public DailyTodayGameBean(@Nullable List<? extends CommonGameInfoBean> list, @Nullable SpannableString spannableString, int i10, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        this.items = list;
        this.spannableText = spannableString;
        this.itemHeight = i10;
        this.extBean = extBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyTodayGameBean copy$default(DailyTodayGameBean dailyTodayGameBean, List list, SpannableString spannableString, int i10, ExtBean extBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = dailyTodayGameBean.items;
        }
        if ((i11 & 2) != 0) {
            spannableString = dailyTodayGameBean.spannableText;
        }
        if ((i11 & 4) != 0) {
            i10 = dailyTodayGameBean.itemHeight;
        }
        if ((i11 & 8) != 0) {
            extBean = dailyTodayGameBean.extBean;
        }
        return dailyTodayGameBean.copy(list, spannableString, i10, extBean);
    }

    @Nullable
    public final List<CommonGameInfoBean> component1() {
        return this.items;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SpannableString getSpannableText() {
        return this.spannableText;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getItemHeight() {
        return this.itemHeight;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @NotNull
    public final DailyTodayGameBean copy(@Nullable List<? extends CommonGameInfoBean> items, @Nullable SpannableString spannableText, int itemHeight, @NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        return new DailyTodayGameBean(items, spannableText, itemHeight, extBean);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyTodayGameBean)) {
            return false;
        }
        DailyTodayGameBean dailyTodayGameBean = (DailyTodayGameBean) other;
        return Intrinsics.areEqual(this.items, dailyTodayGameBean.items) && Intrinsics.areEqual(this.spannableText, dailyTodayGameBean.spannableText) && this.itemHeight == dailyTodayGameBean.itemHeight && Intrinsics.areEqual(this.extBean, dailyTodayGameBean.extBean);
    }

    @NotNull
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    public final int getItemHeight() {
        return this.itemHeight;
    }

    @Nullable
    public final List<CommonGameInfoBean> getItems() {
        return this.items;
    }

    @Nullable
    public final SpannableString getSpannableText() {
        return this.spannableText;
    }

    public int hashCode() {
        List<CommonGameInfoBean> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        SpannableString spannableString = this.spannableText;
        return ((((iHashCode + (spannableString != null ? spannableString.hashCode() : 0)) * 31) + this.itemHeight) * 31) + this.extBean.hashCode();
    }

    public final void setExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.extBean = extBean;
    }

    public final void setItemHeight(int i10) {
        this.itemHeight = i10;
    }

    public final void setSpannableText(@Nullable SpannableString spannableString) {
        this.spannableText = spannableString;
    }

    @NotNull
    public String toString() {
        return "DailyTodayGameBean(items=" + this.items + ", spannableText=" + ((Object) this.spannableText) + ", itemHeight=" + this.itemHeight + ", extBean=" + this.extBean + ')';
    }

    public /* synthetic */ DailyTodayGameBean(List list, SpannableString spannableString, int i10, ExtBean extBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? null : spannableString, (i11 & 4) != 0 ? 0 : i10, extBean);
    }
}
