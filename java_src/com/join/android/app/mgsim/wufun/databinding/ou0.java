package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ou0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43065f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43066g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43070k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43071l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43072m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final hw0 f43073n;

    private ou0(@NonNull LinearLayout rootView, @NonNull TextView about, @NonNull ImageView arrowImage, @NonNull ImageView arrowImageAbout, @NonNull RelativeLayout checkVerLayout, @NonNull ImageView imageView3, @NonNull ImageView imageView5, @NonNull RelativeLayout papaAboutLayout, @NonNull TextView papaVer, @NonNull RelativeLayout responsibility, @NonNull RelativeLayout shareToFrendsLayout, @NonNull TextView textView, @NonNull hw0 titleBarLayout) {
        this.f43061b = rootView;
        this.f43062c = about;
        this.f43063d = arrowImage;
        this.f43064e = arrowImageAbout;
        this.f43065f = checkVerLayout;
        this.f43066g = imageView3;
        this.f43067h = imageView5;
        this.f43068i = papaAboutLayout;
        this.f43069j = papaVer;
        this.f43070k = responsibility;
        this.f43071l = shareToFrendsLayout;
        this.f43072m = textView;
        this.f43073n = titleBarLayout;
    }

    @NonNull
    public static ou0 bind(@NonNull View rootView) {
        int i10 = R.id.about;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.about);
        if (textView != null) {
            i10 = R.id.arrowImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
            if (imageView != null) {
                i10 = R.id.arrowImageAbout;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImageAbout);
                if (imageView2 != null) {
                    i10 = R.id.checkVerLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.checkVerLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.imageView3;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                        if (imageView3 != null) {
                            i10 = R.id.imageView5;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                            if (imageView4 != null) {
                                i10 = R.id.papaAboutLayout;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.papaAboutLayout);
                                if (relativeLayout2 != null) {
                                    i10 = R.id.papaVer;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papaVer);
                                    if (textView2 != null) {
                                        i10 = R.id.responsibility;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.responsibility);
                                        if (relativeLayout3 != null) {
                                            i10 = R.id.shareToFrendsLayout;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.shareToFrendsLayout);
                                            if (relativeLayout4 != null) {
                                                i10 = R.id.textView;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                if (textView3 != null) {
                                                    i10 = R.id.title_bar_layout;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                                    if (viewFindChildViewById != null) {
                                                        return new ou0((LinearLayout) rootView, textView, imageView, imageView2, relativeLayout, imageView3, imageView4, relativeLayout2, textView2, relativeLayout3, relativeLayout4, textView3, hw0.bind(viewFindChildViewById));
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
    public static ou0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43061b;
    }

    @NonNull
    public static ou0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.setting_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
