package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.QuarkInstallClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkInstallViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f36216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36220f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected QuarkInstallViewModel f36221g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected QuarkInstallClickProxy f36222h;

    protected b4(Object _bindingComponent, View _root, int _localFieldCount, ImageView ivQuarkLogo, ProgressBar pbProgress, TextView tvNewTip, TextView tvSave, TextView tvStatus) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36216b = ivQuarkLogo;
        this.f36217c = pbProgress;
        this.f36218d = tvNewTip;
        this.f36219e = tvSave;
        this.f36220f = tvStatus;
    }

    @Deprecated
    public static b4 b(@NonNull View view, @Nullable Object component) {
        return (b4) ViewDataBinding.bind(component, view, R.layout.activity_quark_install);
    }

    public static b4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (b4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_install, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static b4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (b4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_install, null, false, component);
    }

    @Nullable
    public QuarkInstallClickProxy d() {
        return this.f36222h;
    }

    @Nullable
    public QuarkInstallViewModel f() {
        return this.f36221g;
    }

    public abstract void t(@Nullable QuarkInstallClickProxy click);

    public abstract void u(@Nullable QuarkInstallViewModel vm);

    @NonNull
    public static b4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
