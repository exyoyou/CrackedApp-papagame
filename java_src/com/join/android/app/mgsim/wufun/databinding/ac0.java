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
public final class ac0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f35767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f35768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35770f;

    private ac0(@NonNull ConstraintLayout rootView, @NonNull View divider, @NonNull ImageView ivOut, @NonNull TextView tvGameName, @NonNull TextView tvGameUrl) {
        this.f35766b = rootView;
        this.f35767c = divider;
        this.f35768d = ivOut;
        this.f35769e = tvGameName;
        this.f35770f = tvGameUrl;
    }

    @NonNull
    public static ac0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.ivOut;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivOut);
            if (imageView != null) {
                i10 = R.id.tvGameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                if (textView != null) {
                    i10 = R.id.tvGameUrl;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameUrl);
                    if (textView2 != null) {
                        return new ac0((ConstraintLayout) rootView, viewFindChildViewById, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ac0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35766b;
    }

    @NonNull
    public static ac0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_sheet_game_resource_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
