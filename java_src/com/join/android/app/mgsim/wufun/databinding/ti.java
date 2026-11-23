package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ti implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45251f;

    private ti(@NonNull RelativeLayout rootView, @NonNull TextView downUrlName, @NonNull ImageView imageView, @NonNull RelativeLayout localPathLayout, @NonNull TextView textView) {
        this.f45247b = rootView;
        this.f45248c = downUrlName;
        this.f45249d = imageView;
        this.f45250e = localPathLayout;
        this.f45251f = textView;
    }

    @NonNull
    public static ti bind(@NonNull View rootView) {
        int i10 = R.id.downUrlName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downUrlName);
        if (textView != null) {
            i10 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                if (textView2 != null) {
                    return new ti(relativeLayout, textView, imageView, relativeLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ti inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45247b;
    }

    @NonNull
    public static ti inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_choice_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
