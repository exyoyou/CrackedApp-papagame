package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HandShankAdView;

/* JADX INFO: loaded from: classes4.dex */
public final class qu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HandShankAdView f44025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44028g;

    private qu(@NonNull LinearLayout rootView, @NonNull Button blueSetupBtn, @NonNull HandShankAdView mAdView, @NonNull TextView papahandList, @NonNull ImageView topIv, @NonNull TextView topTv) {
        this.f44023b = rootView;
        this.f44024c = blueSetupBtn;
        this.f44025d = mAdView;
        this.f44026e = papahandList;
        this.f44027f = topIv;
        this.f44028g = topTv;
    }

    @NonNull
    public static qu bind(@NonNull View rootView) {
        int i10 = R.id.blue_setup_btn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.blue_setup_btn);
        if (button != null) {
            i10 = R.id.mAdView;
            HandShankAdView handShankAdView = (HandShankAdView) ViewBindings.findChildViewById(rootView, R.id.mAdView);
            if (handShankAdView != null) {
                i10 = R.id.papahandList;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.papahandList);
                if (textView != null) {
                    i10 = R.id.topIv;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.topIv);
                    if (imageView != null) {
                        i10 = R.id.topTv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.topTv);
                        if (textView2 != null) {
                            return new qu((LinearLayout) rootView, button, handShankAdView, textView, imageView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44023b;
    }

    @NonNull
    public static qu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_layout_no, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
