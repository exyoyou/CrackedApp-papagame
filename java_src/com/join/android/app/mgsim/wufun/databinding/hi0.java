package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39366d;

    private hi0(@NonNull RelativeLayout rootView, @NonNull View mgForumProfileMessageDivider, @NonNull TextView mgForumProfileMessageTv) {
        this.f39364b = rootView;
        this.f39365c = mgForumProfileMessageDivider;
        this.f39366d = mgForumProfileMessageTv;
    }

    @NonNull
    public static hi0 bind(@NonNull View rootView) {
        int i10 = R.id.mg_forum_profile_message_divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_message_divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.mg_forum_profile_message_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_message_tv);
            if (textView != null) {
                return new hi0((RelativeLayout) rootView, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39364b;
    }

    @NonNull
    public static hi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_message_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
