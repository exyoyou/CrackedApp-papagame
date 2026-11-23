package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class p3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f43207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43211g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43213i;

    private p3(@NonNull LinearLayout rootView, @NonNull Button backButn, @NonNull ImageView imageSuccessOrFailed, @NonNull TextView orderid, @NonNull TextView pabiNumber, @NonNull LinearLayout paySuccess, @NonNull TextView userName, @NonNull TextView vipRecharge) {
        this.f43206b = rootView;
        this.f43207c = backButn;
        this.f43208d = imageSuccessOrFailed;
        this.f43209e = orderid;
        this.f43210f = pabiNumber;
        this.f43211g = paySuccess;
        this.f43212h = userName;
        this.f43213i = vipRecharge;
    }

    @NonNull
    public static p3 bind(@NonNull View rootView) {
        int i10 = R.id.backButn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.backButn);
        if (button != null) {
            i10 = R.id.imageSuccessOrFailed;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageSuccessOrFailed);
            if (imageView != null) {
                i10 = R.id.orderid;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.orderid);
                if (textView != null) {
                    i10 = R.id.pabiNumber;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pabiNumber);
                    if (textView2 != null) {
                        i10 = R.id.paySuccess;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.paySuccess);
                        if (linearLayout != null) {
                            i10 = R.id.userName;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                            if (textView3 != null) {
                                i10 = R.id.vipRecharge;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vipRecharge);
                                if (textView4 != null) {
                                    return new p3((LinearLayout) rootView, button, imageView, textView, textView2, linearLayout, textView3, textView4);
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
    public static p3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43206b;
    }

    @NonNull
    public static p3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_papay_finish, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
