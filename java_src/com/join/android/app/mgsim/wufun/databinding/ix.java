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
import com.join.mgps.customview.ClouldItemView3;

/* JADX INFO: loaded from: classes4.dex */
public final class ix implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ClouldItemView3 f39966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39969f;

    private ix(@NonNull LinearLayout rootView, @NonNull ClouldItemView3 coulditem, @NonNull LinearLayout llShow, @NonNull TextView tvTodayId, @NonNull TextView tvZongId) {
        this.f39965b = rootView;
        this.f39966c = coulditem;
        this.f39967d = llShow;
        this.f39968e = tvTodayId;
        this.f39969f = tvZongId;
    }

    @NonNull
    public static ix bind(@NonNull View rootView) {
        int i10 = R.id.coulditem;
        ClouldItemView3 clouldItemView3 = (ClouldItemView3) ViewBindings.findChildViewById(rootView, R.id.coulditem);
        if (clouldItemView3 != null) {
            i10 = R.id.ll_show;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_show);
            if (linearLayout != null) {
                i10 = R.id.tv_today_id;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_today_id);
                if (textView != null) {
                    i10 = R.id.tv_zong_id;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_zong_id);
                    if (textView2 != null) {
                        return new ix((LinearLayout) rootView, clouldItemView3, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ix inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39965b;
    }

    @NonNull
    public static ix inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_cloud_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
