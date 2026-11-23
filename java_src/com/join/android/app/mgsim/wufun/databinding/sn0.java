package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GridView f44885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44890i;

    private sn0(@NonNull RelativeLayout rootView, @NonNull ImageView albumCollapseImage, @NonNull GridView albumGrid, @NonNull RelativeLayout albumMain, @NonNull RelativeLayout albumTitle, @NonNull ImageView backImage, @NonNull LinearLayout layoutShowAlbum, @NonNull TextView layoutTitle) {
        this.f44883b = rootView;
        this.f44884c = albumCollapseImage;
        this.f44885d = albumGrid;
        this.f44886e = albumMain;
        this.f44887f = albumTitle;
        this.f44888g = backImage;
        this.f44889h = layoutShowAlbum;
        this.f44890i = layoutTitle;
    }

    @NonNull
    public static sn0 bind(@NonNull View rootView) {
        int i10 = R.id.album_collapse_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.album_collapse_image);
        if (imageView != null) {
            i10 = R.id.album_grid;
            GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.album_grid);
            if (gridView != null) {
                i10 = R.id.album_main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.album_main);
                if (relativeLayout != null) {
                    i10 = R.id.album_title;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.album_title);
                    if (relativeLayout2 != null) {
                        i10 = R.id.back_image;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
                        if (imageView2 != null) {
                            i10 = R.id.layout_show_album;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_show_album);
                            if (linearLayout != null) {
                                i10 = R.id.layout_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title);
                                if (textView != null) {
                                    return new sn0((RelativeLayout) rootView, imageView, gridView, relativeLayout, relativeLayout2, imageView2, linearLayout, textView);
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
    public static sn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44883b;
    }

    @NonNull
    public static sn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_icon_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
