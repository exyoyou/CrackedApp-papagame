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
import in.srain.cube.views.GridViewWithHeaderAndFooter;

/* JADX INFO: loaded from: classes4.dex */
public final class ml0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final GridViewWithHeaderAndFooter f41959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f41963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f41964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41965i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41966j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41967k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41968l;

    private ml0(@NonNull RelativeLayout rootView, @NonNull GridViewWithHeaderAndFooter gridView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView monkeyIcon, @NonNull ImageView movetoTop, @NonNull ImageView roundPoint, @NonNull TextView searchBack, @NonNull ImageView share, @NonNull TextView textView, @NonNull RelativeLayout title) {
        this.f41958b = rootView;
        this.f41959c = gridView;
        this.f41960d = imageView2;
        this.f41961e = imageView3;
        this.f41962f = monkeyIcon;
        this.f41963g = movetoTop;
        this.f41964h = roundPoint;
        this.f41965i = searchBack;
        this.f41966j = share;
        this.f41967k = textView;
        this.f41968l = title;
    }

    @NonNull
    public static ml0 bind(@NonNull View rootView) {
        int i10 = R.id.gridView;
        GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter = (GridViewWithHeaderAndFooter) ViewBindings.findChildViewById(rootView, R.id.gridView);
        if (gridViewWithHeaderAndFooter != null) {
            i10 = R.id.imageView2;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
            if (imageView != null) {
                i10 = R.id.imageView3;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                if (imageView2 != null) {
                    i10 = R.id.monkey_icon;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.monkey_icon);
                    if (imageView3 != null) {
                        i10 = R.id.movetoTop;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.movetoTop);
                        if (imageView4 != null) {
                            i10 = R.id.round_point;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.round_point);
                            if (imageView5 != null) {
                                i10 = R.id.searchBack;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.searchBack);
                                if (textView != null) {
                                    i10 = R.id.share;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.share);
                                    if (imageView6 != null) {
                                        i10 = R.id.textView;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                        if (textView2 != null) {
                                            i10 = R.id.title;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                            if (relativeLayout != null) {
                                                return new ml0((RelativeLayout) rootView, gridViewWithHeaderAndFooter, imageView, imageView2, imageView3, imageView4, imageView5, textView, imageView6, textView2, relativeLayout);
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
    public static ml0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41958b;
    }

    @NonNull
    public static ml0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_mainfragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
