package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.widget.textview.GradientStrokeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class kg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f40758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GradientStrokeTextView f40759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final GradientStrokeTextView f40760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final GradientStrokeTextView f40761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final GradientStrokeTextView f40762g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f40764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40765j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f40766k;

    private kg(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clContainer, @NonNull GradientStrokeTextView gtv1, @NonNull GradientStrokeTextView gtv2, @NonNull GradientStrokeTextView gtv3, @NonNull GradientStrokeTextView gtv4, @NonNull ImageView iv1, @NonNull ImageView ivBtn1, @NonNull ImageView ivBtn2, @NonNull View v10) {
        this.f40757b = rootView;
        this.f40758c = clContainer;
        this.f40759d = gtv1;
        this.f40760e = gtv2;
        this.f40761f = gtv3;
        this.f40762g = gtv4;
        this.f40763h = iv1;
        this.f40764i = ivBtn1;
        this.f40765j = ivBtn2;
        this.f40766k = v10;
    }

    @NonNull
    public static kg bind(@NonNull View rootView) {
        int i10 = R.id.cl_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_container);
        if (constraintLayout != null) {
            i10 = R.id.gtv_1;
            GradientStrokeTextView gradientStrokeTextView = (GradientStrokeTextView) ViewBindings.findChildViewById(rootView, R.id.gtv_1);
            if (gradientStrokeTextView != null) {
                i10 = R.id.gtv_2;
                GradientStrokeTextView gradientStrokeTextView2 = (GradientStrokeTextView) ViewBindings.findChildViewById(rootView, R.id.gtv_2);
                if (gradientStrokeTextView2 != null) {
                    i10 = R.id.gtv_3;
                    GradientStrokeTextView gradientStrokeTextView3 = (GradientStrokeTextView) ViewBindings.findChildViewById(rootView, R.id.gtv_3);
                    if (gradientStrokeTextView3 != null) {
                        i10 = R.id.gtv_4;
                        GradientStrokeTextView gradientStrokeTextView4 = (GradientStrokeTextView) ViewBindings.findChildViewById(rootView, R.id.gtv_4);
                        if (gradientStrokeTextView4 != null) {
                            i10 = R.id.iv_1;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                            if (imageView != null) {
                                i10 = R.id.iv_btn_1;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_1);
                                if (imageView2 != null) {
                                    i10 = R.id.iv_btn_2;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_2);
                                    if (imageView3 != null) {
                                        i10 = R.id.v_1;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                                        if (viewFindChildViewById != null) {
                                            return new kg((ConstraintLayout) rootView, constraintLayout, gradientStrokeTextView, gradientStrokeTextView2, gradientStrokeTextView3, gradientStrokeTextView4, imageView, imageView2, imageView3, viewFindChildViewById);
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
    public static kg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40757b;
    }

    @NonNull
    public static kg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_home_cloud_game_sign, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
