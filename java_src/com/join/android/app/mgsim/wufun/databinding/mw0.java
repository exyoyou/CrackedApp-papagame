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
public final class mw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42065e;

    private mw0(@NonNull LinearLayout rootView, @NonNull LinearLayout topTip, @NonNull ImageView topTipClose, @NonNull TextView toptipText) {
        this.f42062b = rootView;
        this.f42063c = topTip;
        this.f42064d = topTipClose;
        this.f42065e = toptipText;
    }

    @NonNull
    public static mw0 bind(@NonNull View rootView) {
        int i10 = R.id.topTip;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.topTip);
        if (linearLayout != null) {
            i10 = R.id.topTipClose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.topTipClose);
            if (imageView != null) {
                i10 = R.id.toptipText;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.toptipText);
                if (textView != null) {
                    return new mw0((LinearLayout) rootView, linearLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42062b;
    }

    @NonNull
    public static mw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.toptip_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
