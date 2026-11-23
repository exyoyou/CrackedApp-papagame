package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailInfoBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailInfoBottomDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GameDetailInfoBottomDialogViewModel f45063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailInfoBottomDialogClickProxy f45064g;

    protected t0(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clContainer, ConstraintLayout clContent, RecyclerView recyclerview, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45059b = clContainer;
        this.f45060c = clContent;
        this.f45061d = recyclerview;
        this.f45062e = tvTitle;
    }

    @Deprecated
    public static t0 b(@NonNull View view, @Nullable Object component) {
        return (t0) ViewDataBinding.bind(component, view, R.layout.activity_discount_game_detail_info_bottom_dialog);
    }

    public static t0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_info_bottom_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_info_bottom_dialog, null, false, component);
    }

    @Nullable
    public GameDetailInfoBottomDialogClickProxy d() {
        return this.f45064g;
    }

    @Nullable
    public GameDetailInfoBottomDialogViewModel f() {
        return this.f45063f;
    }

    public abstract void t(@Nullable GameDetailInfoBottomDialogClickProxy click);

    public abstract void u(@Nullable GameDetailInfoBottomDialogViewModel vm);

    @NonNull
    public static t0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
