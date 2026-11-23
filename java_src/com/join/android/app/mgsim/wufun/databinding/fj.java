package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class fj extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final mj f38398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ke0 f38399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38400d;

    protected fj(Object _bindingComponent, View _root, int _localFieldCount, mj failedLayoutMain, ke0 loadingLayoutMain, XRecyclerView recycleView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38398b = failedLayoutMain;
        this.f38399c = loadingLayoutMain;
        this.f38400d = recycleView;
    }

    @Deprecated
    public static fj b(@NonNull View view, @Nullable Object component) {
        return (fj) ViewDataBinding.bind(component, view, R.layout.everday_new_fragment);
    }

    public static fj bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static fj c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (fj) ViewDataBinding.inflateInternal(inflater, R.layout.everday_new_fragment, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static fj d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (fj) ViewDataBinding.inflateInternal(inflater, R.layout.everday_new_fragment, null, false, component);
    }

    @NonNull
    public static fj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static fj inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
