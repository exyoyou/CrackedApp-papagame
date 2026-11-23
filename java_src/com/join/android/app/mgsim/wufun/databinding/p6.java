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
import com.join.mgps.customview.ClouldItemView2;

/* JADX INFO: loaded from: classes4.dex */
public final class p6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ClouldItemView2 f43250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43253f;

    private p6(@NonNull LinearLayout rootView, @NonNull ClouldItemView2 coulditem, @NonNull LinearLayout llShow, @NonNull TextView tvTodayId, @NonNull TextView tvZongId) {
        this.f43249b = rootView;
        this.f43250c = coulditem;
        this.f43251d = llShow;
        this.f43252e = tvTodayId;
        this.f43253f = tvZongId;
    }

    @NonNull
    public static p6 bind(@NonNull View rootView) {
        int i10 = R.id.coulditem;
        ClouldItemView2 clouldItemView2 = (ClouldItemView2) ViewBindings.findChildViewById(rootView, R.id.coulditem);
        if (clouldItemView2 != null) {
            i10 = R.id.ll_show;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_show);
            if (linearLayout != null) {
                i10 = R.id.tv_today_id;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_today_id);
                if (textView != null) {
                    i10 = R.id.tv_zong_id;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_zong_id);
                    if (textView2 != null) {
                        return new p6((LinearLayout) rootView, clouldItemView2, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43249b;
    }

    @NonNull
    public static p6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.archiveshopfragmet_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
