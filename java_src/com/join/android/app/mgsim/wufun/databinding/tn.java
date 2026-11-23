package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class tn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f45341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f45342g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f45344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45346k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45347l;

    private tn(@NonNull LinearLayout rootView, @NonNull FrameLayout fragmentLayout, @NonNull FrameLayout friendLayout, @NonNull LinearLayout hitTempLl, @NonNull XRecyclerView listview, @NonNull PtrClassicFrameLayout llMain, @NonNull LinearLayout myDragImageView, @NonNull View redPoint, @NonNull LinearLayout searchBack, @NonNull LinearLayout selecterLayout, @NonNull LinearLayout title) {
        this.f45337b = rootView;
        this.f45338c = fragmentLayout;
        this.f45339d = friendLayout;
        this.f45340e = hitTempLl;
        this.f45341f = listview;
        this.f45342g = llMain;
        this.f45343h = myDragImageView;
        this.f45344i = redPoint;
        this.f45345j = searchBack;
        this.f45346k = selecterLayout;
        this.f45347l = title;
    }

    @NonNull
    public static tn bind(@NonNull View rootView) {
        int i10 = R.id.fragmentLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fragmentLayout);
        if (frameLayout != null) {
            i10 = R.id.friendLayout;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.friendLayout);
            if (frameLayout2 != null) {
                i10 = R.id.hit_temp_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.hit_temp_ll);
                if (linearLayout != null) {
                    i10 = R.id.listview;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.listview);
                    if (xRecyclerView != null) {
                        i10 = R.id.ll_main;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.ll_main);
                        if (ptrClassicFrameLayout != null) {
                            i10 = R.id.myDragImageView;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.myDragImageView);
                            if (linearLayout2 != null) {
                                i10 = R.id.redPoint;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.redPoint);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.searchBack;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchBack);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.selecterLayout;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.selecterLayout);
                                        if (linearLayout4 != null) {
                                            i10 = R.id.title;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                                            if (linearLayout5 != null) {
                                                return new tn((LinearLayout) rootView, frameLayout, frameLayout2, linearLayout, xRecyclerView, ptrClassicFrameLayout, linearLayout2, viewFindChildViewById, linearLayout3, linearLayout4, linearLayout5);
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
    public static tn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45337b;
    }

    @NonNull
    public static tn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_new_arenamain, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
