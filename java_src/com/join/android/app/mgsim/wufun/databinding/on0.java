package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class on0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GridView f42979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f42983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f42986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42987l;

    private on0(@NonNull RelativeLayout rootView, @NonNull ImageView albumCollapseImage, @NonNull GridView albumGrid, @NonNull RelativeLayout albumMain, @NonNull RelativeLayout albumTitle, @NonNull ImageView backImage, @NonNull View cover, @NonNull LinearLayout layoutShowAlbum, @NonNull TextView layoutTitle, @NonNull Button okImage, @NonNull TextView selectNum) {
        this.f42977b = rootView;
        this.f42978c = albumCollapseImage;
        this.f42979d = albumGrid;
        this.f42980e = albumMain;
        this.f42981f = albumTitle;
        this.f42982g = backImage;
        this.f42983h = cover;
        this.f42984i = layoutShowAlbum;
        this.f42985j = layoutTitle;
        this.f42986k = okImage;
        this.f42987l = selectNum;
    }

    @NonNull
    public static on0 bind(@NonNull View rootView) {
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
                            i10 = R.id.cover;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.cover);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.layout_show_album;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_show_album);
                                if (linearLayout != null) {
                                    i10 = R.id.layout_title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title);
                                    if (textView != null) {
                                        i10 = R.id.ok_image;
                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok_image);
                                        if (button != null) {
                                            i10 = R.id.select_num;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.select_num);
                                            if (textView2 != null) {
                                                return new on0((RelativeLayout) rootView, imageView, gridView, relativeLayout, relativeLayout2, imageView2, viewFindChildViewById, linearLayout, textView, button, textView2);
                                            }
                                        }
                                    }
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
    public static on0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42977b;
    }

    @NonNull
    public static on0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_album_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
