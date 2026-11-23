package com.join.kotlin.ui.coupon;

import com.join.mgps.dto.BTGameCouponBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\b"}, d2 = {"Lcom/join/kotlin/ui/coupon/ClickProxy;", "", "onClickGet", "", "data", "Lcom/join/mgps/dto/BTGameCouponBean;", "onClickBack", "onClickMore", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ClickProxy {
    void onClickBack();

    void onClickGet(@NotNull BTGameCouponBean data);

    void onClickMore(@NotNull BTGameCouponBean data);
}
