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
import com.join.mgps.customview.MyGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class wa implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MyGridView f46702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46704e;

    private wa(@NonNull RelativeLayout rootView, @NonNull MyGridView gridViewAlbum, @NonNull ImageView imgBackground, @NonNull TextView topTitle) {
        this.f46701b = rootView;
        this.f46702c = gridViewAlbum;
        this.f46703d = imgBackground;
        this.f46704e = topTitle;
    }

    @NonNull
    public static wa bind(@NonNull View rootView) {
        int i10 = R.id.gridViewAlbum;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(rootView, R.id.gridViewAlbum);
        if (myGridView != null) {
            i10 = R.id.imgBackground;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imgBackground);
            if (imageView != null) {
                i10 = R.id.top_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.top_title);
                if (textView != null) {
                    return new wa((RelativeLayout) rootView, myGridView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wa inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46701b;
    }

    @NonNull
    public static wa inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_module_one, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
