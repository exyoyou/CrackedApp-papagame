package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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

/* JADX INFO: loaded from: classes4.dex */
public abstract class kx extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f41026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f41027c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41028d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41030f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41031g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41032h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41033i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41034j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41035k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41036l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41037m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41038n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41039o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected SearchGameBean f41040p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Bindable
    protected DownState f41041q;

    protected kx(Object _bindingComponent, View _root, int _localFieldCount, TextView appSize, DownloadNormalView dvView, ImageView giftPackageSwich, View line, ConstraintLayout llDown, LinearLayout llInfo, LinearLayout llTips, LinearLayout llTitle, TextView lodingInfo, TextView mgListviewItemAppname, TextView mgListviewItemDescribe, ProgressBar pbView, ConstraintLayout relateLayoutApp, SimpleDraweeView sdvImage) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41026b = appSize;
        this.f41027c = dvView;
        this.f41028d = giftPackageSwich;
        this.f41029e = line;
        this.f41030f = llDown;
        this.f41031g = llInfo;
        this.f41032h = llTips;
        this.f41033i = llTitle;
        this.f41034j = lodingInfo;
        this.f41035k = mgListviewItemAppname;
        this.f41036l = mgListviewItemDescribe;
        this.f41037m = pbView;
        this.f41038n = relateLayoutApp;
        this.f41039o = sdvImage;
    }

    @Deprecated
    public static kx b(@NonNull View view, @Nullable Object component) {
        return (kx) ViewDataBinding.bind(component, view, R.layout.item_collection_search_list_game);
    }

    public static kx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static kx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static kx m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (kx) ViewDataBinding.inflateInternal(inflater, R.layout.item_collection_search_list_game, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static kx n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (kx) ViewDataBinding.inflateInternal(inflater, R.layout.item_collection_search_list_game, null, false, component);
    }

    @Nullable
    public DownState d() {
        return this.f41041q;
    }

    @Nullable
    public SearchGameBean f() {
        return this.f41040p;
    }

    public abstract void t(@Nullable DownState downState);

    public abstract void u(@Nullable SearchGameBean itemData);

    @NonNull
    public static kx inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
