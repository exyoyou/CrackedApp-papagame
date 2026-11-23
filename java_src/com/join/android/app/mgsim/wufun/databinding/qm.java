package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f43891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43893d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43894e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43895f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43896g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SeekBar f43897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SeekBar f43898i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43899j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43900k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43901l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43902m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43903n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43904o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43905p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43906q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43907r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43908s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43909t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43910u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f43911v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f43912w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f43913x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f43914y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f43915z;

    private qm(@NonNull FrameLayout rootView, @NonNull ImageView ivKeyHide, @NonNull ImageView ivKeyboardInput, @NonNull ImageView ivVibrate, @NonNull ImageView ivZoom, @NonNull RecyclerView rvPadType, @NonNull SeekBar sbSen, @NonNull SeekBar sbTransparent, @NonNull SimpleDraweeView sdvMouse, @NonNull SimpleDraweeView sdvMouseSlide, @NonNull SimpleDraweeView sdvMultiple, @NonNull SimpleDraweeView sdvNone, @NonNull SimpleDraweeView sdvScreen, @NonNull SimpleDraweeView sdvScreenSlide, @NonNull LinearLayout touchModeMouse, @NonNull LinearLayout touchModeMouseSlide, @NonNull LinearLayout touchModeMultiple, @NonNull LinearLayout touchModeNone, @NonNull LinearLayout touchModeScreen, @NonNull LinearLayout touchModeScreenSlide, @NonNull TextView tv2, @NonNull TextView tvSen, @NonNull TextView tvSenLead, @NonNull TextView tvTouchModeTip, @NonNull TextView tvTransparent) {
        this.f43891b = rootView;
        this.f43892c = ivKeyHide;
        this.f43893d = ivKeyboardInput;
        this.f43894e = ivVibrate;
        this.f43895f = ivZoom;
        this.f43896g = rvPadType;
        this.f43897h = sbSen;
        this.f43898i = sbTransparent;
        this.f43899j = sdvMouse;
        this.f43900k = sdvMouseSlide;
        this.f43901l = sdvMultiple;
        this.f43902m = sdvNone;
        this.f43903n = sdvScreen;
        this.f43904o = sdvScreenSlide;
        this.f43905p = touchModeMouse;
        this.f43906q = touchModeMouseSlide;
        this.f43907r = touchModeMultiple;
        this.f43908s = touchModeNone;
        this.f43909t = touchModeScreen;
        this.f43910u = touchModeScreenSlide;
        this.f43911v = tv2;
        this.f43912w = tvSen;
        this.f43913x = tvSenLead;
        this.f43914y = tvTouchModeTip;
        this.f43915z = tvTransparent;
    }

    @NonNull
    public static qm bind(@NonNull View rootView) {
        int i10 = R.id.ivKeyHide;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivKeyHide);
        if (imageView != null) {
            i10 = R.id.ivKeyboardInput;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivKeyboardInput);
            if (imageView2 != null) {
                i10 = R.id.ivVibrate;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivVibrate);
                if (imageView3 != null) {
                    i10 = R.id.ivZoom;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivZoom);
                    if (imageView4 != null) {
                        i10 = R.id.rvPadType;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvPadType);
                        if (recyclerView != null) {
                            i10 = R.id.sbSen;
                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.sbSen);
                            if (seekBar != null) {
                                i10 = R.id.sbTransparent;
                                SeekBar seekBar2 = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.sbTransparent);
                                if (seekBar2 != null) {
                                    i10 = R.id.sdv_mouse;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_mouse);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.sdv_mouse_slide;
                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_mouse_slide);
                                        if (simpleDraweeView2 != null) {
                                            i10 = R.id.sdv_multiple;
                                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_multiple);
                                            if (simpleDraweeView3 != null) {
                                                i10 = R.id.sdv_none;
                                                SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_none);
                                                if (simpleDraweeView4 != null) {
                                                    i10 = R.id.sdv_screen;
                                                    SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_screen);
                                                    if (simpleDraweeView5 != null) {
                                                        i10 = R.id.sdv_screen_slide;
                                                        SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_screen_slide);
                                                        if (simpleDraweeView6 != null) {
                                                            i10 = R.id.touch_mode_mouse;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_mouse);
                                                            if (linearLayout != null) {
                                                                i10 = R.id.touch_mode_mouse_slide;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_mouse_slide);
                                                                if (linearLayout2 != null) {
                                                                    i10 = R.id.touch_mode_multiple;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_multiple);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.touch_mode_none;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_none);
                                                                        if (linearLayout4 != null) {
                                                                            i10 = R.id.touch_mode_screen;
                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_screen);
                                                                            if (linearLayout5 != null) {
                                                                                i10 = R.id.touch_mode_screen_slide;
                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.touch_mode_screen_slide);
                                                                                if (linearLayout6 != null) {
                                                                                    i10 = R.id.f35487tv;
                                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35487tv);
                                                                                    if (textView != null) {
                                                                                        i10 = R.id.tvSen;
                                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSen);
                                                                                        if (textView2 != null) {
                                                                                            i10 = R.id.tv_sen_lead;
                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sen_lead);
                                                                                            if (textView3 != null) {
                                                                                                i10 = R.id.tv_touch_mode_tip;
                                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_touch_mode_tip);
                                                                                                if (textView4 != null) {
                                                                                                    i10 = R.id.tvTransparent;
                                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTransparent);
                                                                                                    if (textView5 != null) {
                                                                                                        return new qm((FrameLayout) rootView, imageView, imageView2, imageView3, imageView4, recyclerView, seekBar, seekBar2, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, simpleDraweeView5, simpleDraweeView6, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView, textView2, textView3, textView4, textView5);
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
    public static qm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f43891b;
    }

    @NonNull
    public static qm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_settings_op, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
