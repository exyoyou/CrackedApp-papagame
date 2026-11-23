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
public final class v20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f46020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46023f;

    private v20(@NonNull ConstraintLayout rootView, @NonNull View divder, @NonNull SimpleDraweeView ivAvatar, @NonNull TextView tvDesc, @NonNull TextView tvFunc) {
        this.f46019b = rootView;
        this.f46020c = divder;
        this.f46021d = ivAvatar;
        this.f46022e = tvDesc;
        this.f46023f = tvFunc;
    }

    @NonNull
    public static v20 bind(@NonNull View rootView) {
        int i10 = R.id.divder;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divder);
        if (viewFindChildViewById != null) {
            i10 = R.id.ivAvatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAvatar);
            if (simpleDraweeView != null) {
                i10 = R.id.tvDesc;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                if (textView != null) {
                    i10 = R.id.tvFunc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFunc);
                    if (textView2 != null) {
                        return new v20((ConstraintLayout) rootView, viewFindChildViewById, simpleDraweeView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46019b;
    }

    @NonNull
    public static v20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_gold_finger_func, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
