package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class se0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NumberPicker f44768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NumberPicker f44769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final NumberPicker f44770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44771f;

    private se0(@NonNull LinearLayout rootView, @NonNull NumberPicker cityWheel, @NonNull NumberPicker districtWheel, @NonNull NumberPicker provinceWheel, @NonNull TextView setting) {
        this.f44767b = rootView;
        this.f44768c = cityWheel;
        this.f44769d = districtWheel;
        this.f44770e = provinceWheel;
        this.f44771f = setting;
    }

    @NonNull
    public static se0 bind(@NonNull View rootView) {
        int i10 = R.id.city_wheel;
        NumberPicker numberPicker = (NumberPicker) ViewBindings.findChildViewById(rootView, R.id.city_wheel);
        if (numberPicker != null) {
            i10 = R.id.district_wheel;
            NumberPicker numberPicker2 = (NumberPicker) ViewBindings.findChildViewById(rootView, R.id.district_wheel);
            if (numberPicker2 != null) {
                i10 = R.id.province_wheel;
                NumberPicker numberPicker3 = (NumberPicker) ViewBindings.findChildViewById(rootView, R.id.province_wheel);
                if (numberPicker3 != null) {
                    i10 = R.id.setting;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting);
                    if (textView != null) {
                        return new se0((LinearLayout) rootView, numberPicker, numberPicker2, numberPicker3, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static se0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44767b;
    }

    @NonNull
    public static se0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.luckaddress_filter_bottom_operate, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
