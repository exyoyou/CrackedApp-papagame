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
public final class ji0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40264d;

    private ji0(@NonNull RelativeLayout rootView, @NonNull ImageView postProfileImage, @NonNull TextView postProfileMessage) {
        this.f40262b = rootView;
        this.f40263c = postProfileImage;
        this.f40264d = postProfileMessage;
    }

    @NonNull
    public static ji0 bind(@NonNull View rootView) {
        int i10 = R.id.post_profile_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.post_profile_image);
        if (imageView != null) {
            i10 = R.id.post_profile_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.post_profile_message);
            if (textView != null) {
                return new ji0((RelativeLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ji0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40262b;
    }

    @NonNull
    public static ji0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_post_profile, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
