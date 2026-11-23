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
public final class vf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46243f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46244g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46247j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46248k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46249l;

    private vf0(@NonNull LinearLayout rootView, @NonNull LinearLayout extFuncBest, @NonNull TextView extFuncBestTv, @NonNull LinearLayout extFuncCancel, @NonNull LinearLayout extFuncDelete, @NonNull LinearLayout extFuncFavorite, @NonNull TextView extFuncFavoriteTv, @NonNull LinearLayout extFuncReply, @NonNull LinearLayout extFuncReport, @NonNull LinearLayout extFuncShare, @NonNull TextView extFuncShareTv) {
        this.f46239b = rootView;
        this.f46240c = extFuncBest;
        this.f46241d = extFuncBestTv;
        this.f46242e = extFuncCancel;
        this.f46243f = extFuncDelete;
        this.f46244g = extFuncFavorite;
        this.f46245h = extFuncFavoriteTv;
        this.f46246i = extFuncReply;
        this.f46247j = extFuncReport;
        this.f46248k = extFuncShare;
        this.f46249l = extFuncShareTv;
    }

    @NonNull
    public static vf0 bind(@NonNull View rootView) {
        int i10 = R.id.extFuncBest;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncBest);
        if (linearLayout != null) {
            i10 = R.id.extFuncBestTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.extFuncBestTv);
            if (textView != null) {
                i10 = R.id.extFuncCancel;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncCancel);
                if (linearLayout2 != null) {
                    i10 = R.id.extFuncDelete;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncDelete);
                    if (linearLayout3 != null) {
                        i10 = R.id.extFuncFavorite;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncFavorite);
                        if (linearLayout4 != null) {
                            i10 = R.id.extFuncFavoriteTv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.extFuncFavoriteTv);
                            if (textView2 != null) {
                                i10 = R.id.extFuncReply;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncReply);
                                if (linearLayout5 != null) {
                                    i10 = R.id.extFuncReport;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncReport);
                                    if (linearLayout6 != null) {
                                        i10 = R.id.extFuncShare;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.extFuncShare);
                                        if (linearLayout7 != null) {
                                            i10 = R.id.extFuncShareTv;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.extFuncShareTv);
                                            if (textView3 != null) {
                                                return new vf0((LinearLayout) rootView, linearLayout, textView, linearLayout2, linearLayout3, linearLayout4, textView2, linearLayout5, linearLayout6, linearLayout7, textView3);
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
    public static vf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46239b;
    }

    @NonNull
    public static vf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_ext_func_popwindow, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
