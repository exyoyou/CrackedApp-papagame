package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HandShankAdView;

/* JADX INFO: loaded from: classes4.dex */
public final class ru implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f44493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HandShankAdView f44494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44495f;

    private ru(@NonNull LinearLayout rootView, @NonNull FrameLayout handshankTipLay, @NonNull ListView listview, @NonNull HandShankAdView mAdView, @NonNull TextView papahandList) {
        this.f44491b = rootView;
        this.f44492c = handshankTipLay;
        this.f44493d = listview;
        this.f44494e = mAdView;
        this.f44495f = papahandList;
    }

    @NonNull
    public static ru bind(@NonNull View rootView) {
        int i10 = R.id.handshank_tip_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.handshank_tip_lay);
        if (frameLayout != null) {
            i10 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (listView != null) {
                i10 = R.id.mAdView;
                HandShankAdView handShankAdView = (HandShankAdView) ViewBindings.findChildViewById(rootView, R.id.mAdView);
                if (handShankAdView != null) {
                    i10 = R.id.papahandList;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.papahandList);
                    if (textView != null) {
                        return new ru((LinearLayout) rootView, frameLayout, listView, handShankAdView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ru inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44491b;
    }

    @NonNull
    public static ru inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_layout_yes, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
