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
import com.join.mgps.customview.StrokeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class s90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44694k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final StrokeTextView f44695l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f44696m;

    private s90(@NonNull ConstraintLayout rootView, @NonNull ImageView avatar, @NonNull ImageView btnBg, @NonNull ConstraintLayout cl, @NonNull ConstraintLayout clTip, @NonNull FrameLayout flBtnContainer, @NonNull FrameLayout flImg, @NonNull ConstraintLayout flTextContainer, @NonNull SimpleDraweeView img, @NonNull TextView next, @NonNull StrokeTextView text, @NonNull ImageView title) {
        this.f44685b = rootView;
        this.f44686c = avatar;
        this.f44687d = btnBg;
        this.f44688e = cl;
        this.f44689f = clTip;
        this.f44690g = flBtnContainer;
        this.f44691h = flImg;
        this.f44692i = flTextContainer;
        this.f44693j = img;
        this.f44694k = next;
        this.f44695l = text;
        this.f44696m = title;
    }

    @NonNull
    public static s90 bind(@NonNull View rootView) {
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
                        i10 = R.id.fl_img;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_img);
                        if (frameLayout2 != null) {
                            i10 = R.id.fl_text_container;
                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.fl_text_container);
                            if (constraintLayout3 != null) {
                                i10 = R.id.img;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.next;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.next);
                                    if (textView != null) {
                                        i10 = R.id.text;
                                        StrokeTextView strokeTextView = (StrokeTextView) ViewBindings.findChildViewById(rootView, R.id.text);
                                        if (strokeTextView != null) {
                                            i10 = R.id.title;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title);
                                            if (imageView3 != null) {
                                                return new s90(constraintLayout, imageView, imageView2, constraintLayout, constraintLayout2, frameLayout, frameLayout2, constraintLayout3, simpleDraweeView, textView, strokeTextView, imageView3);
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
    public static s90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44685b;
    }

    @NonNull
    public static s90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_key_guide_3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
