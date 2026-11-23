package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ar0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f35992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final GridView f35994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36000k;

    private ar0(@NonNull LinearLayout rootView, @NonNull HListView discoveryBottomGv, @NonNull LinearLayout discoveryCommunityLl, @NonNull GridView discoveryTopGv, @NonNull RelativeLayout discoveryTopRl, @NonNull TextView number, @NonNull TextView title, @NonNull LinearLayout toCommunityLl, @NonNull TextView toCommunityTx, @NonNull TextView toFightRl) {
        this.f35991b = rootView;
        this.f35992c = discoveryBottomGv;
        this.f35993d = discoveryCommunityLl;
        this.f35994e = discoveryTopGv;
        this.f35995f = discoveryTopRl;
        this.f35996g = number;
        this.f35997h = title;
        this.f35998i = toCommunityLl;
        this.f35999j = toCommunityTx;
        this.f36000k = toFightRl;
    }

    @NonNull
    public static ar0 bind(@NonNull View rootView) {
        int i10 = R.id.discoveryBottomGv;
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.discoveryBottomGv);
        if (hListView != null) {
            i10 = R.id.discoveryCommunityLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.discoveryCommunityLl);
            if (linearLayout != null) {
                i10 = R.id.discoveryTopGv;
                GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.discoveryTopGv);
                if (gridView != null) {
                    i10 = R.id.discoveryTopRl;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.discoveryTopRl);
                    if (relativeLayout != null) {
                        i10 = R.id.number;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                        if (textView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView2 != null) {
                                i10 = R.id.toCommunityLl;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.toCommunityLl);
                                if (linearLayout2 != null) {
                                    i10 = R.id.toCommunityTx;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.toCommunityTx);
                                    if (textView3 != null) {
                                        i10 = R.id.toFightRl;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.toFightRl);
                                        if (textView4 != null) {
                                            return new ar0((LinearLayout) rootView, hListView, linearLayout, gridView, relativeLayout, textView, textView2, linearLayout2, textView3, textView4);
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
    public static ar0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35991b;
    }

    @NonNull
    public static ar0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.part_discovery_headerv2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
