package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42045g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42046h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f42047i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f42048j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f42049k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f42050l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f42051m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f42052n;

    private mu(@NonNull LinearLayout rootView, @NonNull ImageView a10, @NonNull ImageView b10, @NonNull ImageView handshankCheckCross, @NonNull FrameLayout handshankCheckLayout, @NonNull ImageView handshankCheckLb, @NonNull ImageView handshankCheckLs, @NonNull ImageView handshankCheckRb, @NonNull ImageView handshankCheckRs, @NonNull ImageView handshankCheckStickL, @NonNull ImageView handshankCheckStickR, @NonNull ImageView x10, @NonNull ImageView y10) {
        this.f42040b = rootView;
        this.f42041c = a10;
        this.f42042d = b10;
        this.f42043e = handshankCheckCross;
        this.f42044f = handshankCheckLayout;
        this.f42045g = handshankCheckLb;
        this.f42046h = handshankCheckLs;
        this.f42047i = handshankCheckRb;
        this.f42048j = handshankCheckRs;
        this.f42049k = handshankCheckStickL;
        this.f42050l = handshankCheckStickR;
        this.f42051m = x10;
        this.f42052n = y10;
    }

    @NonNull
    public static mu bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (imageView != null) {
            i10 = R.id.f35453b;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35453b);
            if (imageView2 != null) {
                i10 = R.id.handshank_check_cross;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_cross);
                if (imageView3 != null) {
                    i10 = R.id.handshank_check_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.handshank_check_layout);
                    if (frameLayout != null) {
                        i10 = R.id.handshank_check_lb;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_lb);
                        if (imageView4 != null) {
                            i10 = R.id.handshank_check_ls;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_ls);
                            if (imageView5 != null) {
                                i10 = R.id.handshank_check_rb;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_rb);
                                if (imageView6 != null) {
                                    i10 = R.id.handshank_check_rs;
                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_rs);
                                    if (imageView7 != null) {
                                        i10 = R.id.handshank_check_stick_l;
                                        ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_stick_l);
                                        if (imageView8 != null) {
                                            i10 = R.id.handshank_check_stick_r;
                                            ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.handshank_check_stick_r);
                                            if (imageView9 != null) {
                                                i10 = R.id.f35491x;
                                                ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                if (imageView10 != null) {
                                                    i10 = R.id.f35492y;
                                                    ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                    if (imageView11 != null) {
                                                        return new mu((LinearLayout) rootView, imageView, imageView2, imageView3, frameLayout, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11);
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
    public static mu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42040b;
    }

    @NonNull
    public static mu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_check_key, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
