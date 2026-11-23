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
public final class t2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f45085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45086g;

    private t2(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull Button okButn, @NonNull RelativeLayout relativeLayout, @NonNull Button resetButn, @NonNull TextView titleText) {
        this.f45081b = rootView;
        this.f45082c = backImage;
        this.f45083d = okButn;
        this.f45084e = relativeLayout;
        this.f45085f = resetButn;
        this.f45086g = titleText;
    }

    @NonNull
    public static t2 bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.okButn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.okButn);
            if (button != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.resetButn;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.resetButn);
                if (button2 != null) {
                    i10 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                    if (textView != null) {
                        return new t2(relativeLayout, imageView, button, relativeLayout, button2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45081b;
    }

    @NonNull
    public static t2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_key_map_head_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
