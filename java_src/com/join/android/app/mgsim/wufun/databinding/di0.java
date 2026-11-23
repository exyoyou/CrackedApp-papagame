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
public final class di0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37499e;

    private di0(@NonNull LinearLayout rootView, @NonNull View forumPostDivider, @NonNull TextView timestampTv, @NonNull TextView typeTv) {
        this.f37496b = rootView;
        this.f37497c = forumPostDivider;
        this.f37498d = timestampTv;
        this.f37499e = typeTv;
    }

    @NonNull
    public static di0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.timestampTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.timestampTv);
            if (textView != null) {
                i10 = R.id.typeTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.typeTv);
                if (textView2 != null) {
                    return new di0((LinearLayout) rootView, viewFindChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static di0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37496b;
    }

    @NonNull
    public static di0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_favorites_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
