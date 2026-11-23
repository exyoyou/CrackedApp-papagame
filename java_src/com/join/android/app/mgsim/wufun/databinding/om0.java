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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class om0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f42960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected ArchiveData f42971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f42972n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected Boolean f42973o;

    protected om0(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, ImageView disLike, TextView disLikeNumber, RelativeLayout messageLayout, TextView more, ImageView moreDelete, ImageView parise, TextView pariseNumber, TextView startCloud, SimpleDraweeView userIcon, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42960b = contentsimpble;
        this.f42961c = disLike;
        this.f42962d = disLikeNumber;
        this.f42963e = messageLayout;
        this.f42964f = more;
        this.f42965g = moreDelete;
        this.f42966h = parise;
        this.f42967i = pariseNumber;
        this.f42968j = startCloud;
        this.f42969k = userIcon;
        this.f42970l = userName;
    }

    @Deprecated
    public static om0 b(@NonNull View view, @Nullable Object component) {
        return (om0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_item2);
    }

    public static om0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static om0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static om0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (om0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_item2, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static om0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (om0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_item2, null, false, component);
    }

    public abstract void A(@Nullable Boolean isChoice);

    public abstract void B(@Nullable ArchiveData itemData);

    @Nullable
    public OnClickArchiveListener d() {
        return this.f42972n;
    }

    @Nullable
    public Boolean f() {
        return this.f42973o;
    }

    @Nullable
    public ArchiveData w() {
        return this.f42971m;
    }

    public abstract void z(@Nullable OnClickArchiveListener clickListener);

    @NonNull
    public static om0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
