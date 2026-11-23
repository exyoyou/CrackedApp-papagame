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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class wy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f47014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47016f;

    private wy(@NonNull LinearLayout rootView_, @NonNull TextView appname1, @NonNull DownloadNormalView dvView, @NonNull SimpleDraweeView image1, @NonNull LinearLayout rootView) {
        this.f47012b = rootView_;
        this.f47013c = appname1;
        this.f47014d = dvView;
        this.f47015e = image1;
        this.f47016f = rootView;
    }

    @NonNull
    public static wy bind(@NonNull View rootView) {
        int i10 = R.id.appname1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname1);
        if (textView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.image1;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image1);
                if (simpleDraweeView != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    return new wy(linearLayout, textView, downloadNormalView, simpleDraweeView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47012b;
    }

    @NonNull
    public static wy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_game_horizontal, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
