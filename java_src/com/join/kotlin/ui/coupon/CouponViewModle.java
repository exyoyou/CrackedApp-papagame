package com.join.kotlin.ui.coupon;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.dto.BTGameCouponBean;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 R0\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\n\"\u0004\b\u001c\u0010\f¨\u0006!"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "datas", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/BTGameCouponBean;", "Lkotlin/collections/ArrayList;", "getDatas", "()Landroidx/lifecycle/MutableLiveData;", "setDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", PointCategory.REQUEST, "Lcom/join/kotlin/domain/request/CouponRequest;", "getRequest", "()Lcom/join/kotlin/domain/request/CouponRequest;", "setRequest", "(Lcom/join/kotlin/domain/request/CouponRequest;)V", "loadDataBinding", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadDataBinding", "setLoadDataBinding", "updateShowLoadUI", "", "hasNet", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CouponViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<LoadBindindData> loadDataBinding;

    @NotNull
    private MutableLiveData<ArrayList<BTGameCouponBean>> datas = new MutableLiveData<>();

    @NotNull
    private String title = "代金券";

    @NotNull
    private com.join.kotlin.domain.request.CouponRequest request = new com.join.kotlin.domain.request.CouponRequest();

    public CouponViewModle() {
        MutableLiveData<LoadBindindData> mutableLiveData = new MutableLiveData<>();
        this.loadDataBinding = mutableLiveData;
        mutableLiveData.setValue(new LoadBindindData(2));
    }

    @NotNull
    public final MutableLiveData<ArrayList<BTGameCouponBean>> getDatas() {
        return this.datas;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadDataBinding() {
        return this.loadDataBinding;
    }

    @NotNull
    public final com.join.kotlin.domain.request.CouponRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setDatas(@NotNull MutableLiveData<ArrayList<BTGameCouponBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.datas = mutableLiveData;
    }

    public final void setLoadDataBinding(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadDataBinding = mutableLiveData;
    }

    public final void setRequest(@NotNull com.join.kotlin.domain.request.CouponRequest couponRequest) {
        Intrinsics.checkNotNullParameter(couponRequest, "<set-?>");
        this.request = couponRequest;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void updateShowLoadUI(boolean hasNet) {
        if (this.datas.getValue() == null) {
            this.loadDataBinding.setValue(new LoadBindindData(2));
            return;
        }
        ArrayList<BTGameCouponBean> value = this.datas.getValue();
        Intrinsics.checkNotNull(value);
        if (value.size() != 0) {
            this.loadDataBinding.setValue(new LoadBindindData(1));
        } else if (hasNet) {
            this.loadDataBinding.setValue(new LoadBindindData(4));
        } else {
            this.loadDataBinding.setValue(new LoadBindindData(3));
        }
    }
}
