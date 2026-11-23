package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class iq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39908d;

    private iq0(@NonNull ConstraintLayout rootView, @NonNull TextView tvSubTitle, @NonNull TextView tvTitle) {
        this.f39906b = rootView;
        this.f39907c = tvSubTitle;
        this.f39908d = tvTitle;
    }

    @NonNull
    public static iq0 bind(@NonNull View rootView) {
        int i10 = R.id.tvSubTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSubTitle);
        if (textView != null) {
            i10 = R.id.tvTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
            if (textView2 != null) {
                return new iq0((ConstraintLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static iq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39906b;
    }

    @NonNull
    public static iq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_item_title_layout_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
