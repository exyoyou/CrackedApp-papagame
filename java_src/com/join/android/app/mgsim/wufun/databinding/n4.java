package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.ShareSourceClickProxy;
import com.join.kotlin.quark.viewmodel.ShareSourceViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final EditText f42178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42180d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42182f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f42183g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected ShareSourceViewModel f42184h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected ShareSourceClickProxy f42185i;

    protected n4(Object _bindingComponent, View _root, int _localFieldCount, EditText etContent, ImageView ivLink, TextView tvHope, TextView tvSave, TextView tvTitle, View vTipLink) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42178b = etContent;
        this.f42179c = ivLink;
        this.f42180d = tvHope;
        this.f42181e = tvSave;
        this.f42182f = tvTitle;
        this.f42183g = vTipLink;
    }

    @Deprecated
    public static n4 b(@NonNull View view, @Nullable Object component) {
        return (n4) ViewDataBinding.bind(component, view, R.layout.activity_share_source);
    }

    public static n4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static n4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static n4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (n4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_share_source, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static n4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (n4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_share_source, null, false, component);
    }

    @Nullable
    public ShareSourceClickProxy d() {
        return this.f42185i;
    }

    @Nullable
    public ShareSourceViewModel f() {
        return this.f42184h;
    }

    public abstract void t(@Nullable ShareSourceClickProxy click);

    public abstract void u(@Nullable ShareSourceViewModel vm);

    @NonNull
    public static n4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
