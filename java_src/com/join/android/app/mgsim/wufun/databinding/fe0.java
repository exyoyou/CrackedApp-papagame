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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class fe0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f38366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XListView2 f38368g;

    private fe0(@NonNull LinearLayout rootView, @NonNull TextView allCharm, @NonNull TextView hasUsedMoney, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull TextView noData, @NonNull XListView2 rankListView) {
        this.f38363b = rootView;
        this.f38364c = allCharm;
        this.f38365d = hasUsedMoney;
        this.f38366e = mPtrFrame;
        this.f38367f = noData;
        this.f38368g = rankListView;
    }

    @NonNull
    public static fe0 bind(@NonNull View rootView) {
        int i10 = R.id.allCharm;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.allCharm);
        if (textView != null) {
            i10 = R.id.hasUsedMoney;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hasUsedMoney);
            if (textView2 != null) {
                i10 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    i10 = R.id.noData;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.noData);
                    if (textView3 != null) {
                        i10 = R.id.rankListView;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rankListView);
                        if (xListView2 != null) {
                            return new fe0((LinearLayout) rootView, textView, textView2, ptrClassicFrameLayout, textView3, xListView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fe0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38363b;
    }

    @NonNull
    public static fe0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_pay_info_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
