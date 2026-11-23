package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f46287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46290g;

    private vi0(@NonNull LinearLayout rootView, @NonNull Button forumPostBest, @NonNull View forumPostDivider, @NonNull TextView forumPostSubject, @NonNull LinearLayout llRoot, @NonNull LinearLayout subjectParent) {
        this.f46285b = rootView;
        this.f46286c = forumPostBest;
        this.f46287d = forumPostDivider;
        this.f46288e = forumPostSubject;
        this.f46289f = llRoot;
        this.f46290g = subjectParent;
    }

    @NonNull
    public static vi0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_best);
        if (button != null) {
            i10 = R.id.forum_post_divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.forum_post_subject;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_subject);
                if (textView != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    i10 = R.id.subject_parent;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.subject_parent);
                    if (linearLayout2 != null) {
                        return new vi0(linearLayout, button, viewFindChildViewById, textView, linearLayout, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46285b;
    }

    @NonNull
    public static vi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_post_subject, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
