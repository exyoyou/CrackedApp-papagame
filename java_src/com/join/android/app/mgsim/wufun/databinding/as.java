package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class as implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f36004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36010k;

    private as(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull View lineH, @NonNull LinearLayout lookOther, @NonNull TextView message, @NonNull TextView moreText, @NonNull TextView textView9, @NonNull TextView titleText) {
        this.f36001b = rootView;
        this.f36002c = backLayout;
        this.f36003d = imageView5;
        this.f36004e = layoutTop;
        this.f36005f = lineH;
        this.f36006g = lookOther;
        this.f36007h = message;
        this.f36008i = moreText;
        this.f36009j = textView9;
        this.f36010k = titleText;
    }

    @NonNull
    public static as bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.imageView5;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
            if (imageView != null) {
                i10 = R.id.layoutTop;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                if (viewFindChildViewById != null) {
                    i10 = R.id.line_h;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line_h);
                    if (viewFindChildViewById2 != null) {
                        i10 = R.id.look_other;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                        if (linearLayout2 != null) {
                            i10 = R.id.message;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                            if (textView != null) {
                                i10 = R.id.moreText;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                if (textView2 != null) {
                                    i10 = R.id.textView9;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                    if (textView3 != null) {
                                        i10 = R.id.titleText;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                        if (textView4 != null) {
                                            return new as((LinearLayout) rootView, linearLayout, imageView, viewFindChildViewById, viewFindChildViewById2, linearLayout2, textView, textView2, textView3, textView4);
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
    public static as inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36001b;
    }

    @NonNull
    public static as inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_updateinfo, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
