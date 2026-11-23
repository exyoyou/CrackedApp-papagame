package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43856c;

    private qj0(@NonNull LinearLayout rootView, @NonNull View forumPostDivider) {
        this.f43855b = rootView;
        this.f43856c = forumPostDivider;
    }

    @NonNull
    public static qj0 bind(@NonNull View rootView) {
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
        if (viewFindChildViewById != null) {
            return new qj0((LinearLayout) rootView, viewFindChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.forum_post_divider)));
    }

    @NonNull
    public static qj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43855b;
    }

    @NonNull
    public static qj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_post_subject, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
