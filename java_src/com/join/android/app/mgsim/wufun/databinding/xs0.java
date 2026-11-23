package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final GridView f47423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47425g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47427i;

    private xs0(@NonNull LinearLayout rootView, @NonNull ImageView close, @NonNull Button downloadButn, @NonNull GridView gridviewShowRecomed, @NonNull LinearLayout recomWifiLayout, @NonNull TextView textView13, @NonNull TextView textView15, @NonNull TextView titleTextview) {
        this.f47420b = rootView;
        this.f47421c = close;
        this.f47422d = downloadButn;
        this.f47423e = gridviewShowRecomed;
        this.f47424f = recomWifiLayout;
        this.f47425g = textView13;
        this.f47426h = textView15;
        this.f47427i = titleTextview;
    }

    @NonNull
    public static xs0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.downloadButn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.downloadButn);
            if (button != null) {
                i10 = R.id.gridviewShowRecomed;
                GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.gridviewShowRecomed);
                if (gridView != null) {
                    i10 = R.id.recomWifiLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.recomWifiLayout);
                    if (linearLayout != null) {
                        i10 = R.id.textView13;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView13);
                        if (textView != null) {
                            i10 = R.id.textView15;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView15);
                            if (textView2 != null) {
                                i10 = R.id.titleTextview;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleTextview);
                                if (textView3 != null) {
                                    return new xs0((LinearLayout) rootView, imageView, button, gridView, linearLayout, textView, textView2, textView3);
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
    public static xs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47420b;
    }

    @NonNull
    public static xs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.recom_wifi_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
