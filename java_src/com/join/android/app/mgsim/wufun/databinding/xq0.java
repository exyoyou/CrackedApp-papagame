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
import com.join.mgps.customview.MyGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class xq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MyGridView f47369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final GridView f47372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47377k;

    private xq0(@NonNull LinearLayout rootView, @NonNull MyGridView discoveryBottomGv, @NonNull LinearLayout discoveryCommunityLl, @NonNull ImageView discoverySearchIv, @NonNull GridView discoveryTopGv, @NonNull LinearLayout discoveryTopRl, @NonNull View statubar, @NonNull LinearLayout toCommunityLl, @NonNull TextView toCommunityTx, @NonNull RelativeLayout toFightRl) {
        this.f47368b = rootView;
        this.f47369c = discoveryBottomGv;
        this.f47370d = discoveryCommunityLl;
        this.f47371e = discoverySearchIv;
        this.f47372f = discoveryTopGv;
        this.f47373g = discoveryTopRl;
        this.f47374h = statubar;
        this.f47375i = toCommunityLl;
        this.f47376j = toCommunityTx;
        this.f47377k = toFightRl;
    }

    @NonNull
    public static xq0 bind(@NonNull View rootView) {
        int i10 = R.id.discoveryBottomGv;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(rootView, R.id.discoveryBottomGv);
        if (myGridView != null) {
            i10 = R.id.discoveryCommunityLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.discoveryCommunityLl);
            if (linearLayout != null) {
                i10 = R.id.discoverySearchIv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.discoverySearchIv);
                if (imageView != null) {
                    i10 = R.id.discoveryTopGv;
                    GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.discoveryTopGv);
                    if (gridView != null) {
                        i10 = R.id.discoveryTopRl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.discoveryTopRl);
                        if (linearLayout2 != null) {
                            i10 = R.id.statubar;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.toCommunityLl;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.toCommunityLl);
                                if (linearLayout3 != null) {
                                    i10 = R.id.toCommunityTx;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.toCommunityTx);
                                    if (textView != null) {
                                        i10 = R.id.toFightRl;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.toFightRl);
                                        if (relativeLayout != null) {
                                            return new xq0((LinearLayout) rootView, myGridView, linearLayout, imageView, gridView, linearLayout2, viewFindChildViewById, linearLayout3, textView, relativeLayout);
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
    public static xq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47368b;
    }

    @NonNull
    public static xq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.part_discovery_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
