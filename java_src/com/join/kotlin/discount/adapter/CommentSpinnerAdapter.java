package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.g10;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0014J(\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemGameCommentSpinnerLayoutBinding;", "<init>", "()V", "selectedIndex", "", "getSelectedIndex", "()I", "setSelectedIndex", "(I)V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommentSpinnerAdapter extends BaseQuickAdapter<String, a<g10>> {
    private int selectedIndex;

    public CommentSpinnerAdapter() {
        super(null, 1, null);
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void setSelectedIndex(int i10) {
        this.selectedIndex = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<g10> holder, int i10, @Nullable String str) {
        TextView textView;
        View view;
        Intrinsics.checkNotNullParameter(holder, "holder");
        g10 g10Var = (g10) holder.a();
        if (g10Var != null) {
            g10Var.n(str);
        }
        g10 g10Var2 = (g10) holder.a();
        if (g10Var2 != null && (view = g10Var2.f38659b) != null) {
            view.setVisibility(i10 >= getItemCount() + (-1) ? 8 : 0);
        }
        g10 g10Var3 = (g10) holder.a();
        if (g10Var3 == null || (textView = g10Var3.f38660c) == null) {
            return;
        }
        textView.setTextColor(Color.parseColor(this.selectedIndex == i10 ? "#FF5142" : "#2C2C2C"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<g10> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_game_comment_spinner_layout, parent);
    }
}
