package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ph0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final StaticLayoutView f43362c;

    private ph0(@NonNull LinearLayout rootView, @NonNull StaticLayoutView forumPostMessage) {
        this.f43361b = rootView;
        this.f43362c = forumPostMessage;
    }

    @NonNull
    public static ph0 bind(@NonNull View rootView) {
        StaticLayoutView staticLayoutView = (StaticLayoutView) ViewBindings.findChildViewById(rootView, R.id.forum_post_message);
        if (staticLayoutView != null) {
            return new ph0((LinearLayout) rootView, staticLayoutView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.forum_post_message)));
    }

    @NonNull
    public static ph0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43361b;
    }

    @NonNull
    public static ph0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_message1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
