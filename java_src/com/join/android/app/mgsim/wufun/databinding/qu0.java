package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class qu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f44036i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f44038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f44039l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44040m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44041n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f44042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f44043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44044q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LJWebView f44045r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44046s;

    private qu0(@NonNull RelativeLayout rootView, @NonNull LinearLayout back, @NonNull ImageView backImag, @NonNull ImageView backNew, @NonNull ImageView download, @NonNull LinearLayout layoutShare, @NonNull LinearLayout lodingLayout, @NonNull ImageView refresh, @NonNull LinearLayout right, @NonNull ImageView search, @NonNull ImageView shareImg, @NonNull TextView shareTextview, @NonNull RelativeLayout title, @NonNull TextView titleTextview, @NonNull View vStatus, @NonNull FrameLayout videoView, @NonNull LJWebView web, @NonNull RelativeLayout weblayout) {
        this.f44029b = rootView;
        this.f44030c = back;
        this.f44031d = backImag;
        this.f44032e = backNew;
        this.f44033f = download;
        this.f44034g = layoutShare;
        this.f44035h = lodingLayout;
        this.f44036i = refresh;
        this.f44037j = right;
        this.f44038k = search;
        this.f44039l = shareImg;
        this.f44040m = shareTextview;
        this.f44041n = title;
        this.f44042o = titleTextview;
        this.f44043p = vStatus;
        this.f44044q = videoView;
        this.f44045r = web;
        this.f44046s = weblayout;
    }

    @NonNull
    public static qu0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.back);
        if (linearLayout != null) {
            i10 = R.id.back_imag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_imag);
            if (imageView != null) {
                i10 = R.id.backNew;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backNew);
                if (imageView2 != null) {
                    i10 = R.id.download;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download);
                    if (imageView3 != null) {
                        i10 = R.id.layout_share;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_share);
                        if (linearLayout2 != null) {
                            i10 = R.id.loding_layout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
                            if (linearLayout3 != null) {
                                i10 = R.id.refresh;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.refresh);
                                if (imageView4 != null) {
                                    i10 = R.id.right;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.right);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.search;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                        if (imageView5 != null) {
                                            i10 = R.id.shareImg;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shareImg);
                                            if (imageView6 != null) {
                                                i10 = R.id.share_textview;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.share_textview);
                                                if (textView != null) {
                                                    i10 = R.id.title;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                                    if (relativeLayout != null) {
                                                        i10 = R.id.title_textview;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                        if (textView2 != null) {
                                                            i10 = R.id.v_status;
                                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_status);
                                                            if (viewFindChildViewById != null) {
                                                                i10 = R.id.video_view;
                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.video_view);
                                                                if (frameLayout != null) {
                                                                    i10 = R.id.web;
                                                                    LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(rootView, R.id.web);
                                                                    if (lJWebView != null) {
                                                                        i10 = R.id.weblayout;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.weblayout);
                                                                        if (relativeLayout2 != null) {
                                                                            return new qu0((RelativeLayout) rootView, linearLayout, imageView, imageView2, imageView3, linearLayout2, linearLayout3, imageView4, linearLayout4, imageView5, imageView6, textView, relativeLayout, textView2, viewFindChildViewById, frameLayout, lJWebView, relativeLayout2);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44029b;
    }

    @NonNull
    public static qu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.share_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
