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
public final class jl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f40280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f40281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40282f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40283g;

    private jl(@NonNull LinearLayout rootView, @NonNull LinearLayout ivNome, @NonNull XListView2 listview, @NonNull PtrClassicFrameLayout myswip, @NonNull TextView redTips, @NonNull LinearLayout thumbslayout) {
        this.f40278b = rootView;
        this.f40279c = ivNome;
        this.f40280d = listview;
        this.f40281e = myswip;
        this.f40282f = redTips;
        this.f40283g = thumbslayout;
    }

    @NonNull
    public static jl bind(@NonNull View rootView) {
        int i10 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_nome);
        if (linearLayout != null) {
            i10 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (xListView2 != null) {
                i10 = R.id.myswip;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.myswip);
                if (ptrClassicFrameLayout != null) {
                    i10 = R.id.redTips;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.redTips);
                    if (textView != null) {
                        i10 = R.id.thumbslayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.thumbslayout);
                        if (linearLayout2 != null) {
                            return new jl((LinearLayout) rootView, linearLayout, xListView2, ptrClassicFrameLayout, textView, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40278b;
    }

    @NonNull
    public static jl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_communtity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
