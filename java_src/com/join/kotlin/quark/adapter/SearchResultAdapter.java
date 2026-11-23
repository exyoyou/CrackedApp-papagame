package com.join.kotlin.quark.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.s40;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.mgps.customview.FlowLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J(\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/quark/adapter/SearchResultAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemQuarkSearchResultBinding;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSearchResultAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchResultAdapter.kt\ncom/join/kotlin/quark/adapter/SearchResultAdapter\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n+ 3 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt$notNull$1\n*L\n1#1,76:1\n28#2,5:77\n34#2:83\n28#2,5:84\n34#2:90\n28#3:82\n28#3:89\n*S KotlinDebug\n*F\n+ 1 SearchResultAdapter.kt\ncom/join/kotlin/quark/adapter/SearchResultAdapter\n*L\n36#1:77,5\n36#1:83\n55#1:84,5\n55#1:90\n36#1:82\n55#1:89\n*E\n"})
public final class SearchResultAdapter extends BaseQuickAdapter<SourceListItemBean, a<s40>> {
    public SearchResultAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<s40> holder, int i10, @Nullable SourceListItemBean sourceListItemBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        s40 s40Var = (s40) holder.a();
        if (s40Var != null) {
            s40Var.n(sourceListItemBean);
        }
        s40 s40Var2 = (s40) holder.a();
        FlowLayout flowLayout = s40Var2 != null ? s40Var2.f44632b : null;
        if (flowLayout != null) {
            flowLayout.removeAllViews();
            flowLayout.setHorizontalDivider((int) flowLayout.getResources().getDimension(R.dimen.wdp14));
            flowLayout.setVerticalDivider((int) flowLayout.getResources().getDimension(R.dimen.wdp14));
            String tag = sourceListItemBean != null ? sourceListItemBean.getTag() : null;
            if (tag != null) {
                View viewInflate = View.inflate(holder.itemView.getContext(), R.layout.layout_source_tag_view, null);
                Intrinsics.checkNotNull(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView = (TextView) viewInflate;
                textView.setText(tag);
                textView.setBackgroundResource(R.drawable.shape_ffeded_r_4);
                textView.setTextColor(Color.parseColor("#FF4D4D"));
                flowLayout.addView(textView, new ViewGroup.MarginLayoutParams(-2, -2));
            }
            String tips = sourceListItemBean != null ? sourceListItemBean.getTips() : null;
            if (tips != null) {
                View viewInflate2 = View.inflate(holder.itemView.getContext(), R.layout.layout_source_tag_view, null);
                Intrinsics.checkNotNull(viewInflate2, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView2 = (TextView) viewInflate2;
                textView2.setText(tips);
                textView2.setBackgroundResource(R.drawable.shape_fff4ed_r_4);
                textView2.setTextColor(Color.parseColor("#FF934B"));
                flowLayout.addView(textView2, new ViewGroup.MarginLayoutParams(-2, -2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<s40> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_quark_search_result, parent);
    }
}
