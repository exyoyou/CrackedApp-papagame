package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47582e;

    private y5(@NonNull LinearLayout rootView, @NonNull Button buttonAlbum, @NonNull ImageView imgIconAlbum, @NonNull TextView textViewAlbum) {
        this.f47579b = rootView;
        this.f47580c = buttonAlbum;
        this.f47581d = imgIconAlbum;
        this.f47582e = textViewAlbum;
    }

    @NonNull
    public static y5 bind(@NonNull View rootView) {
        int i10 = R.id.buttonAlbum;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.buttonAlbum);
        if (button != null) {
            i10 = R.id.imgIconAlbum;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imgIconAlbum);
            if (imageView != null) {
                i10 = R.id.textViewAlbum;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewAlbum);
                if (textView != null) {
                    return new y5((LinearLayout) rootView, button, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static y5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47579b;
    }

    @NonNull
    public static y5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.album_gridview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
