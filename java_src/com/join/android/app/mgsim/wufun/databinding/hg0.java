package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39328d;

    private hg0(@NonNull LinearLayout rootView, @NonNull View dividerTop, @NonNull TextView sectionTitle) {
        this.f39326b = rootView;
        this.f39327c = dividerTop;
        this.f39328d = sectionTitle;
    }

    @NonNull
    public static hg0 bind(@NonNull View rootView) {
        int i10 = R.id.dividerTop;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.dividerTop);
        if (viewFindChildViewById != null) {
            i10 = R.id.sectionTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionTitle);
            if (textView != null) {
                return new hg0((LinearLayout) rootView, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39326b;
    }

    @NonNull
    public static hg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_t_member_item_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
