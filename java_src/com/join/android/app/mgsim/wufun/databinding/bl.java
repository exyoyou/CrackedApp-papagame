package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class bl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XListView2 f36439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36442j;

    private bl(@NonNull LinearLayout rootView, @NonNull ImageView ivRedbroadcast, @NonNull LinearLayout llLookdetail, @NonNull LinearLayout llNodata, @NonNull PtrClassicFrameLayout myswip, @NonNull XListView2 rcyRecommed, @NonNull RelativeLayout rlShowtitleBc, @NonNull TextView tvShowNodata, @NonNull TextView tvShowtitleBc) {
        this.f36434b = rootView;
        this.f36435c = ivRedbroadcast;
        this.f36436d = llLookdetail;
        this.f36437e = llNodata;
        this.f36438f = myswip;
        this.f36439g = rcyRecommed;
        this.f36440h = rlShowtitleBc;
        this.f36441i = tvShowNodata;
        this.f36442j = tvShowtitleBc;
    }

    @NonNull
    public static bl bind(@NonNull View rootView) {
        int i10 = R.id.iv_redbroadcast;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_redbroadcast);
        if (imageView != null) {
            i10 = R.id.ll_lookdetail;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_lookdetail);
            if (linearLayout != null) {
                i10 = R.id.ll_nodata;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_nodata);
                if (linearLayout2 != null) {
                    i10 = R.id.myswip;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.myswip);
                    if (ptrClassicFrameLayout != null) {
                        i10 = R.id.rcy_recommed;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rcy_recommed);
                        if (xListView2 != null) {
                            i10 = R.id.rl_showtitle_bc;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_showtitle_bc);
                            if (relativeLayout != null) {
                                i10 = R.id.tv_show_nodata;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_nodata);
                                if (textView != null) {
                                    i10 = R.id.tv_showtitle_bc;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_showtitle_bc);
                                    if (textView2 != null) {
                                        return new bl((LinearLayout) rootView, imageView, linearLayout, linearLayout2, ptrClassicFrameLayout, xListView2, relativeLayout, textView, textView2);
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
    public static bl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36434b;
    }

    @NonNull
    public static bl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_cloud_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
