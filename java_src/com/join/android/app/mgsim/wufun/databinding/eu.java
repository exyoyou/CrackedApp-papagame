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

/* JADX INFO: loaded from: classes4.dex */
public final class eu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38103g;

    private eu(@NonNull LinearLayout rootView, @NonNull TextView mingci, @NonNull TextView shengchang, @NonNull TextView shenglv, @NonNull SimpleDraweeView userIcon, @NonNull TextView zhandouli) {
        this.f38098b = rootView;
        this.f38099c = mingci;
        this.f38100d = shengchang;
        this.f38101e = shenglv;
        this.f38102f = userIcon;
        this.f38103g = zhandouli;
    }

    @NonNull
    public static eu bind(@NonNull View rootView) {
        int i10 = R.id.mingci;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mingci);
        if (textView != null) {
            i10 = R.id.shengchang;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shengchang);
            if (textView2 != null) {
                i10 = R.id.shenglv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shenglv);
                if (textView3 != null) {
                    i10 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.zhandouli;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.zhandouli);
                        if (textView4 != null) {
                            return new eu((LinearLayout) rootView, textView, textView2, textView3, simpleDraweeView, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static eu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38098b;
    }

    @NonNull
    public static eu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameworld_bang_itemlayout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
