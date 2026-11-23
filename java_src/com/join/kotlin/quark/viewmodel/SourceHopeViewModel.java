package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.quark.model.bean.SortTypeBean;
import com.join.mgps.activity.LocalGameActivity;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR!\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\rj\b\u0012\u0004\u0012\u00020\u0006`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00170\rj\b\u0012\u0004\u0012\u00020\u0017`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u0015\u0012\u0011\u0012\u000f \u0007*\u0004\u0018\u00010\u00170\u0017¢\u0006\u0002\b\u00190\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "tabItems", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getTabItems", "()Ljava/util/ArrayList;", "keyword", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "sortTypeList", "Lcom/join/kotlin/quark/model/bean/SortTypeBean;", "sortType", "Lkotlin/jvm/internal/EnhancedNullability;", "getSortType", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceHopeViewModel extends BaseViewModel {

    @Nullable
    private String keyword;

    @NotNull
    private final MutableLiveData<SortTypeBean> sortType;

    @NotNull
    private final ArrayList<SortTypeBean> sortTypeList;

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("资源许愿池");

    @NotNull
    private final ArrayList<String> tabItems = CollectionsKt__CollectionsKt.arrayListOf("最热", "最新", "我的");

    public SourceHopeViewModel() {
        ArrayList<SortTypeBean> arrayListArrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new SortTypeBean(-1, LocalGameActivity.ALL), new SortTypeBean(0, "实现中"), new SortTypeBean(-1, "已实现"));
        this.sortTypeList = arrayListArrayListOf;
        this.sortType = new MutableLiveData<>(arrayListArrayListOf.get(0));
    }

    @Nullable
    public final String getKeyword() {
        return this.keyword;
    }

    @NotNull
    public final MutableLiveData<SortTypeBean> getSortType() {
        return this.sortType;
    }

    @NotNull
    public final ArrayList<String> getTabItems() {
        return this.tabItems;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setKeyword(@Nullable String str) {
        this.keyword = str;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }
}
