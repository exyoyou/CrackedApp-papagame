package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f38566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38567g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38569i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f38570j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f38571k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38572l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f38573m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38574n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f38576p;

    private fv0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout constraintLayout8, @NonNull TextView count, @NonNull TextView desc, @NonNull View divider, @NonNull ImageView imageView62, @NonNull ImageView imageView64, @NonNull SimpleDraweeView img, @NonNull View ml, @NonNull View mr, @NonNull TextView name, @NonNull View rect, @NonNull TextView score, @NonNull LinearLayout tagLayout, @NonNull View view9) {
        this.f38562b = rootView;
        this.f38563c = constraintLayout8;
        this.f38564d = count;
        this.f38565e = desc;
        this.f38566f = divider;
        this.f38567g = imageView62;
        this.f38568h = imageView64;
        this.f38569i = img;
        this.f38570j = ml;
        this.f38571k = mr;
        this.f38572l = name;
        this.f38573m = rect;
        this.f38574n = score;
        this.f38575o = tagLayout;
        this.f38576p = view9;
    }

    @NonNull
    public static fv0 bind(@NonNull View rootView) {
        int i10 = R.id.constraintLayout8;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout8);
        if (constraintLayout != null) {
            i10 = R.id.count;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
            if (textView != null) {
                i10 = R.id.desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                if (textView2 != null) {
                    i10 = R.id.divider;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.imageView62;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView62);
                        if (imageView != null) {
                            i10 = R.id.imageView64;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView64);
                            if (imageView2 != null) {
                                i10 = R.id.img;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.ml;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.ml);
                                    if (viewFindChildViewById2 != null) {
                                        i10 = R.id.mr;
                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.mr);
                                        if (viewFindChildViewById3 != null) {
                                            i10 = R.id.name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                            if (textView3 != null) {
                                                i10 = R.id.rect;
                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.rect);
                                                if (viewFindChildViewById4 != null) {
                                                    i10 = R.id.score;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.score);
                                                    if (textView4 != null) {
                                                        i10 = R.id.tagLayout;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tagLayout);
                                                        if (linearLayout != null) {
                                                            i10 = R.id.view9;
                                                            View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.view9);
                                                            if (viewFindChildViewById5 != null) {
                                                                return new fv0((ConstraintLayout) rootView, constraintLayout, textView, textView2, viewFindChildViewById, imageView, imageView2, simpleDraweeView, viewFindChildViewById2, viewFindChildViewById3, textView3, viewFindChildViewById4, textView4, linearLayout, viewFindChildViewById5);
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
    public static fv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38562b;
    }

    @NonNull
    public static fv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simulator_exit_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
