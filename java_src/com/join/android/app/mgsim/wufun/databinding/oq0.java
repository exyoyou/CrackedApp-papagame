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
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class oq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43009d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f43010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f43011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Group f43012g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f43014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43016k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43017l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43018m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43019n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43020o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43021p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f43022q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f43023r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final View f43024s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final View f43025t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43026u;

    private oq0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout bannerLayout, @NonNull SimpleDraweeView bannerView, @NonNull CardView cvHead, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull SimpleDraweeView loading, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5, @NonNull TextView tvText6, @NonNull View v10, @NonNull View v11, @NonNull FrameLayout videoContner) {
        this.f43007b = rootView;
        this.f43008c = bannerLayout;
        this.f43009d = bannerView;
        this.f43010e = cvHead;
        this.f43011f = dvView;
        this.f43012g = g10;
        this.f43013h = iv1;
        this.f43014i = iv2;
        this.f43015j = loading;
        this.f43016k = relateLayoutApp;
        this.f43017l = sdvImage;
        this.f43018m = tvText1;
        this.f43019n = tvText2;
        this.f43020o = tvText3;
        this.f43021p = tvText4;
        this.f43022q = tvText5;
        this.f43023r = tvText6;
        this.f43024s = v10;
        this.f43025t = v11;
        this.f43026u = videoContner;
    }

    @NonNull
    public static oq0 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
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
                                i10 = R.id.loading;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.relateLayoutApp;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                    if (constraintLayout2 != null) {
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
                                                                i10 = R.id.tv_text_6;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_6);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.v_1;
                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                                                                    if (viewFindChildViewById != null) {
                                                                        i10 = R.id.v_2;
                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_2);
                                                                        if (viewFindChildViewById2 != null) {
                                                                            i10 = R.id.videoContner;
                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                                            if (frameLayout != null) {
                                                                                return new oq0(constraintLayout, constraintLayout, simpleDraweeView, cardView, downloadNormalView, group, imageView, imageView2, simpleDraweeView2, constraintLayout2, simpleDraweeView3, textView, textView2, textView3, textView4, textView5, textView6, viewFindChildViewById, viewFindChildViewById2, frameLayout);
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
    public static oq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43007b;
    }

    @NonNull
    public static oq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_video_banner_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
