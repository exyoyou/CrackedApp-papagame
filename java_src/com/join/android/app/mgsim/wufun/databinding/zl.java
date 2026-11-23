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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f48301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f48303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48304f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48305g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48306h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ViewPager f48307i;

    private zl(@NonNull ConstraintLayout rootView, @NonNull View close, @NonNull ImageView iv1, @NonNull View likeDot, @NonNull TextView tabLike, @NonNull TextView tabReq, @NonNull TextView textView48, @NonNull ViewPager viewPager) {
        this.f48300b = rootView;
        this.f48301c = close;
        this.f48302d = iv1;
        this.f48303e = likeDot;
        this.f48304f = tabLike;
        this.f48305g = tabReq;
        this.f48306h = textView48;
        this.f48307i = viewPager;
    }

    @NonNull
    public static zl bind(@NonNull View rootView) {
        int i10 = R.id.close;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.close);
        if (viewFindChildViewById != null) {
            i10 = R.id.iv1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
            if (imageView != null) {
                i10 = R.id.likeDot;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.likeDot);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.tabLike;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tabLike);
                    if (textView != null) {
                        i10 = R.id.tabReq;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tabReq);
                        if (textView2 != null) {
                            i10 = R.id.textView48;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView48);
                            if (textView3 != null) {
                                i10 = R.id.viewPager;
                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                if (viewPager != null) {
                                    return new zl((ConstraintLayout) rootView, viewFindChildViewById, imageView, viewFindChildViewById2, textView, textView2, textView3, viewPager);
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
    public static zl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48300b;
    }

    @NonNull
    public static zl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_friend_msg, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
