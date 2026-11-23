package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f41915d;

    private mi0(@NonNull RelativeLayout rootView, @NonNull LinearLayout commentReplyContainer, @NonNull View commentReplyDivider) {
        this.f41913b = rootView;
        this.f41914c = commentReplyContainer;
        this.f41915d = commentReplyDivider;
    }

    @NonNull
    public static mi0 bind(@NonNull View rootView) {
        int i10 = R.id.comment_reply_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.comment_reply_container);
        if (linearLayout != null) {
            i10 = R.id.comment_reply_divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.comment_reply_divider);
            if (viewFindChildViewById != null) {
                return new mi0((RelativeLayout) rootView, linearLayout, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41913b;
    }

    @NonNull
    public static mi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_reply_message_reply_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
