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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38848f;

    private gh(@NonNull ConstraintLayout rootView, @NonNull ImageView close, @NonNull TextView launch, @NonNull TextView textView102, @NonNull TextView textView93) {
        this.f38844b = rootView;
        this.f38845c = close;
        this.f38846d = launch;
        this.f38847e = textView102;
        this.f38848f = textView93;
    }

    @NonNull
    public static gh bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.launch;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.launch);
            if (textView != null) {
                i10 = R.id.textView102;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView102);
                if (textView2 != null) {
                    i10 = R.id.textView93;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView93);
                    if (textView3 != null) {
                        return new gh((ConstraintLayout) rootView, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38844b;
    }

    @NonNull
    public static gh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_standard, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
