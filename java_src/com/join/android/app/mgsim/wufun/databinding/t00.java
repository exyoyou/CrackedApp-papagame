package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.endgame.adapter.ISlotAdapterListener;
import com.join.mgps.dto.ArchiveListBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t00 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f45065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected ArchiveListBean f45066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected ISlotAdapterListener f45067d;

    protected t00(Object _bindingComponent, View _root, int _localFieldCount, TextView tvTime) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45065b = tvTime;
    }

    @Deprecated
    public static t00 b(@NonNull View view, @Nullable Object component) {
        return (t00) ViewDataBinding.bind(component, view, R.layout.item_end_game_slot_list);
    }

    public static t00 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t00 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t00) ViewDataBinding.inflateInternal(inflater, R.layout.item_end_game_slot_list, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t00 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t00) ViewDataBinding.inflateInternal(inflater, R.layout.item_end_game_slot_list, null, false, component);
    }

    @Nullable
    public ArchiveListBean d() {
        return this.f45066c;
    }

    @Nullable
    public ISlotAdapterListener f() {
        return this.f45067d;
    }

    public abstract void t(@Nullable ArchiveListBean itemData);

    public abstract void u(@Nullable ISlotAdapterListener listener);

    @NonNull
    public static t00 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
