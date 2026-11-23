package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RadioButton f44349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RadioButton f44350d;

    private rg0(@NonNull RelativeLayout rootView, @NonNull RadioButton latestComment, @NonNull RadioButton latestPost) {
        this.f44348b = rootView;
        this.f44349c = latestComment;
        this.f44350d = latestPost;
    }

    @NonNull
    public static rg0 bind(@NonNull View rootView) {
        int i10 = R.id.latestComment;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.latestComment);
        if (radioButton != null) {
            i10 = R.id.latestPost;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.latestPost);
            if (radioButton2 != null) {
                return new rg0((RelativeLayout) rootView, radioButton, radioButton2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44348b;
    }

    @NonNull
    public static rg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_group_oderby_popwindow, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
