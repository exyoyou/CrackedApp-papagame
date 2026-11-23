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
public final class j2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f40047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40049f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f40050g;

    private j2(@NonNull LinearLayout rootView, @NonNull LinearLayout ivNome, @NonNull XListView2 listview, @NonNull LinearLayout llFinsh, @NonNull LinearLayout llTitle, @NonNull PtrClassicFrameLayout myswip) {
        this.f40045b = rootView;
        this.f40046c = ivNome;
        this.f40047d = listview;
        this.f40048e = llFinsh;
        this.f40049f = llTitle;
        this.f40050g = myswip;
    }

    @NonNull
    public static j2 bind(@NonNull View rootView) {
        int i10 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_nome);
        if (linearLayout != null) {
            i10 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (xListView2 != null) {
                i10 = R.id.ll_finsh;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_finsh);
                if (linearLayout2 != null) {
                    i10 = R.id.ll_title;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_title);
                    if (linearLayout3 != null) {
                        i10 = R.id.myswip;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.myswip);
                        if (ptrClassicFrameLayout != null) {
                            return new j2((LinearLayout) rootView, linearLayout, xListView2, linearLayout2, linearLayout3, ptrClassicFrameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40045b;
    }

    @NonNull
    public static j2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_give_price, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
