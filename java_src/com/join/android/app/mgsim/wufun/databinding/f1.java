package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.endgame.EndGameSlotViewModel;
import com.join.kotlin.ui.endgame.ISlotListener;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f1 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected EndGameSlotViewModel f38216g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter f38217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f38218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected ISlotListener f38219j;

    protected f1(Object _bindingComponent, View _root, int _localFieldCount, ImageView ivBack, LinearLayout llNodata, XRecyclerView recycleView, TextView tvCustomer, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38211b = ivBack;
        this.f38212c = llNodata;
        this.f38213d = recycleView;
        this.f38214e = tvCustomer;
        this.f38215f = tvTitle;
    }

    @NonNull
    @Deprecated
    public static f1 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (f1) ViewDataBinding.inflateInternal(inflater, R.layout.activity_end_game_slot_list, null, false, component);
    }

    @Deprecated
    public static f1 b(@NonNull View view, @Nullable Object component) {
        return (f1) ViewDataBinding.bind(component, view, R.layout.activity_end_game_slot_list);
    }

    public static f1 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static f1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static f1 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (f1) ViewDataBinding.inflateInternal(inflater, R.layout.activity_end_game_slot_list, root, attachToRoot, component);
    }

    public abstract void B(@Nullable RecyclerView.Adapter adapter);

    public abstract void C(@Nullable ISlotListener listener);

    public abstract void D(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void E(@Nullable EndGameSlotViewModel viewModle);

    @Nullable
    public RecyclerView.Adapter d() {
        return this.f38217h;
    }

    @Nullable
    public ISlotListener f() {
        return this.f38219j;
    }

    @Nullable
    public LoadBindClickProxy w() {
        return this.f38218i;
    }

    @Nullable
    public EndGameSlotViewModel y() {
        return this.f38216g;
    }

    @NonNull
    public static f1 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
