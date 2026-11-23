package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class rq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XListView f44463f;

    private rq0(@NonNull LinearLayout rootView, @NonNull ImageView imageView8, @NonNull LinearLayout nodata, @NonNull TextView textView22, @NonNull XListView xListView) {
        this.f44459b = rootView;
        this.f44460c = imageView8;
        this.f44461d = nodata;
        this.f44462e = textView22;
        this.f44463f = xListView;
    }

    @NonNull
    public static rq0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView8);
        if (imageView != null) {
            i10 = R.id.nodata;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nodata);
            if (linearLayout != null) {
                i10 = R.id.textView22;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView22);
                if (textView != null) {
                    i10 = R.id.xListView;
                    XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.xListView);
                    if (xListView != null) {
                        return new rq0((LinearLayout) rootView, imageView, linearLayout, textView, xListView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44459b;
    }

    @NonNull
    public static rq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papapay_center_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
