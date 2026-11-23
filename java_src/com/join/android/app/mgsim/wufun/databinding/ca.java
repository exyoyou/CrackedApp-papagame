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
public final class ca implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f36825g;

    private ca(@NonNull LinearLayout rootView, @NonNull TextView deleteCloud, @NonNull LinearLayout main, @NonNull TextView reDownload, @NonNull View trangleBottom, @NonNull View trangleTop) {
        this.f36820b = rootView;
        this.f36821c = deleteCloud;
        this.f36822d = main;
        this.f36823e = reDownload;
        this.f36824f = trangleBottom;
        this.f36825g = trangleTop;
    }

    @NonNull
    public static ca bind(@NonNull View rootView) {
        int i10 = R.id.deleteCloud;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.deleteCloud);
        if (textView != null) {
            i10 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
            if (linearLayout != null) {
                i10 = R.id.reDownload;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.reDownload);
                if (textView2 != null) {
                    i10 = R.id.trangleBottom;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.trangleBottom);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.trangleTop;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.trangleTop);
                        if (viewFindChildViewById2 != null) {
                            return new ca((LinearLayout) rootView, textView, linearLayout, textView2, viewFindChildViewById, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ca inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36820b;
    }

    @NonNull
    public static ca inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_archive_more_pop, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
