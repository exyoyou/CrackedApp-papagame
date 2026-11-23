package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceHopeItemClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u40 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f45554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected SourceListItemBean f45555k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected SourceHopeItemClickProxy f45556l;

    protected u40(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvImage, TextView tvAuthor, TextView tvContent, ImageView tvHopeAdd1, TextView tvHopeCount, TextView tvLabel, TextView tvLabel1, TextView tvUploadSource, View vLabel1) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45546b = sdvImage;
        this.f45547c = tvAuthor;
        this.f45548d = tvContent;
        this.f45549e = tvHopeAdd1;
        this.f45550f = tvHopeCount;
        this.f45551g = tvLabel;
        this.f45552h = tvLabel1;
        this.f45553i = tvUploadSource;
        this.f45554j = vLabel1;
    }

    @Deprecated
    public static u40 b(@NonNull View view, @Nullable Object component) {
        return (u40) ViewDataBinding.bind(component, view, R.layout.item_quark_source_hope);
    }

    public static u40 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static u40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static u40 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (u40) ViewDataBinding.inflateInternal(inflater, R.layout.item_quark_source_hope, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static u40 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (u40) ViewDataBinding.inflateInternal(inflater, R.layout.item_quark_source_hope, null, false, component);
    }

    @Nullable
    public SourceHopeItemClickProxy d() {
        return this.f45556l;
    }

    @Nullable
    public SourceListItemBean f() {
        return this.f45555k;
    }

    public abstract void t(@Nullable SourceHopeItemClickProxy click);

    public abstract void u(@Nullable SourceListItemBean itemData);

    @NonNull
    public static u40 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
