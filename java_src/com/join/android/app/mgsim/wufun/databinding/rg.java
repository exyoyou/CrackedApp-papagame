package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NoScrollViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class rg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final NoScrollViewPager f44347i;

    private rg(@NonNull RelativeLayout rootView, @NonNull Button localGameThreeBt, @NonNull TextView localGameThreeContentTv, @NonNull TextView localGameThreeNotTv, @NonNull TextView localGameThreeNumTv, @NonNull TextView localGameThreeStatuTv, @NonNull TextView localGameThreeTitleTv, @NonNull NoScrollViewPager localGameThreeViewPager) {
        this.f44340b = rootView;
        this.f44341c = localGameThreeBt;
        this.f44342d = localGameThreeContentTv;
        this.f44343e = localGameThreeNotTv;
        this.f44344f = localGameThreeNumTv;
        this.f44345g = localGameThreeStatuTv;
        this.f44346h = localGameThreeTitleTv;
        this.f44347i = localGameThreeViewPager;
    }

    @NonNull
    public static rg bind(@NonNull View rootView) {
        int i10 = R.id.localGameThreeBt;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.localGameThreeBt);
        if (button != null) {
            i10 = R.id.localGameThreeContentTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameThreeContentTv);
            if (textView != null) {
                i10 = R.id.localGameThreeNotTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameThreeNotTv);
                if (textView2 != null) {
                    i10 = R.id.localGameThreeNumTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameThreeNumTv);
                    if (textView3 != null) {
                        i10 = R.id.localGameThreeStatuTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameThreeStatuTv);
                        if (textView4 != null) {
                            i10 = R.id.localGameThreeTitleTv;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameThreeTitleTv);
                            if (textView5 != null) {
                                i10 = R.id.localGameThreeViewPager;
                                NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(rootView, R.id.localGameThreeViewPager);
                                if (noScrollViewPager != null) {
                                    return new rg((RelativeLayout) rootView, button, textView, textView2, textView3, textView4, textView5, noScrollViewPager);
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
    public static rg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44340b;
    }

    @NonNull
    public static rg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_localgame_three_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
