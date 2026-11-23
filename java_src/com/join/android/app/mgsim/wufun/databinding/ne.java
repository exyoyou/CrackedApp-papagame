package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ne implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f42296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42301i;

    private ne(@NonNull RelativeLayout rootView, @NonNull TextView cancle, @NonNull CheckBox checkBox, @NonNull ImageView close, @NonNull TextView content, @NonNull TextView ok, @NonNull TextView title, @NonNull TextView tvVip) {
        this.f42294b = rootView;
        this.f42295c = cancle;
        this.f42296d = checkBox;
        this.f42297e = close;
        this.f42298f = content;
        this.f42299g = ok;
        this.f42300h = title;
        this.f42301i = tvVip;
    }

    @NonNull
    public static ne bind(@NonNull View rootView) {
        int i10 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancle);
        if (textView != null) {
            i10 = R.id.checkBox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBox);
            if (checkBox != null) {
                i10 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                if (imageView != null) {
                    i10 = R.id.content;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
                    if (textView2 != null) {
                        i10 = R.id.ok;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                        if (textView3 != null) {
                            i10 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView4 != null) {
                                i10 = R.id.tv_vip;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_vip);
                                if (textView5 != null) {
                                    return new ne((RelativeLayout) rootView, textView, checkBox, imageView, textView2, textView3, textView4, textView5);
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
    public static ne inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42294b;
    }

    @NonNull
    public static ne inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_notice, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
