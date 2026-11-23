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

/* JADX INFO: loaded from: classes4.dex */
public final class wq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46924h;

    private wq0(@NonNull LinearLayout rootView, @NonNull ImageView imageView5, @NonNull LinearLayout lookOther, @NonNull RelativeLayout main, @NonNull TextView subtitle, @NonNull TextView textView11, @NonNull TextView titleText) {
        this.f46918b = rootView;
        this.f46919c = imageView5;
        this.f46920d = lookOther;
        this.f46921e = main;
        this.f46922f = subtitle;
        this.f46923g = textView11;
        this.f46924h = titleText;
    }

    @NonNull
    public static wq0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
        if (imageView != null) {
            i10 = R.id.look_other;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
            if (linearLayout != null) {
                i10 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                if (relativeLayout != null) {
                    i10 = R.id.subtitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.subtitle);
                    if (textView != null) {
                        i10 = R.id.textView11;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView11);
                        if (textView2 != null) {
                            i10 = R.id.titleText;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                            if (textView3 != null) {
                                return new wq0((LinearLayout) rootView, imageView, linearLayout, relativeLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46918b;
    }

    @NonNull
    public static wq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papmain_item_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
