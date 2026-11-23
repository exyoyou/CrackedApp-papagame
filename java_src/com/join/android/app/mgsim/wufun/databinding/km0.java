package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.mgps.dto.DomainInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class km0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CardView f40872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected DomainInfoBean f40874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f40875f;

    protected km0(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView pdPic, CardView root, TextView startCloud) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40871b = pdPic;
        this.f40872c = root;
        this.f40873d = startCloud;
    }

    @Deprecated
    public static km0 b(@NonNull View view, @Nullable Object component) {
        return (km0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_domain2);
    }

    public static km0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static km0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static km0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (km0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_domain2, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static km0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (km0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_domain2, null, false, component);
    }

    @Nullable
    public OnClickArchiveListener d() {
        return this.f40875f;
    }

    @Nullable
    public DomainInfoBean f() {
        return this.f40874e;
    }

    public abstract void t(@Nullable OnClickArchiveListener clickListener);

    public abstract void u(@Nullable DomainInfoBean itemData);

    @NonNull
    public static km0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
