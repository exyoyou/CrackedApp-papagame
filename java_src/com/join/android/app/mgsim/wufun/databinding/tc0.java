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
public final class tc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f45188d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f45189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f45190f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45191g;

    private tc0(@NonNull ConstraintLayout rootView, @NonNull ImageView chooseType, @NonNull View treeBall, @NonNull View treeLineBottom, @NonNull View treeLineTop, @NonNull TextView tvTimeDesc) {
        this.f45186b = rootView;
        this.f45187c = chooseType;
        this.f45188d = treeBall;
        this.f45189e = treeLineBottom;
        this.f45190f = treeLineTop;
        this.f45191g = tvTimeDesc;
    }

    @NonNull
    public static tc0 bind(@NonNull View rootView) {
        int i10 = R.id.chooseType;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.chooseType);
        if (imageView != null) {
            i10 = R.id.treeBall;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.treeBall);
            if (viewFindChildViewById != null) {
                i10 = R.id.treeLineBottom;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.treeLineBottom);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.treeLineTop;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.treeLineTop);
                    if (viewFindChildViewById3 != null) {
                        i10 = R.id.tvTimeDesc;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTimeDesc);
                        if (textView != null) {
                            return new tc0((ConstraintLayout) rootView, imageView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45186b;
    }

    @NonNull
    public static tc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_launch_moment_item_time, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
