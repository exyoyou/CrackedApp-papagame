package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.userrecom.RecomViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m5 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f41727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected RecomViewModle f41730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter f41731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f41732g;

    protected m5(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView recycleView, TextView titleTextview, RelativeLayout toplayout) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41727b = recycleView;
        this.f41728c = titleTextview;
        this.f41729d = toplayout;
    }

    @Deprecated
    public static m5 b(@NonNull View view, @Nullable Object component) {
        return (m5) ViewDataBinding.bind(component, view, R.layout.activity_userrecom_activity);
    }

    public static m5 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static m5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static m5 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (m5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_userrecom_activity, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static m5 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (m5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_userrecom_activity, null, false, component);
    }

    public abstract void A(@Nullable View.OnClickListener click);

    public abstract void B(@Nullable RecomViewModle vm);

    @Nullable
    public BaseDataBindingAdapter d() {
        return this.f41731f;
    }

    @Nullable
    public View.OnClickListener f() {
        return this.f41732g;
    }

    @Nullable
    public RecomViewModle w() {
        return this.f41730e;
    }

    public abstract void z(@Nullable BaseDataBindingAdapter adapter);

    @NonNull
    public static m5 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
