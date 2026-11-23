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
public final class q00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43605d;

    private q00(@NonNull ConstraintLayout rootView, @NonNull ImageView ivCheck, @NonNull TextView tvReason) {
        this.f43603b = rootView;
        this.f43604c = ivCheck;
        this.f43605d = tvReason;
    }

    @NonNull
    public static q00 bind(@NonNull View rootView) {
        int i10 = R.id.ivCheck;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivCheck);
        if (imageView != null) {
            i10 = R.id.tvReason;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReason);
            if (textView != null) {
                return new q00((ConstraintLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43603b;
    }

    @NonNull
    public static q00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_report_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
