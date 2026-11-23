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
public final class hr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39470g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39471h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39472i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39473j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39474k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39475l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39476m;

    private hr0(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull ImageView cancle, @NonNull SimpleDraweeView icon, @NonNull TextView info, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull LinearLayout main, @NonNull TextView ok, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView title) {
        this.f39465b = rootView;
        this.f39466c = appSize;
        this.f39467d = cancle;
        this.f39468e = icon;
        this.f39469f = info;
        this.f39470g = linearLayout2;
        this.f39471h = lodingInfo;
        this.f39472i = main;
        this.f39473j = ok;
        this.f39474k = progressBar;
        this.f39475l = progressBarZip;
        this.f39476m = title;
    }

    @NonNull
    public static hr0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (imageView != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.info;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                    if (textView2 != null) {
                        i10 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i10 = R.id.lodingInfo;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lodingInfo);
                            if (textView3 != null) {
                                i10 = R.id.main;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ok;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                                    if (textView4 != null) {
                                        i10 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                        if (progressBar != null) {
                                            i10 = R.id.progressBarZip;
                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                            if (progressBar2 != null) {
                                                i10 = R.id.title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                if (textView5 != null) {
                                                    return new hr0((RelativeLayout) rootView, textView, imageView, simpleDraweeView, textView2, linearLayout, textView3, linearLayout2, textView4, progressBar, progressBar2, textView5);
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
    public static hr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39465b;
    }

    @NonNull
    public static hr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.plugdown_finish_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
