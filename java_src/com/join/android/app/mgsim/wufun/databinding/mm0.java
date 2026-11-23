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
public abstract class mm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CardView f41974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected DomainInfoBean f41976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f41977f;

    protected mm0(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView pdPic, CardView root, TextView startCloud) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41973b = pdPic;
        this.f41974c = root;
        this.f41975d = startCloud;
    }

    @Deprecated
    public static mm0 b(@NonNull View view, @Nullable Object component) {
        return (mm0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_domain);
    }

    public static mm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static mm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static mm0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (mm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_domain, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static mm0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (mm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_domain, null, false, component);
    }

    @Nullable
    public OnClickArchiveListener d() {
        return this.f41977f;
    }

    @Nullable
    public DomainInfoBean f() {
        return this.f41976e;
    }

    public abstract void t(@Nullable OnClickArchiveListener clickListener);

    public abstract void u(@Nullable DomainInfoBean itemData);

    @NonNull
    public static mm0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
