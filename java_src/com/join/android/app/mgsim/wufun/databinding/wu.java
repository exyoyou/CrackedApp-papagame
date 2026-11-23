package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46979j;

    private wu(@NonNull ConstraintLayout rootView, @NonNull TextView appName, @NonNull ConstraintLayout constraintLayout14, @NonNull TextView content, @NonNull ConstraintLayout detail, @NonNull ImageView imageView53, @NonNull ConstraintLayout main, @NonNull TextView textView50, @NonNull TextView textView75) {
        this.f46971b = rootView;
        this.f46972c = appName;
        this.f46973d = constraintLayout14;
        this.f46974e = content;
        this.f46975f = detail;
        this.f46976g = imageView53;
        this.f46977h = main;
        this.f46978i = textView50;
        this.f46979j = textView75;
    }

    @NonNull
    public static wu bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.constraintLayout14;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout14);
            if (constraintLayout != null) {
                i10 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
                if (textView2 != null) {
                    i10 = R.id.detail;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.detail);
                    if (constraintLayout2 != null) {
                        i10 = R.id.imageView53;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView53);
                        if (imageView != null) {
                            ConstraintLayout constraintLayout3 = (ConstraintLayout) rootView;
                            i10 = R.id.textView50;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView50);
                            if (textView3 != null) {
                                i10 = R.id.textView75;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView75);
                                if (textView4 != null) {
                                    return new wu(constraintLayout3, textView, constraintLayout, textView2, constraintLayout2, imageView, constraintLayout3, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46971b;
    }

    @NonNull
    public static wu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.haven_forum_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
