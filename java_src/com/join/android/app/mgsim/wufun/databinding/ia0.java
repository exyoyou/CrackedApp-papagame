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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ia0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39760f;

    private ia0(@NonNull LinearLayout rootView, @NonNull TextView tvCoin, @NonNull TextView tvDiamond, @NonNull TextView tvFreeTime, @NonNull TextView tvVipTime) {
        this.f39756b = rootView;
        this.f39757c = tvCoin;
        this.f39758d = tvDiamond;
        this.f39759e = tvFreeTime;
        this.f39760f = tvVipTime;
    }

    @NonNull
    public static ia0 bind(@NonNull View rootView) {
        int i10 = R.id.tv_coin;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_coin);
        if (textView != null) {
            i10 = R.id.tv_diamond;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_diamond);
            if (textView2 != null) {
                i10 = R.id.tv_free_time;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_free_time);
                if (textView3 != null) {
                    i10 = R.id.tv_vip_time;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_vip_time);
                    if (textView4 != null) {
                        return new ia0((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ia0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39756b;
    }

    @NonNull
    public static ia0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_remain_time_pop, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
