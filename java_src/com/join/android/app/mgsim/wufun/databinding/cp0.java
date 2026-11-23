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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.dto.BTActivityBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cp0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected BTActivityBean f37037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ClickProxy f37038g;

    protected cp0(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout main, TextView message, TextView tag, TextView title) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37033b = main;
        this.f37034c = message;
        this.f37035d = tag;
        this.f37036e = title;
    }

    @Deprecated
    public static cp0 b(@NonNull View view, @Nullable Object component) {
        return (cp0) ViewDataBinding.bind(component, view, R.layout.notice_item_item);
    }

    public static cp0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static cp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cp0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (cp0) ViewDataBinding.inflateInternal(inflater, R.layout.notice_item_item, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static cp0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (cp0) ViewDataBinding.inflateInternal(inflater, R.layout.notice_item_item, null, false, component);
    }

    @Nullable
    public BTActivityBean d() {
        return this.f37037f;
    }

    @Nullable
    public ClickProxy f() {
        return this.f37038g;
    }

    public abstract void t(@Nullable BTActivityBean album);

    public abstract void u(@Nullable ClickProxy click);

    @NonNull
    public static cp0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
