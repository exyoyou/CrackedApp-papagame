package com.join.kotlin.ui.coupon;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ac;
import com.join.mgps.dto.BTGameCouponBean;
import com.kuaishou.weapon.p0.bo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0014\u0010\u001d\u001a\u00020\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010!\u001a\u00020\u001cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/coupon/CouponViewHolder;", "context", "Landroid/content/Context;", "clickProxy", "Lcom/join/kotlin/ui/coupon/ClickProxy;", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getClickProxy", "()Lcom/join/kotlin/ui/coupon/ClickProxy;", "setClickProxy", "(Lcom/join/kotlin/ui/coupon/ClickProxy;)V", "listDatas", "", "Lcom/join/mgps/dto/BTGameCouponBean;", "getListDatas", "()Ljava/util/List;", "setListDatas", "(Ljava/util/List;)V", "onCreateViewHolder", bo.f74530g, "Landroid/view/ViewGroup;", "p1", "", "submitList", "", "list", "onBindViewHolder", "getItemCount", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CouponAdapter extends RecyclerView.Adapter<CouponViewHolder> {

    @NotNull
    private ClickProxy clickProxy;

    @NotNull
    private Context context;
    public List<? extends BTGameCouponBean> listDatas;

    public CouponAdapter(@NotNull Context context, @NotNull ClickProxy clickProxy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clickProxy, "clickProxy");
        this.context = context;
        this.clickProxy = clickProxy;
    }

    @NotNull
    public final ClickProxy getClickProxy() {
        return this.clickProxy;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getListDatas().size();
    }

    @NotNull
    public final List<BTGameCouponBean> getListDatas() {
        List list = this.listDatas;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("listDatas");
        return null;
    }

    public final void setClickProxy(@NotNull ClickProxy clickProxy) {
        Intrinsics.checkNotNullParameter(clickProxy, "<set-?>");
        this.clickProxy = clickProxy;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListDatas(@NotNull List<? extends BTGameCouponBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.listDatas = list;
    }

    public final void submitList(@NotNull List<? extends BTGameCouponBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        setListDatas(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull CouponViewHolder p10, int p11) {
        Intrinsics.checkNotNullParameter(p10, "p0");
        ac acVar = (ac) DataBindingUtil.getBinding(p10.getItem());
        if (acVar != null) {
            acVar.z(getListDatas().get(p11));
        }
        if (acVar != null) {
            acVar.executePendingBindings();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public CouponViewHolder onCreateViewHolder(@NotNull ViewGroup p10, int p11) {
        Intrinsics.checkNotNullParameter(p10, "p0");
        ac acVar = (ac) DataBindingUtil.inflate(LayoutInflater.from(this.context), R.layout.coupon_list_item_layout, p10, false);
        acVar.A(this.clickProxy);
        View root = acVar.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return new CouponViewHolder(root);
    }
}
