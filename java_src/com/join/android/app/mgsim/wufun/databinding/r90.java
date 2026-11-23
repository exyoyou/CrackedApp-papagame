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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.StrokeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class r90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final StrokeTextView f44272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f44273k;

    private r90(@NonNull ConstraintLayout rootView, @NonNull ImageView avatar, @NonNull ImageView btnBg, @NonNull ConstraintLayout cl, @NonNull ConstraintLayout clTip, @NonNull FrameLayout flBtnContainer, @NonNull ConstraintLayout flTextContainer, @NonNull TextView next, @NonNull StrokeTextView text, @NonNull ImageView title) {
        this.f44264b = rootView;
        this.f44265c = avatar;
        this.f44266d = btnBg;
        this.f44267e = cl;
        this.f44268f = clTip;
        this.f44269g = flBtnContainer;
        this.f44270h = flTextContainer;
        this.f44271i = next;
        this.f44272j = text;
        this.f44273k = title;
    }

    @NonNull
    public static r90 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.btn_bg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btn_bg);
            if (imageView2 != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                i10 = R.id.cl_tip;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_tip);
                if (constraintLayout2 != null) {
                    i10 = R.id.fl_btn_container;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_btn_container);
                    if (frameLayout != null) {
                        i10 = R.id.fl_text_container;
                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.fl_text_container);
                        if (constraintLayout3 != null) {
                            i10 = R.id.next;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.next);
                            if (textView != null) {
                                i10 = R.id.text;
                                StrokeTextView strokeTextView = (StrokeTextView) ViewBindings.findChildViewById(rootView, R.id.text);
                                if (strokeTextView != null) {
                                    i10 = R.id.title;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title);
                                    if (imageView3 != null) {
                                        return new r90(constraintLayout, imageView, imageView2, constraintLayout, constraintLayout2, frameLayout, constraintLayout3, textView, strokeTextView, imageView3);
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
    public static r90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44264b;
    }

    @NonNull
    public static r90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_key_guide_3_1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
