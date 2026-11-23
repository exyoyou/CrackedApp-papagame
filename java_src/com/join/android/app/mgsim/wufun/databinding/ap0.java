package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ap0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35956g;

    private ap0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout relativeLayout3, @NonNull TextView showDetail, @NonNull TextView textView31, @NonNull TextView tvTime, @NonNull TextView tvTitle) {
        this.f35951b = rootView;
        this.f35952c = relativeLayout3;
        this.f35953d = showDetail;
        this.f35954e = textView31;
        this.f35955f = tvTime;
        this.f35956g = tvTitle;
    }

    @NonNull
    public static ap0 bind(@NonNull View rootView) {
        int i10 = R.id.relativeLayout3;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout3);
        if (relativeLayout != null) {
            i10 = R.id.showDetail;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.showDetail);
            if (textView != null) {
                i10 = R.id.textView31;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView31);
                if (textView2 != null) {
                    i10 = R.id.tv_time;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                    if (textView3 != null) {
                        i10 = R.id.tv_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                        if (textView4 != null) {
                            return new ap0((RelativeLayout) rootView, relativeLayout, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ap0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35951b;
    }

    @NonNull
    public static ap0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.notice_fragment_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
