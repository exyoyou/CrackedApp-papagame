package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class z3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48064f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48065g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48068j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f48069k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f48070l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f48071m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f48072n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final View f48073o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f48074p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f48075q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f48076r;

    private z3(@NonNull RelativeLayout rootView, @NonNull ConstraintLayout clContent, @NonNull ImageView ivFree, @NonNull SimpleDraweeView sdvGameIcon, @NonNull TextView tvDesc, @NonNull TextView tvDownload, @NonNull TextView tvGameName, @NonNull TextView tvGamePrice, @NonNull TextView tvLabel, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvNotAsk, @NonNull View vClose1, @NonNull View vD1, @NonNull View vD2, @NonNull View vGameInfo, @NonNull View vLine) {
        this.f48060b = rootView;
        this.f48061c = clContent;
        this.f48062d = ivFree;
        this.f48063e = sdvGameIcon;
        this.f48064f = tvDesc;
        this.f48065g = tvDownload;
        this.f48066h = tvGameName;
        this.f48067i = tvGamePrice;
        this.f48068j = tvLabel;
        this.f48069k = tvLabel1;
        this.f48070l = tvLabel2;
        this.f48071m = tvNotAsk;
        this.f48072n = vClose1;
        this.f48073o = vD1;
        this.f48074p = vD2;
        this.f48075q = vGameInfo;
        this.f48076r = vLine;
    }

    @NonNull
    public static z3 bind(@NonNull View rootView) {
        int i10 = R.id.cl_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_content);
        if (constraintLayout != null) {
            i10 = R.id.iv_free;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_free);
            if (imageView != null) {
                i10 = R.id.sdv_game_icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_game_icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.tv_desc;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc);
                    if (textView != null) {
                        i10 = R.id.tv_download;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_download);
                        if (textView2 != null) {
                            i10 = R.id.tv_game_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_name);
                            if (textView3 != null) {
                                i10 = R.id.tv_game_price;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_price);
                                if (textView4 != null) {
                                    i10 = R.id.tv_label;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
                                    if (textView5 != null) {
                                        i10 = R.id.tv_label1;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label1);
                                        if (textView6 != null) {
                                            i10 = R.id.tv_label2;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label2);
                                            if (textView7 != null) {
                                                i10 = R.id.tv_not_ask;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_not_ask);
                                                if (textView8 != null) {
                                                    i10 = R.id.v_close1;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_close1);
                                                    if (viewFindChildViewById != null) {
                                                        i10 = R.id.v_d_1;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_d_1);
                                                        if (viewFindChildViewById2 != null) {
                                                            i10 = R.id.v_d_2;
                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.v_d_2);
                                                            if (viewFindChildViewById3 != null) {
                                                                i10 = R.id.v_game_info;
                                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.v_game_info);
                                                                if (viewFindChildViewById4 != null) {
                                                                    i10 = R.id.v_line;
                                                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.v_line);
                                                                    if (viewFindChildViewById5 != null) {
                                                                        return new z3((RelativeLayout) rootView, constraintLayout, imageView, simpleDraweeView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5);
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
    public static z3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48060b;
    }

    @NonNull
    public static z3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_quark_down_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
