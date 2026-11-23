package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewStub f40493d;

    private k(@NonNull RelativeLayout rootView, @NonNull RelativeLayout buildQrCodeRl, @NonNull ViewStub qrCodeVstub) {
        this.f40491b = rootView;
        this.f40492c = buildQrCodeRl;
        this.f40493d = qrCodeVstub;
    }

    @NonNull
    public static k bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(rootView, R.id.qr_code_vstub);
        if (viewStub != null) {
            return new k(relativeLayout, relativeLayout, viewStub);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.qr_code_vstub)));
    }

    @NonNull
    public static k inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40491b;
    }

    @NonNull
    public static k inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_build_qr_code, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
