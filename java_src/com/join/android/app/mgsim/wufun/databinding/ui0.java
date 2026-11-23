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
import com.join.mgps.customview.EllipseTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class ui0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EllipseTextView f45715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45716d;

    private ui0(@NonNull LinearLayout rootView, @NonNull EllipseTextView forumPostMessage, @NonNull LinearLayout messageParent) {
        this.f45714b = rootView;
        this.f45715c = forumPostMessage;
        this.f45716d = messageParent;
    }

    @NonNull
    public static ui0 bind(@NonNull View rootView) {
        EllipseTextView ellipseTextView = (EllipseTextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_message);
        if (ellipseTextView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.forum_post_message)));
        }
        LinearLayout linearLayout = (LinearLayout) rootView;
        return new ui0(linearLayout, ellipseTextView, linearLayout);
    }

    @NonNull
    public static ui0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45714b;
    }

    @NonNull
    public static ui0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_post_message, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
