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
public final class gv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39026d;

    private gv0(@NonNull LinearLayout rootView, @NonNull ImageView imgIconSimulator, @NonNull TextView textViewSimulator) {
        this.f39024b = rootView;
        this.f39025c = imgIconSimulator;
        this.f39026d = textViewSimulator;
    }

    @NonNull
    public static gv0 bind(@NonNull View rootView) {
        int i10 = R.id.imgIconSimulator;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imgIconSimulator);
        if (imageView != null) {
            i10 = R.id.textViewSimulator;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewSimulator);
            if (textView != null) {
                return new gv0((LinearLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39024b;
    }

    @NonNull
    public static gv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simulator_gridview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
