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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ev0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f38115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38116f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38117g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f38121k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f38122l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38123m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f38124n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f38125o;

    private ev0(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView btn, @NonNull View divider, @NonNull ImageView icLevel1, @NonNull ImageView icLevel1Bg, @NonNull SimpleDraweeView img, @NonNull TextView label, @NonNull ImageView like, @NonNull View ml, @NonNull View mr, @NonNull TextView name, @NonNull View rect, @NonNull ImageView vip) {
        this.f38112b = rootView;
        this.f38113c = avatar;
        this.f38114d = btn;
        this.f38115e = divider;
        this.f38116f = icLevel1;
        this.f38117g = icLevel1Bg;
        this.f38118h = img;
        this.f38119i = label;
        this.f38120j = like;
        this.f38121k = ml;
        this.f38122l = mr;
        this.f38123m = name;
        this.f38124n = rect;
        this.f38125o = vip;
    }

    @NonNull
    public static ev0 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.btn;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btn);
            if (textView != null) {
                i10 = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.icLevel1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLevel1);
                    if (imageView != null) {
                        i10 = R.id.icLevel1Bg;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLevel1Bg);
                        if (imageView2 != null) {
                            i10 = R.id.img;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.label;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.label);
                                if (textView2 != null) {
                                    i10 = R.id.like;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.like);
                                    if (imageView3 != null) {
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
                                                        i10 = R.id.vip;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.vip);
                                                        if (imageView4 != null) {
                                                            return new ev0((ConstraintLayout) rootView, simpleDraweeView, textView, viewFindChildViewById, imageView, imageView2, simpleDraweeView2, textView2, imageView3, viewFindChildViewById2, viewFindChildViewById3, textView3, viewFindChildViewById4, imageView4);
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
    public static ev0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38112b;
    }

    @NonNull
    public static ev0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simulator_exit_friend_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
