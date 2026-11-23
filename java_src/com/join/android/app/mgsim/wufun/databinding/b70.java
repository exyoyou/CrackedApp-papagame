package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f36262g;

    private b70(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView standAloneCompanyIv, @NonNull RelativeLayout standAloneCompanyRootRl, @NonNull TextView standAloneCompanyTv, @NonNull View standAloneLeftVi, @NonNull View standAloneRightVi) {
        this.f36257b = rootView;
        this.f36258c = standAloneCompanyIv;
        this.f36259d = standAloneCompanyRootRl;
        this.f36260e = standAloneCompanyTv;
        this.f36261f = standAloneLeftVi;
        this.f36262g = standAloneRightVi;
    }

    @NonNull
    public static b70 bind(@NonNull View rootView) {
        int i10 = R.id.standAloneCompanyIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.standAloneCompanyIv);
        if (simpleDraweeView != null) {
            i10 = R.id.standAloneCompanyRootRl;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.standAloneCompanyRootRl);
            if (relativeLayout != null) {
                i10 = R.id.standAloneCompanyTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.standAloneCompanyTv);
                if (textView != null) {
                    i10 = R.id.standAloneLeftVi;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.standAloneLeftVi);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.standAloneRightVi;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.standAloneRightVi);
                        if (viewFindChildViewById2 != null) {
                            return new b70((LinearLayout) rootView, simpleDraweeView, relativeLayout, textView, viewFindChildViewById, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36257b;
    }

    @NonNull
    public static b70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_standalone_company_item_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
