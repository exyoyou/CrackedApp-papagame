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
public final class li0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f41331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41332d;

    private li0(@NonNull RelativeLayout rootView, @NonNull View mgForumProfileMessageDivider, @NonNull TextView mgForumProfileMessageTv) {
        this.f41330b = rootView;
        this.f41331c = mgForumProfileMessageDivider;
        this.f41332d = mgForumProfileMessageTv;
    }

    @NonNull
    public static li0 bind(@NonNull View rootView) {
        int i10 = R.id.mg_forum_profile_message_divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_message_divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.mg_forum_profile_message_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_message_tv);
            if (textView != null) {
                return new li0((RelativeLayout) rootView, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static li0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41330b;
    }

    @NonNull
    public static li0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_reply_message_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
