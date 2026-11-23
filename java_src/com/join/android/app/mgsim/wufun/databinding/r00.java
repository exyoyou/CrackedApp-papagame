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
public final class r00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f44156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44157e;

    private r00(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull View selector, @NonNull TextView tvGameName) {
        this.f44154b = rootView;
        this.f44155c = ivIcon;
        this.f44156d = selector;
        this.f44157e = tvGameName;
    }

    @NonNull
    public static r00 bind(@NonNull View rootView) {
        int i10 = R.id.ivIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.selector;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.selector);
            if (viewFindChildViewById != null) {
                i10 = R.id.tvGameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                if (textView != null) {
                    return new r00((ConstraintLayout) rootView, simpleDraweeView, viewFindChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44154b;
    }

    @NonNull
    public static r00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_select_grid, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
