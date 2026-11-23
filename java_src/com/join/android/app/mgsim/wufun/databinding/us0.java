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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class us0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f45865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f45866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45870h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45871i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45872j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45873k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45874l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45875m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45876n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f45877o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f45878p;

    private us0(@NonNull LinearLayout rootView, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView ivNumber, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvNumber, @NonNull RelativeLayout tvNumberRl, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull TextView tvText5) {
        this.f45864b = rootView;
        this.f45865c = dvView;
        this.f45866d = g10;
        this.f45867e = iv1;
        this.f45868f = iv2;
        this.f45869g = ivNumber;
        this.f45870h = relateLayoutApp;
        this.f45871i = sdvImage;
        this.f45872j = tvNumber;
        this.f45873k = tvNumberRl;
        this.f45874l = tvText1;
        this.f45875m = tvText2;
        this.f45876n = tvText3;
        this.f45877o = tvText4;
        this.f45878p = tvText5;
    }

    @NonNull
    public static us0 bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
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
                        i10 = R.id.ivNumber;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivNumber);
                        if (imageView3 != null) {
                            i10 = R.id.relateLayoutApp;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                            if (constraintLayout != null) {
                                i10 = R.id.sdv_image;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.tvNumber;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNumber);
                                    if (textView != null) {
                                        i10 = R.id.tvNumberRl;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.tvNumberRl);
                                        if (relativeLayout != null) {
                                            i10 = R.id.tv_text_1;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                            if (textView2 != null) {
                                                i10 = R.id.tv_text_2;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                                if (textView3 != null) {
                                                    i10 = R.id.tv_text_3;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                                    if (textView4 != null) {
                                                        i10 = R.id.tv_text_4;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                                        if (textView5 != null) {
                                                            i10 = R.id.tv_text_5;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                                            if (textView6 != null) {
                                                                return new us0((LinearLayout) rootView, downloadNormalView, group, imageView, imageView2, imageView3, constraintLayout, simpleDraweeView, textView, relativeLayout, textView2, textView3, textView4, textView5, textView6);
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
    public static us0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45864b;
    }

    @NonNull
    public static us0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.ranking_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
