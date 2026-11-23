package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f46451e;

    private vt(@NonNull FrameLayout rootView, @NonNull SimpleDraweeView sdvIcon, @NonNull TextView tvGameCountBadge, @NonNull View vDimOverlay) {
        this.f46448b = rootView;
        this.f46449c = sdvIcon;
        this.f46450d = tvGameCountBadge;
        this.f46451e = vDimOverlay;
    }

    @NonNull
    public static vt bind(@NonNull View rootView) {
        int i10 = R.id.sdv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon);
        if (simpleDraweeView != null) {
            i10 = R.id.tv_game_count_badge;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_count_badge);
            if (textView != null) {
                i10 = R.id.v_dim_overlay;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_dim_overlay);
                if (viewFindChildViewById != null) {
                    return new vt((FrameLayout) rootView, simpleDraweeView, textView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f46448b;
    }

    @NonNull
    public static vt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_list_itemhome_icon_cell, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
