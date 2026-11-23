package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40616g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40618i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40619j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40620k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40621l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40622m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40623n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40624o;

    private k6(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull ImageView cancle, @NonNull TextView goMygame, @NonNull SimpleDraweeView icon, @NonNull TextView info, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull LinearLayout main, @NonNull RelativeLayout mainx, @NonNull TextView ok, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView title) {
        this.f40611b = rootView;
        this.f40612c = appSize;
        this.f40613d = cancle;
        this.f40614e = goMygame;
        this.f40615f = icon;
        this.f40616g = info;
        this.f40617h = linearLayout2;
        this.f40618i = lodingInfo;
        this.f40619j = main;
        this.f40620k = mainx;
        this.f40621l = ok;
        this.f40622m = progressBar;
        this.f40623n = progressBarZip;
        this.f40624o = title;
    }

    @NonNull
    public static k6 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (imageView != null) {
                i10 = R.id.goMygame;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goMygame);
                if (textView2 != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.info;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                        if (textView3 != null) {
                            i10 = R.id.linearLayout2;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                            if (linearLayout != null) {
                                i10 = R.id.lodingInfo;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lodingInfo);
                                if (textView4 != null) {
                                    i10 = R.id.main;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                    if (linearLayout2 != null) {
                                        RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                        i10 = R.id.ok;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                                        if (textView5 != null) {
                                            i10 = R.id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                            if (progressBar != null) {
                                                i10 = R.id.progressBarZip;
                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                if (progressBar2 != null) {
                                                    i10 = R.id.title;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                    if (textView6 != null) {
                                                        return new k6(relativeLayout, textView, imageView, textView2, simpleDraweeView, textView3, linearLayout, textView4, linearLayout2, relativeLayout, textView5, progressBar, progressBar2, textView6);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40611b;
    }

    @NonNull
    public static k6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appdown_finish_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
