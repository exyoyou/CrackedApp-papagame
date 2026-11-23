package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class le implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41279f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41280g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41284k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41285l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f41286m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f41287n;

    private le(@NonNull ConstraintLayout rootView, @NonNull ImageView ivRbt1, @NonNull ImageView ivRbt2, @NonNull TextView tvBtn1, @NonNull TextView tvBtn2, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel3, @NonNull TextView tvLabel4, @NonNull TextView tvLabel5, @NonNull TextView tvLabel6, @NonNull View vChk1, @NonNull View vChk2) {
        this.f41275b = rootView;
        this.f41276c = ivRbt1;
        this.f41277d = ivRbt2;
        this.f41278e = tvBtn1;
        this.f41279f = tvBtn2;
        this.f41280g = tvLabel1;
        this.f41281h = tvLabel2;
        this.f41282i = tvLabel3;
        this.f41283j = tvLabel4;
        this.f41284k = tvLabel5;
        this.f41285l = tvLabel6;
        this.f41286m = vChk1;
        this.f41287n = vChk2;
    }

    @NonNull
    public static le bind(@NonNull View rootView) {
        int i10 = R.id.iv_rbt_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_rbt_1);
        if (imageView != null) {
            i10 = R.id.iv_rbt_2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_rbt_2);
            if (imageView2 != null) {
                i10 = R.id.tv_btn_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                if (textView != null) {
                    i10 = R.id.tv_btn_2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_2);
                    if (textView2 != null) {
                        i10 = R.id.tv_label_1;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                        if (textView3 != null) {
                            i10 = R.id.tv_label_2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_2);
                            if (textView4 != null) {
                                i10 = R.id.tv_label_3;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_3);
                                if (textView5 != null) {
                                    i10 = R.id.tv_label_4;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_4);
                                    if (textView6 != null) {
                                        i10 = R.id.tv_label_5;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_5);
                                        if (textView7 != null) {
                                            i10 = R.id.tv_label_6;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_6);
                                            if (textView8 != null) {
                                                i10 = R.id.v_chk_1;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_chk_1);
                                                if (viewFindChildViewById != null) {
                                                    i10 = R.id.v_chk_2;
                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_chk_2);
                                                    if (viewFindChildViewById2 != null) {
                                                        return new le((ConstraintLayout) rootView, imageView, imageView2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, viewFindChildViewById, viewFindChildViewById2);
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
    public static le inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41275b;
    }

    @NonNull
    public static le inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_game_launch_type, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
