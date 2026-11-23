package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f43314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43315e;

    private pc0(@NonNull ConstraintLayout rootView, @NonNull ImageView chooseType, @NonNull CardView tagView, @NonNull TextView tvTimeDesc) {
        this.f43312b = rootView;
        this.f43313c = chooseType;
        this.f43314d = tagView;
        this.f43315e = tvTimeDesc;
    }

    @NonNull
    public static pc0 bind(@NonNull View rootView) {
        int i10 = R.id.chooseType;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.chooseType);
        if (imageView != null) {
            i10 = R.id.tagView;
            CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.tagView);
            if (cardView != null) {
                i10 = R.id.tvTimeDesc;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTimeDesc);
                if (textView != null) {
                    return new pc0((ConstraintLayout) rootView, imageView, cardView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43312b;
    }

    @NonNull
    public static pc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_achievement_item_time, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
