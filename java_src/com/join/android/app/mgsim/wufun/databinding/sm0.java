package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class sm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f44863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f44870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f44871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44872k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44873l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44874m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44875n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected ArchiveData f44876o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f44877p;

    protected sm0(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, ImageView disLike, TextView disLikeNumber, ImageView downImg, TextView downNumber, RelativeLayout messageLayout, TextView more, ImageView moreDelete, ImageView parise, TextView pariseNumber, TextView startCloud, TextView uploadCloud, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44863b = contentsimpble;
        this.f44864c = disLike;
        this.f44865d = disLikeNumber;
        this.f44866e = downImg;
        this.f44867f = downNumber;
        this.f44868g = messageLayout;
        this.f44869h = more;
        this.f44870i = moreDelete;
        this.f44871j = parise;
        this.f44872k = pariseNumber;
        this.f44873l = startCloud;
        this.f44874m = uploadCloud;
        this.f44875n = userName;
    }

    @Deprecated
    public static sm0 b(@NonNull View view, @Nullable Object component) {
        return (sm0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_local_item2);
    }

    public static sm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static sm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sm0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (sm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_local_item2, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static sm0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (sm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_local_item2, null, false, component);
    }

    @Nullable
    public OnClickArchiveListener d() {
        return this.f44877p;
    }

    @Nullable
    public ArchiveData f() {
        return this.f44876o;
    }

    public abstract void t(@Nullable OnClickArchiveListener clickListener);

    public abstract void u(@Nullable ArchiveData itemData);

    @NonNull
    public static sm0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
