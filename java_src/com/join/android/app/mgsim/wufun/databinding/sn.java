package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class sn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f44881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f44882f;

    private sn(@NonNull LinearLayout rootView, @NonNull LinearLayout hotVoucherLayout, @NonNull LinearLayout layoutMyVoucher, @NonNull XListView2 listview, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f44878b = rootView;
        this.f44879c = hotVoucherLayout;
        this.f44880d = layoutMyVoucher;
        this.f44881e = listview;
        this.f44882f = mPtrFrame;
    }

    @NonNull
    public static sn bind(@NonNull View rootView) {
        int i10 = R.id.hotVoucherLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.hotVoucherLayout);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) rootView;
            i10 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (xListView2 != null) {
                i10 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    return new sn(linearLayout2, linearLayout, linearLayout2, xListView2, ptrClassicFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44878b;
    }

    @NonNull
    public static sn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_voucher, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
