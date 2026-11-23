package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f38882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38884g;

    private gk0(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull LinearLayout itemLayout, @NonNull View itemLine, @NonNull LinearLayout messageLayoutMain, @NonNull ImageView moreImage) {
        this.f38879b = rootView;
        this.f38880c = backLayout;
        this.f38881d = itemLayout;
        this.f38882e = itemLine;
        this.f38883f = messageLayoutMain;
        this.f38884g = moreImage;
    }

    @NonNull
    public static gk0 bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.itemLayout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.itemLayout);
            if (linearLayout2 != null) {
                i10 = R.id.itemLine;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.itemLine);
                if (viewFindChildViewById != null) {
                    i10 = R.id.messageLayoutMain;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.messageLayoutMain);
                    if (linearLayout3 != null) {
                        i10 = R.id.moreImage;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreImage);
                        if (imageView != null) {
                            return new gk0((LinearLayout) rootView, linearLayout, linearLayout2, viewFindChildViewById, linearLayout3, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38879b;
    }

    @NonNull
    public static gk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_message, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
