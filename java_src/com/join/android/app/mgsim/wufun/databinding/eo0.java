package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class eo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f38035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f38036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f38037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f38038g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38040i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38041j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38042k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f38043l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f38044m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38045n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f38046o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f38047p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38048q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38049r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f38050s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f38051t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38052u;

    private eo0(@NonNull FrameLayout rootView, @NonNull RelativeLayout adInfoContainer, @NonNull Button btnCta, @NonNull Button btnPause, @NonNull Button btnPlay, @NonNull Button btnStop, @NonNull RelativeLayout channelAdChoice, @NonNull ImageView channelAdLogo, @NonNull FrameLayout customContainer, @NonNull ImageView img1, @NonNull ImageView img2, @NonNull ImageView img3, @NonNull SimpleDraweeView imgLogo, @NonNull ImageView imgPoster, @NonNull ImageView ivDislike, @NonNull FrameLayout mediaLayout, @NonNull LinearLayout native3imgAdContainer, @NonNull TextView textDesc, @NonNull TextView textTitle, @NonNull LinearLayout videoBtnContainer) {
        this.f38033b = rootView;
        this.f38034c = adInfoContainer;
        this.f38035d = btnCta;
        this.f38036e = btnPause;
        this.f38037f = btnPlay;
        this.f38038g = btnStop;
        this.f38039h = channelAdChoice;
        this.f38040i = channelAdLogo;
        this.f38041j = customContainer;
        this.f38042k = img1;
        this.f38043l = img2;
        this.f38044m = img3;
        this.f38045n = imgLogo;
        this.f38046o = imgPoster;
        this.f38047p = ivDislike;
        this.f38048q = mediaLayout;
        this.f38049r = native3imgAdContainer;
        this.f38050s = textDesc;
        this.f38051t = textTitle;
        this.f38052u = videoBtnContainer;
    }

    @NonNull
    public static eo0 bind(@NonNull View rootView) {
        int i10 = R.id.ad_info_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.ad_info_container);
        if (relativeLayout != null) {
            i10 = R.id.btn_cta;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_cta);
            if (button != null) {
                i10 = R.id.btn_pause;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_pause);
                if (button2 != null) {
                    i10 = R.id.btn_play;
                    Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_play);
                    if (button3 != null) {
                        i10 = R.id.btn_stop;
                        Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_stop);
                        if (button4 != null) {
                            i10 = R.id.channel_ad_choice;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.channel_ad_choice);
                            if (relativeLayout2 != null) {
                                i10 = R.id.channel_ad_logo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.channel_ad_logo);
                                if (imageView != null) {
                                    i10 = R.id.custom_container;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.custom_container);
                                    if (frameLayout != null) {
                                        i10 = R.id.img_1;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_1);
                                        if (imageView2 != null) {
                                            i10 = R.id.img_2;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_2);
                                            if (imageView3 != null) {
                                                i10 = R.id.img_3;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_3);
                                                if (imageView4 != null) {
                                                    i10 = R.id.img_logo;
                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_logo);
                                                    if (simpleDraweeView != null) {
                                                        i10 = R.id.img_poster;
                                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_poster);
                                                        if (imageView5 != null) {
                                                            i10 = R.id.iv_dislike;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_dislike);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.media_layout;
                                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.media_layout);
                                                                if (frameLayout2 != null) {
                                                                    i10 = R.id.native_3img_ad_container;
                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.native_3img_ad_container);
                                                                    if (linearLayout != null) {
                                                                        i10 = R.id.text_desc;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_desc);
                                                                        if (textView != null) {
                                                                            i10 = R.id.text_title;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_title);
                                                                            if (textView2 != null) {
                                                                                i10 = R.id.video_btn_container;
                                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.video_btn_container);
                                                                                if (linearLayout2 != null) {
                                                                                    return new eo0((FrameLayout) rootView, relativeLayout, button, button2, button3, button4, relativeLayout2, imageView, frameLayout, imageView2, imageView3, imageView4, simpleDraweeView, imageView5, imageView6, frameLayout2, linearLayout, textView, textView2, linearLayout2);
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
    public static eo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38033b;
    }

    @NonNull
    public static eo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.native_ad_item_small, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
