package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareDetailViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f47073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47077f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47078g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47081j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47082k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final WebView f47083l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected SourceShareDetailViewModel f47084m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected SourceShareClickProxy f47085n;

    protected x4(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, ConstraintLayout clContent, RelativeLayout rlContent, SimpleDraweeView sdvHead, SimpleDraweeView sdvImage, TextView titleTextview, TextView tvAuthor, TextView tvLabel1, TextView tvSave, TextView tvTitle, WebView webView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47073b = backImage;
        this.f47074c = clContent;
        this.f47075d = rlContent;
        this.f47076e = sdvHead;
        this.f47077f = sdvImage;
        this.f47078g = titleTextview;
        this.f47079h = tvAuthor;
        this.f47080i = tvLabel1;
        this.f47081j = tvSave;
        this.f47082k = tvTitle;
        this.f47083l = webView;
    }

    @Deprecated
    public static x4 b(@NonNull View view, @Nullable Object component) {
        return (x4) ViewDataBinding.bind(component, view, R.layout.activity_source_share_detail);
    }

    public static x4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_share_detail, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static x4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_share_detail, null, false, component);
    }

    @Nullable
    public SourceShareClickProxy d() {
        return this.f47085n;
    }

    @Nullable
    public SourceShareDetailViewModel f() {
        return this.f47084m;
    }

    public abstract void t(@Nullable SourceShareClickProxy click);

    public abstract void u(@Nullable SourceShareDetailViewModel vm);

    @NonNull
    public static x4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
