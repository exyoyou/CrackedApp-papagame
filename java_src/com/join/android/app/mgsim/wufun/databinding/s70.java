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
public final class s70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f44669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44672f;

    private s70(@NonNull ConstraintLayout rootView, @NonNull View divider, @NonNull TextView tvBtn, @NonNull TextView tvSubTitle, @NonNull TextView tvTitle) {
        this.f44668b = rootView;
        this.f44669c = divider;
        this.f44670d = tvBtn;
        this.f44671e = tvSubTitle;
        this.f44672f = tvTitle;
    }

    @NonNull
    public static s70 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.tvBtn;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
            if (textView != null) {
                i10 = R.id.tvSubTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSubTitle);
                if (textView2 != null) {
                    i10 = R.id.tvTitle;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                    if (textView3 != null) {
                        return new s70((ConstraintLayout) rootView, viewFindChildViewById, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44668b;
    }

    @NonNull
    public static s70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_update_feature_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
