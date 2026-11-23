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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;

/* JADX INFO: loaded from: classes4.dex */
public final class bb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f36315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36319i;

    private bb(@NonNull RelativeLayout rootView, @NonNull ImageView imgIconback, @NonNull LinearLayout lLayout, @NonNull MViewpagerV4 mBottomVIewPager, @NonNull RelativeLayout relateLayoutRight, @NonNull TextView textViewPosition, @NonNull TextView textViewTime, @NonNull TextView textViewTitle) {
        this.f36312b = rootView;
        this.f36313c = imgIconback;
        this.f36314d = lLayout;
        this.f36315e = mBottomVIewPager;
        this.f36316f = relateLayoutRight;
        this.f36317g = textViewPosition;
        this.f36318h = textViewTime;
        this.f36319i = textViewTitle;
    }

    @NonNull
    public static bb bind(@NonNull View rootView) {
        int i10 = R.id.img_iconback;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_iconback);
        if (imageView != null) {
            i10 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout);
            if (linearLayout != null) {
                i10 = R.id.mBottomVIewPager;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.mBottomVIewPager);
                if (mViewpagerV4 != null) {
                    i10 = R.id.relateLayoutRight;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutRight);
                    if (relativeLayout != null) {
                        i10 = R.id.textViewPosition;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewPosition);
                        if (textView != null) {
                            i10 = R.id.textViewTime;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewTime);
                            if (textView2 != null) {
                                i10 = R.id.textViewTitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewTitle);
                                if (textView3 != null) {
                                    return new bb((RelativeLayout) rootView, imageView, linearLayout, mViewpagerV4, relativeLayout, textView, textView2, textView3);
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
    public static bb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36312b;
    }

    @NonNull
    public static bb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_three_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
