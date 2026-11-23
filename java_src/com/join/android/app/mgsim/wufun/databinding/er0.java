package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class er0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f38082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38084e;

    private er0(@NonNull RelativeLayout rootView, @NonNull Button checkButton, @NonNull ImageView imgIconCategory, @NonNull TextView textViewCategory) {
        this.f38081b = rootView;
        this.f38082c = checkButton;
        this.f38083d = imgIconCategory;
        this.f38084e = textViewCategory;
    }

    @NonNull
    public static er0 bind(@NonNull View rootView) {
        int i10 = R.id.checkButton;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.checkButton);
        if (button != null) {
            i10 = R.id.imgIconCategory;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imgIconCategory);
            if (imageView != null) {
                i10 = R.id.textViewCategory;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewCategory);
                if (textView != null) {
                    return new er0((RelativeLayout) rootView, button, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static er0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38081b;
    }

    @NonNull
    public static er0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.plat_gridview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
