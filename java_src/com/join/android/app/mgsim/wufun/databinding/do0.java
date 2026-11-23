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
public final class do0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f37557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f37559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f37560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f37561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f37562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f37564i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37565j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f37566k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f37567l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f37568m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37569n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f37570o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f37571p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37572q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37573r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f37574s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f37575t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37576u;

    private do0(@NonNull FrameLayout rootView, @NonNull RelativeLayout adInfoContainer, @NonNull Button btnCta, @NonNull Button btnPause, @NonNull Button btnPlay, @NonNull Button btnStop, @NonNull RelativeLayout channelAdChoice, @NonNull ImageView channelAdLogo, @NonNull FrameLayout customContainer, @NonNull ImageView img1, @NonNull ImageView img2, @NonNull ImageView img3, @NonNull SimpleDraweeView imgLogo, @NonNull ImageView imgPoster, @NonNull ImageView ivDislike, @NonNull FrameLayout mediaLayout, @NonNull LinearLayout native3imgAdContainer, @NonNull TextView textDesc, @NonNull TextView textTitle, @NonNull LinearLayout videoBtnContainer) {
        this.f37557b = rootView;
        this.f37558c = adInfoContainer;
        this.f37559d = btnCta;
        this.f37560e = btnPause;
        this.f37561f = btnPlay;
        this.f37562g = btnStop;
        this.f37563h = channelAdChoice;
        this.f37564i = channelAdLogo;
        this.f37565j = customContainer;
        this.f37566k = img1;
        this.f37567l = img2;
        this.f37568m = img3;
        this.f37569n = imgLogo;
        this.f37570o = imgPoster;
        this.f37571p = ivDislike;
        this.f37572q = mediaLayout;
        this.f37573r = native3imgAdContainer;
        this.f37574s = textDesc;
        this.f37575t = textTitle;
        this.f37576u = videoBtnContainer;
    }

    @NonNull
    public static do0 bind(@NonNull View rootView) {
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
                                                                                    return new do0((FrameLayout) rootView, relativeLayout, button, button2, button3, button4, relativeLayout2, imageView, frameLayout, imageView2, imageView3, imageView4, simpleDraweeView, imageView5, imageView6, frameLayout2, linearLayout, textView, textView2, linearLayout2);
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
    public static do0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f37557b;
    }

    @NonNull
    public static do0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.native_ad_item_normal, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
