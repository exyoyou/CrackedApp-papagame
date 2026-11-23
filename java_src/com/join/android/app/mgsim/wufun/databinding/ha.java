package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ha implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f39238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39240f;

    private ha(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull ListView listview, @NonNull RelativeLayout relativeLayout, @NonNull TextView titleText) {
        this.f39236b = rootView;
        this.f39237c = backImage;
        this.f39238d = listview;
        this.f39239e = relativeLayout;
        this.f39240f = titleText;
    }

    @NonNull
    public static ha bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (listView != null) {
                i10 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i10 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                    if (textView != null) {
                        return new ha((LinearLayout) rootView, imageView, listView, relativeLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ha inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39236b;
    }

    @NonNull
    public static ha inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_download_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
