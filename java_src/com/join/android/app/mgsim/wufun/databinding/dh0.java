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
public final class dh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f37492f;

    private dh0(@NonNull RelativeLayout rootView, @NonNull View bottom, @NonNull LinearLayout commentReplyContainer, @NonNull View commentReplyDivider, @NonNull View line) {
        this.f37488b = rootView;
        this.f37489c = bottom;
        this.f37490d = commentReplyContainer;
        this.f37491e = commentReplyDivider;
        this.f37492f = line;
    }

    @NonNull
    public static dh0 bind(@NonNull View rootView) {
        int i10 = R.id.bottom;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.bottom);
        if (viewFindChildViewById != null) {
            i10 = R.id.comment_reply_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.comment_reply_container);
            if (linearLayout != null) {
                i10 = R.id.comment_reply_divider;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.comment_reply_divider);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.line;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.line);
                    if (viewFindChildViewById3 != null) {
                        return new dh0((RelativeLayout) rootView, viewFindChildViewById, linearLayout, viewFindChildViewById2, viewFindChildViewById3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37488b;
    }

    @NonNull
    public static dh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_comment_message_reply, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
