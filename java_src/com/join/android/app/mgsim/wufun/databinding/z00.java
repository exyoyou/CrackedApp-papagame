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
public final class z00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48023f;

    private z00(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView button, @NonNull TextView desc, @NonNull TextView name) {
        this.f48019b = rootView;
        this.f48020c = avatar;
        this.f48021d = button;
        this.f48022e = desc;
        this.f48023f = name;
    }

    @NonNull
    public static z00 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.button);
            if (textView != null) {
                i10 = R.id.desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                if (textView2 != null) {
                    i10 = R.id.name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView3 != null) {
                        return new z00((ConstraintLayout) rootView, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48019b;
    }

    @NonNull
    public static z00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
