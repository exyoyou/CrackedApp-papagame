package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Barrier f39223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f39224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39226f;

    private h80(@NonNull ConstraintLayout rootView, @NonNull Barrier barrier, @NonNull View redPoint, @NonNull SimpleDraweeView tabImg, @NonNull TextView tabText) {
        this.f39222b = rootView;
        this.f39223c = barrier;
        this.f39224d = redPoint;
        this.f39225e = tabImg;
        this.f39226f = tabText;
    }

    @NonNull
    public static h80 bind(@NonNull View rootView) {
        int i10 = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(rootView, R.id.barrier);
        if (barrier != null) {
            i10 = R.id.redPoint;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.redPoint);
            if (viewFindChildViewById != null) {
                i10 = R.id.tabImg;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.tabImg);
                if (simpleDraweeView != null) {
                    i10 = R.id.tabText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
                    if (textView != null) {
                        return new h80((ConstraintLayout) rootView, barrier, viewFindChildViewById, simpleDraweeView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static h80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39222b;
    }

    @NonNull
    public static h80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_daily_find_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
