package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "itemBean", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getItemBean", "setItemBean", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceShareDetailViewModel extends BaseViewModel {

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("夸克网盘分享");

    @NotNull
    private MutableLiveData<SourceListItemBean> itemBean = new MutableLiveData<>(null);

    @NotNull
    public final MutableLiveData<SourceListItemBean> getItemBean() {
        return this.itemBean;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setItemBean(@NotNull MutableLiveData<SourceListItemBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.itemBean = mutableLiveData;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }
}
