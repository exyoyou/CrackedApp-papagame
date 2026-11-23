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
public final class qi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f43846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43847e;

    private qi0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull View postFooterDivider, @NonNull TextView textView39) {
        this.f43844b = rootView;
        this.f43845c = clRoot;
        this.f43846d = postFooterDivider;
        this.f43847e = textView39;
    }

    @NonNull
    public static qi0 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.post_footer_divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.post_footer_divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.textView39;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView39);
            if (textView != null) {
                return new qi0(constraintLayout, constraintLayout, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43844b;
    }

    @NonNull
    public static qi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_all_view_more, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
