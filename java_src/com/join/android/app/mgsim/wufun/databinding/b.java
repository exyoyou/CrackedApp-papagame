package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f36120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f36123h;

    private b(@NonNull RelativeLayout rootView, @NonNull ImageView backButn, @NonNull View backView, @NonNull FrameLayout childLayout, @NonNull TextView titleText, @NonNull LinearLayout titlelayout, @NonNull View view2) {
        this.f36117b = rootView;
        this.f36118c = backButn;
        this.f36119d = backView;
        this.f36120e = childLayout;
        this.f36121f = titleText;
        this.f36122g = titlelayout;
        this.f36123h = view2;
    }

    @NonNull
    public static b bind(@NonNull View rootView) {
        int i10 = R.id.backButn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backButn);
        if (imageView != null) {
            i10 = R.id.backView;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.backView);
            if (viewFindChildViewById != null) {
                i10 = R.id.childLayout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.childLayout);
                if (frameLayout != null) {
                    i10 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                    if (textView != null) {
                        i10 = R.id.titlelayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titlelayout);
                        if (linearLayout != null) {
                            i10 = R.id.view2;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view2);
                            if (viewFindChildViewById2 != null) {
                                return new b((RelativeLayout) rootView, imageView, viewFindChildViewById, frameLayout, textView, linearLayout, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36117b;
    }

    @NonNull
    public static b inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.account_base_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
