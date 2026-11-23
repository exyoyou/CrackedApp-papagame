package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;

/* JADX INFO: loaded from: classes4.dex */
public final class yj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final MyInnerScrollView f47772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MyInnerScrollView f47774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47775e;

    private yj0(@NonNull MyInnerScrollView rootView, @NonNull ImageView imageGoto, @NonNull MyInnerScrollView mInnerScrollView, @NonNull TextView textGoto) {
        this.f47772b = rootView;
        this.f47773c = imageGoto;
        this.f47774d = mInnerScrollView;
        this.f47775e = textGoto;
    }

    @NonNull
    public static yj0 bind(@NonNull View rootView) {
        int i10 = R.id.imageGoto;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageGoto);
        if (imageView != null) {
            MyInnerScrollView myInnerScrollView = (MyInnerScrollView) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textGoto);
            if (textView != null) {
                return new yj0(myInnerScrollView, imageView, myInnerScrollView, textView);
            }
            i10 = R.id.textGoto;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MyInnerScrollView getRoot() {
        return this.f47772b;
    }

    @NonNull
    public static yj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_game_community_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
