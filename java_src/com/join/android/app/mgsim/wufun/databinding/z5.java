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
public final class z5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48091e;

    private z5(@NonNull RelativeLayout rootView, @NonNull TextView albumCount, @NonNull ImageView albumCover, @NonNull TextView albumName) {
        this.f48088b = rootView;
        this.f48089c = albumCount;
        this.f48090d = albumCover;
        this.f48091e = albumName;
    }

    @NonNull
    public static z5 bind(@NonNull View rootView) {
        int i10 = R.id.album_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.album_count);
        if (textView != null) {
            i10 = R.id.album_cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.album_cover);
            if (imageView != null) {
                i10 = R.id.album_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.album_name);
                if (textView2 != null) {
                    return new z5((RelativeLayout) rootView, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48088b;
    }

    @NonNull
    public static z5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.album_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
