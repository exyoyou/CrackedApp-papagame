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
public final class jd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40188e;

    private jd(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView46, @NonNull TextView text, @NonNull View view4) {
        this.f40185b = rootView;
        this.f40186c = imageView46;
        this.f40187d = text;
        this.f40188e = view4;
    }

    @NonNull
    public static jd bind(@NonNull View rootView) {
        int i10 = R.id.imageView46;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView46);
        if (imageView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text);
            if (textView != null) {
                i10 = R.id.view4;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view4);
                if (viewFindChildViewById != null) {
                    return new jd((ConstraintLayout) rootView, imageView, textView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40185b;
    }

    @NonNull
    public static jd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_golden_finger_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
