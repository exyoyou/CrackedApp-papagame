package com.join.kotlin.ui.coupon;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "item", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "getItem", "()Landroid/view/View;", "setItem", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CouponViewHolder extends RecyclerView.ViewHolder {

    @NotNull
    private View item;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CouponViewHolder(@NotNull View item) {
        super(item);
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
    }

    @NotNull
    public final View getItem() {
        return this.item;
    }

    public final void setItem(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.item = view;
    }
}
