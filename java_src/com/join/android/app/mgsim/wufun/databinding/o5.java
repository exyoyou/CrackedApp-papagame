package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.cloudarchive.VASingleGameViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o5 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42650d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42652f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42653g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42654h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42655i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42656j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42657k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TabLayout f42658l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42659m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42660n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42661o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42662p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42663q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f42664r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f42665s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42666t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42667u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ViewPager f42668v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f42669w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Bindable
    protected VASingleGameViewModle f42670x;

    protected o5(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clMod, ImageView ivBack, ImageView ivModPlay, ImageView ivStandFont, LinearLayout llModStart, LinearLayout llStandStart, LinearLayout llTitle, LinearLayout rightLayout, SimpleDraweeView sdvImage, SimpleDraweeView sdvModDot, TabLayout tabLayout, TextView tvGameName, TextView tvModInstallStatus, TextView tvModStart, TextView tvModStatus, TextView tvModType, TextView tvNewVersion, TextView tvStandNewVersion, TextView tvStandStatus, TextView tvStandType, ViewPager viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42648b = clMod;
        this.f42649c = ivBack;
        this.f42650d = ivModPlay;
        this.f42651e = ivStandFont;
        this.f42652f = llModStart;
        this.f42653g = llStandStart;
        this.f42654h = llTitle;
        this.f42655i = rightLayout;
        this.f42656j = sdvImage;
        this.f42657k = sdvModDot;
        this.f42658l = tabLayout;
        this.f42659m = tvGameName;
        this.f42660n = tvModInstallStatus;
        this.f42661o = tvModStart;
        this.f42662p = tvModStatus;
        this.f42663q = tvModType;
        this.f42664r = tvNewVersion;
        this.f42665s = tvStandNewVersion;
        this.f42666t = tvStandStatus;
        this.f42667u = tvStandType;
        this.f42668v = viewPager;
    }

    @Deprecated
    public static o5 b(@NonNull View view, @Nullable Object component) {
        return (o5) ViewDataBinding.bind(component, view, R.layout.activity_vasingle_game_index);
    }

    public static o5 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static o5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static o5 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (o5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_vasingle_game_index, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static o5 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (o5) ViewDataBinding.inflateInternal(inflater, R.layout.activity_vasingle_game_index, null, false, component);
    }

    @Nullable
    public LoadBindClickProxy d() {
        return this.f42669w;
    }

    @Nullable
    public VASingleGameViewModle f() {
        return this.f42670x;
    }

    public abstract void t(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void u(@Nullable VASingleGameViewModle viewModle);

    @NonNull
    public static o5 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
