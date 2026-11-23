package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class d20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CornersLinearLayout f37222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f37224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f37225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f37226f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37227g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f37228h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f37229i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37230j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37231k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37232l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37233m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f37234n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f37235o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f37236p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f37237q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37238r;

    private d20(@NonNull CornersLinearLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull CardView cvHead, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView ivGameTag, @NonNull SimpleDraweeView loading, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5, @NonNull FrameLayout videoContner) {
        this.f37222b = rootView;
        this.f37223c = bannerView;
        this.f37224d = cvHead;
        this.f37225e = dvView;
        this.f37226f = g10;
        this.f37227g = iv1;
        this.f37228h = iv2;
        this.f37229i = ivGameTag;
        this.f37230j = loading;
        this.f37231k = relateLayoutApp;
        this.f37232l = sdvImage;
        this.f37233m = tvText1;
        this.f37234n = tvText2;
        this.f37235o = tvText3;
        this.f37236p = tvText4;
        this.f37237q = tvText5;
        this.f37238r = videoContner;
    }

    @NonNull
    public static d20 bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
        if (simpleDraweeView != null) {
            i10 = R.id.cv_head;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cv_head);
            if (cardView != null) {
                i10 = R.id.dv_view;
                DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
                if (downloadNormalView != null) {
                    i10 = R.id.g_1;
                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.g_1);
                    if (group != null) {
                        i10 = R.id.iv_1;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                        if (imageView != null) {
                            i10 = R.id.iv_2;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                            if (imageView2 != null) {
                                i10 = R.id.ivGameTag;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivGameTag);
                                if (imageView3 != null) {
                                    i10 = R.id.loading;
                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                    if (simpleDraweeView2 != null) {
                                        i10 = R.id.relateLayoutApp;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                        if (constraintLayout != null) {
                                            i10 = R.id.sdv_image;
                                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                            if (simpleDraweeView3 != null) {
                                                i10 = R.id.tv_text_1;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                                if (textView != null) {
                                                    i10 = R.id.tv_text_2;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                                    if (textView2 != null) {
                                                        i10 = R.id.tv_text_3;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                                        if (textView3 != null) {
                                                            i10 = R.id.tv_text_4;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                                            if (textView4 != null) {
                                                                i10 = R.id.tv_text_5;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.videoContner;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                                    if (frameLayout != null) {
                                                                        return new d20((CornersLinearLayout) rootView, simpleDraweeView, cardView, downloadNormalView, group, imageView, imageView2, imageView3, simpleDraweeView2, constraintLayout, simpleDraweeView3, textView, textView2, textView3, textView4, textView5, frameLayout);
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
    public static d20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CornersLinearLayout getRoot() {
        return this.f37222b;
    }

    @NonNull
    public static d20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_express_game_video, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
