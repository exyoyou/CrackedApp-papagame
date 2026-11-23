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
public final class ec implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f37883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37884f;

    private ec(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout cropTitleBar, @NonNull Button searchImage, @NonNull TextView titleTextview) {
        this.f37880b = rootView;
        this.f37881c = backImage;
        this.f37882d = cropTitleBar;
        this.f37883e = searchImage;
        this.f37884f = titleTextview;
    }

    @NonNull
    public static ec bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            i10 = R.id.searchImage;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.searchImage);
            if (button != null) {
                i10 = R.id.title_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                if (textView != null) {
                    return new ec(relativeLayout, imageView, relativeLayout, button, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ec inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37880b;
    }

    @NonNull
    public static ec inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.crop_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
