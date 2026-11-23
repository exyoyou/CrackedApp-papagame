package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class t30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45117f;

    private t30(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView tvDesc, @NonNull TextView tvTime, @NonNull TextView tvUserName) {
        this.f45113b = rootView;
        this.f45114c = avatar;
        this.f45115d = tvDesc;
        this.f45116e = tvTime;
        this.f45117f = tvUserName;
    }

    @NonNull
    public static t30 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.tvDesc;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
            if (textView != null) {
                i10 = R.id.tvTime;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTime);
                if (textView2 != null) {
                    i10 = R.id.tvUserName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUserName);
                    if (textView3 != null) {
                        return new t30((ConstraintLayout) rootView, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45113b;
    }

    @NonNull
    public static t30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_message_feedback_reply, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
