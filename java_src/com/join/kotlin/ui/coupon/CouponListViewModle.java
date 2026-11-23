package com.join.kotlin.ui.coupon;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.mgps.dto.BTGameCouponBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponListViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "item", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/BTGameCouponBean;", "getItem", "()Landroidx/lifecycle/MutableLiveData;", "setItem", "(Landroidx/lifecycle/MutableLiveData;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CouponListViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<BTGameCouponBean> item = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<BTGameCouponBean> getItem() {
        return this.item;
    }

    public final void setItem(@NotNull MutableLiveData<BTGameCouponBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.item = mutableLiveData;
    }
}
