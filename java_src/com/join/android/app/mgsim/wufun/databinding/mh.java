package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GridView f41884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41885e;

    private mh(@NonNull RelativeLayout rootView, @NonNull LinearLayout ivClose, @NonNull GridView mGridView, @NonNull TextView tvCurrentCopper) {
        this.f41882b = rootView;
        this.f41883c = ivClose;
        this.f41884d = mGridView;
        this.f41885e = tvCurrentCopper;
    }

    @NonNull
    public static mh bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (linearLayout != null) {
            i10 = R.id.mGridView;
            GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.mGridView);
            if (gridView != null) {
                i10 = R.id.tv_current_copper;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_current_copper);
                if (textView != null) {
                    return new mh((RelativeLayout) rootView, linearLayout, gridView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41882b;
    }

    @NonNull
    public static mh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_posting_select_coins, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
