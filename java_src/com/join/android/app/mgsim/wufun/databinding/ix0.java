package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ix0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f39976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final hw0 f39977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39978j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f39979k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39980l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f39981m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39982n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f39983o;

    private ix0(@NonNull LinearLayout rootView, @NonNull RelativeLayout homevideoAllNet, @NonNull ImageView homevideoAllNetSwitch, @NonNull RelativeLayout homevideoNotPlay, @NonNull ImageView homevideoNotPlaySwitch, @NonNull RelativeLayout homevideoOnlyWifi, @NonNull ImageView homevideoOnlyWifiSwitch, @NonNull hw0 titleBarLayout, @NonNull RelativeLayout videoAllNet, @NonNull ImageView videoAllNetSwitch, @NonNull RelativeLayout videoNotPlay, @NonNull ImageView videoNotPlaySwitch, @NonNull RelativeLayout videoOnlyWifi, @NonNull ImageView videoOnlyWifiSwitch) {
        this.f39970b = rootView;
        this.f39971c = homevideoAllNet;
        this.f39972d = homevideoAllNetSwitch;
        this.f39973e = homevideoNotPlay;
        this.f39974f = homevideoNotPlaySwitch;
        this.f39975g = homevideoOnlyWifi;
        this.f39976h = homevideoOnlyWifiSwitch;
        this.f39977i = titleBarLayout;
        this.f39978j = videoAllNet;
        this.f39979k = videoAllNetSwitch;
        this.f39980l = videoNotPlay;
        this.f39981m = videoNotPlaySwitch;
        this.f39982n = videoOnlyWifi;
        this.f39983o = videoOnlyWifiSwitch;
    }

    @NonNull
    public static ix0 bind(@NonNull View rootView) {
        int i10 = R.id.homevideoAllNet;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.homevideoAllNet);
        if (relativeLayout != null) {
            i10 = R.id.homevideoAllNetSwitch;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.homevideoAllNetSwitch);
            if (imageView != null) {
                i10 = R.id.homevideoNotPlay;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.homevideoNotPlay);
                if (relativeLayout2 != null) {
                    i10 = R.id.homevideoNotPlaySwitch;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.homevideoNotPlaySwitch);
                    if (imageView2 != null) {
                        i10 = R.id.homevideoOnlyWifi;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.homevideoOnlyWifi);
                        if (relativeLayout3 != null) {
                            i10 = R.id.homevideoOnlyWifiSwitch;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.homevideoOnlyWifiSwitch);
                            if (imageView3 != null) {
                                i10 = R.id.title_bar_layout;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                if (viewFindChildViewById != null) {
                                    hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                                    i10 = R.id.videoAllNet;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.videoAllNet);
                                    if (relativeLayout4 != null) {
                                        i10 = R.id.videoAllNetSwitch;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.videoAllNetSwitch);
                                        if (imageView4 != null) {
                                            i10 = R.id.videoNotPlay;
                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.videoNotPlay);
                                            if (relativeLayout5 != null) {
                                                i10 = R.id.videoNotPlaySwitch;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.videoNotPlaySwitch);
                                                if (imageView5 != null) {
                                                    i10 = R.id.videoOnlyWifi;
                                                    RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.videoOnlyWifi);
                                                    if (relativeLayout6 != null) {
                                                        i10 = R.id.videoOnlyWifiSwitch;
                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.videoOnlyWifiSwitch);
                                                        if (imageView6 != null) {
                                                            return new ix0((LinearLayout) rootView, relativeLayout, imageView, relativeLayout2, imageView2, relativeLayout3, imageView3, hw0VarBind, relativeLayout4, imageView4, relativeLayout5, imageView5, relativeLayout6, imageView6);
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
    public static ix0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39970b;
    }

    @NonNull
    public static ix0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_setting_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
