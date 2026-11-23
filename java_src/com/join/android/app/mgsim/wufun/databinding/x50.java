package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.model.bean.DownState;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.mgps.customview.DownloadNormalView;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f47099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f47101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f47105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f47106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47108m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47109n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47110o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected SearchGameBean f47111p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Bindable
    protected DownState f47112q;

    protected x50(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clDown, ConstraintLayout clInfo, DownloadNormalView dvView, ImageView ivStar, ProgressBar pbView, SimpleDraweeView sdvImage, TextView tvDownSpeed, TextView tvDownState, ImageView tvRecTag, HtmlTextView tvText1, TextView tvText2, TextView tvText3, TextView tvText4, TextView tvText5) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47097b = clDown;
        this.f47098c = clInfo;
        this.f47099d = dvView;
        this.f47100e = ivStar;
        this.f47101f = pbView;
        this.f47102g = sdvImage;
        this.f47103h = tvDownSpeed;
        this.f47104i = tvDownState;
        this.f47105j = tvRecTag;
        this.f47106k = tvText1;
        this.f47107l = tvText2;
        this.f47108m = tvText3;
        this.f47109n = tvText4;
        this.f47110o = tvText5;
    }

    @Deprecated
    public static x50 b(@NonNull View view, @Nullable Object component) {
        return (x50) ViewDataBinding.bind(component, view, R.layout.item_search_list_game);
    }

    public static x50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x50 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_game, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static x50 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_game, null, false, component);
    }

    @Nullable
    public DownState d() {
        return this.f47112q;
    }

    @Nullable
    public SearchGameBean f() {
        return this.f47111p;
    }

    public abstract void t(@Nullable DownState downState);

    public abstract void u(@Nullable SearchGameBean itemData);

    @NonNull
    public static x50 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
