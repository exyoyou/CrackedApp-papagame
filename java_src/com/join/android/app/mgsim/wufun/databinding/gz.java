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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gz implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39070e;

    private gz(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvGameName, @NonNull TextView tvLabel) {
        this.f39067b = rootView;
        this.f39068c = sdvImage;
        this.f39069d = tvGameName;
        this.f39070e = tvLabel;
    }

    @NonNull
    public static gz bind(@NonNull View rootView) {
        int i10 = R.id.sdv_image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
        if (simpleDraweeView != null) {
            i10 = R.id.tv_game_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_name);
            if (textView != null) {
                i10 = R.id.tv_label;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
                if (textView2 != null) {
                    return new gz((ConstraintLayout) rootView, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gz inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39067b;
    }

    @NonNull
    public static gz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_detail_pc_recommend_game_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
