package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScratchView;

/* JADX INFO: loaded from: classes4.dex */
public final class by0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36645g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36647i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36648j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36649k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ScratchView f36650l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f36651m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36652n;

    private by0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView prizeDataImg, @NonNull LinearLayout prizeDataLayout, @NonNull TextView prizeDataName, @NonNull SimpleDraweeView prizeListImg, @NonNull LinearLayout prizeListLayout, @NonNull TextView prizeListName, @NonNull SimpleDraweeView prizeRuleImg, @NonNull LinearLayout prizeRuleLayout, @NonNull TextView prizeRuleName, @NonNull ScratchView scratch, @NonNull TextView scratchBack, @NonNull TextView todayScratchNumber) {
        this.f36640b = rootView;
        this.f36641c = prizeDataImg;
        this.f36642d = prizeDataLayout;
        this.f36643e = prizeDataName;
        this.f36644f = prizeListImg;
        this.f36645g = prizeListLayout;
        this.f36646h = prizeListName;
        this.f36647i = prizeRuleImg;
        this.f36648j = prizeRuleLayout;
        this.f36649k = prizeRuleName;
        this.f36650l = scratch;
        this.f36651m = scratchBack;
        this.f36652n = todayScratchNumber;
    }

    @NonNull
    public static by0 bind(@NonNull View rootView) {
        int i10 = R.id.prizeDataImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.prizeDataImg);
        if (simpleDraweeView != null) {
            i10 = R.id.prizeDataLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.prizeDataLayout);
            if (linearLayout != null) {
                i10 = R.id.prizeDataName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.prizeDataName);
                if (textView != null) {
                    i10 = R.id.prizeListImg;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.prizeListImg);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.prizeListLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.prizeListLayout);
                        if (linearLayout2 != null) {
                            i10 = R.id.prizeListName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.prizeListName);
                            if (textView2 != null) {
                                i10 = R.id.prizeRuleImg;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.prizeRuleImg);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.prizeRuleLayout;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.prizeRuleLayout);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.prizeRuleName;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.prizeRuleName);
                                        if (textView3 != null) {
                                            i10 = R.id.scratch;
                                            ScratchView scratchView = (ScratchView) ViewBindings.findChildViewById(rootView, R.id.scratch);
                                            if (scratchView != null) {
                                                i10 = R.id.scratchBack;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.scratchBack);
                                                if (textView4 != null) {
                                                    i10 = R.id.todayScratchNumber;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.todayScratchNumber);
                                                    if (textView5 != null) {
                                                        return new by0((LinearLayout) rootView, simpleDraweeView, linearLayout, textView, simpleDraweeView2, linearLayout2, textView2, simpleDraweeView3, linearLayout3, textView3, scratchView, textView4, textView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static by0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36640b;
    }

    @NonNull
    public static by0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_center_luckdrawl_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
