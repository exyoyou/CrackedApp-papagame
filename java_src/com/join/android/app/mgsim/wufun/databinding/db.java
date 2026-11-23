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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class db implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37355e;

    private db(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView imgBreak, @NonNull RelativeLayout relateTop, @NonNull TextView textViewBreak) {
        this.f37352b = rootView;
        this.f37353c = imgBreak;
        this.f37354d = relateTop;
        this.f37355e = textViewBreak;
    }

    @NonNull
    public static db bind(@NonNull View rootView) {
        int i10 = R.id.imgBreak;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgBreak);
        if (simpleDraweeView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewBreak);
            if (textView != null) {
                return new db(relativeLayout, simpleDraweeView, relativeLayout, textView);
            }
            i10 = R.id.textViewBreak;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static db inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37352b;
    }

    @NonNull
    public static db inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_two_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
