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
public final class th0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45246e;

    private th0(@NonNull LinearLayout rootView, @NonNull Button forumPostBest, @NonNull TextView forumPostSubject, @NonNull LinearLayout subjectParent) {
        this.f45243b = rootView;
        this.f45244c = forumPostBest;
        this.f45245d = forumPostSubject;
        this.f45246e = subjectParent;
    }

    @NonNull
    public static th0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_best);
        if (button != null) {
            i10 = R.id.forum_post_subject;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_subject);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                return new th0(linearLayout, button, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static th0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45243b;
    }

    @NonNull
    public static th0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_subject, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
