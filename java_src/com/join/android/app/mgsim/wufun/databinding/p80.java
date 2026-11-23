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
public final class p80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43276e;

    private p80(@NonNull ConstraintLayout rootView, @NonNull View redPoint, @NonNull SimpleDraweeView tabImg, @NonNull TextView tabText) {
        this.f43273b = rootView;
        this.f43274c = redPoint;
        this.f43275d = tabImg;
        this.f43276e = tabText;
    }

    @NonNull
    public static p80 bind(@NonNull View rootView) {
        int i10 = R.id.redPoint;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.redPoint);
        if (viewFindChildViewById != null) {
            i10 = R.id.tabImg;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.tabImg);
            if (simpleDraweeView != null) {
                i10 = R.id.tabText;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
                if (textView != null) {
                    return new p80((ConstraintLayout) rootView, viewFindChildViewById, simpleDraweeView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43273b;
    }

    @NonNull
    public static p80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_main_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
