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
public final class wj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f46832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f46834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f46835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46836g;

    private wj0(@NonNull LinearLayout rootView, @NonNull View bottom, @NonNull LinearLayout commentReplyContainer, @NonNull View commentReplyDivider, @NonNull View line, @NonNull LinearLayout parentLayout) {
        this.f46831b = rootView;
        this.f46832c = bottom;
        this.f46833d = commentReplyContainer;
        this.f46834e = commentReplyDivider;
        this.f46835f = line;
        this.f46836g = parentLayout;
    }

    @NonNull
    public static wj0 bind(@NonNull View rootView) {
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
                        i10 = R.id.parentLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.parentLayout);
                        if (linearLayout2 != null) {
                            return new wj0((LinearLayout) rootView, viewFindChildViewById, linearLayout, viewFindChildViewById2, viewFindChildViewById3, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46831b;
    }

    @NonNull
    public static wj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
