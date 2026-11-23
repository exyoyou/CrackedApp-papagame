package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42273f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42274g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f42277j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f42278k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42279l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42280m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42281n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42282o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42283p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42284q;

    private nb0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout cardDzg, @NonNull SimpleDraweeView dzgImg, @NonNull TextView dzgSubTitle, @NonNull FrameLayout flNewLayer1, @NonNull FrameLayout flNewLayer2, @NonNull FrameLayout flNewLayer3, @NonNull SimpleDraweeView imgAd, @NonNull View imgNew, @NonNull ImageView iv1, @NonNull FrameLayout rvNew, @NonNull SimpleDraweeView sdvNew1, @NonNull SimpleDraweeView sdvNew2, @NonNull SimpleDraweeView sdvNew3, @NonNull TextView tvNewCount, @NonNull TextView tvText1) {
        this.f42269b = rootView;
        this.f42270c = cardDzg;
        this.f42271d = dzgImg;
        this.f42272e = dzgSubTitle;
        this.f42273f = flNewLayer1;
        this.f42274g = flNewLayer2;
        this.f42275h = flNewLayer3;
        this.f42276i = imgAd;
        this.f42277j = imgNew;
        this.f42278k = iv1;
        this.f42279l = rvNew;
        this.f42280m = sdvNew1;
        this.f42281n = sdvNew2;
        this.f42282o = sdvNew3;
        this.f42283p = tvNewCount;
        this.f42284q = tvText1;
    }

    @NonNull
    public static nb0 bind(@NonNull View rootView) {
        int i10 = R.id.card_dzg;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.card_dzg);
        if (constraintLayout != null) {
            i10 = R.id.dzg_img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.dzg_img);
            if (simpleDraweeView != null) {
                i10 = R.id.dzg_sub_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dzg_sub_title);
                if (textView != null) {
                    i10 = R.id.fl_new_layer_1;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_new_layer_1);
                    if (frameLayout != null) {
                        i10 = R.id.fl_new_layer_2;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_new_layer_2);
                        if (frameLayout2 != null) {
                            i10 = R.id.fl_new_layer_3;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_new_layer_3);
                            if (frameLayout3 != null) {
                                i10 = R.id.img_ad;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_ad);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.img_new;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.img_new);
                                    if (viewFindChildViewById != null) {
                                        i10 = R.id.iv_1;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                                        if (imageView != null) {
                                            i10 = R.id.rv_new;
                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.rv_new);
                                            if (frameLayout4 != null) {
                                                i10 = R.id.sdv_new_1;
                                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_new_1);
                                                if (simpleDraweeView3 != null) {
                                                    i10 = R.id.sdv_new_2;
                                                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_new_2);
                                                    if (simpleDraweeView4 != null) {
                                                        i10 = R.id.sdv_new_3;
                                                        SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_new_3);
                                                        if (simpleDraweeView5 != null) {
                                                            i10 = R.id.tv_new_count;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_new_count);
                                                            if (textView2 != null) {
                                                                i10 = R.id.tv_text_1;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                                                if (textView3 != null) {
                                                                    return new nb0((ConstraintLayout) rootView, constraintLayout, simpleDraweeView, textView, frameLayout, frameLayout2, frameLayout3, simpleDraweeView2, viewFindChildViewById, imageView, frameLayout4, simpleDraweeView3, simpleDraweeView4, simpleDraweeView5, textView2, textView3);
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
    public static nb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42269b;
    }

    @NonNull
    public static nb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_wufun_column, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
