package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailCommentListClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentListViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dm extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f37530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GameDetailCommentListViewModel f37531f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailCommentListClickProxy f37532g;

    protected dm(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clContainer, LinearLayout llBox, TextView percent, XQuickRecyclerView rvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37527b = clContainer;
        this.f37528c = llBox;
        this.f37529d = percent;
        this.f37530e = rvList;
    }

    @Deprecated
    public static dm b(@NonNull View view, @Nullable Object component) {
        return (dm) ViewDataBinding.bind(component, view, R.layout.fragment_game_detail_comment_list);
    }

    public static dm bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static dm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static dm m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (dm) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_game_detail_comment_list, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static dm n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (dm) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_game_detail_comment_list, null, false, component);
    }

    @Nullable
    public GameDetailCommentListClickProxy d() {
        return this.f37532g;
    }

    @Nullable
    public GameDetailCommentListViewModel f() {
        return this.f37531f;
    }

    public abstract void t(@Nullable GameDetailCommentListClickProxy click);

    public abstract void u(@Nullable GameDetailCommentListViewModel vm);

    @NonNull
    public static dm inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
