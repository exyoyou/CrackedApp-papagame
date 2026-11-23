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
import com.join.mgps.customview.CopyTextViewNew;

/* JADX INFO: loaded from: classes4.dex */
public final class yh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f47736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CopyTextViewNew f47737d;

    private yh0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull CopyTextViewNew forumPostMessage) {
        this.f47735b = rootView;
        this.f47736c = actionbarLayout;
        this.f47737d = forumPostMessage;
    }

    @NonNull
    public static yh0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(rootView, R.id.forum_post_message);
            if (copyTextViewNew != null) {
                return new yh0((LinearLayout) rootView, bj0VarBind, copyTextViewNew);
            }
            i10 = R.id.forum_post_message;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47735b;
    }

    @NonNull
    public static yh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_copy_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
