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
public final class li implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41329i;

    private li(@NonNull LinearLayout rootView, @NonNull TextView content, @NonNull TextView imagTip, @NonNull LinearLayout main, @NonNull TextView time, @NonNull SimpleDraweeView userImg, @NonNull TextView userName, @NonNull TextView vidioTip) {
        this.f41322b = rootView;
        this.f41323c = content;
        this.f41324d = imagTip;
        this.f41325e = main;
        this.f41326f = time;
        this.f41327g = userImg;
        this.f41328h = userName;
        this.f41329i = vidioTip;
    }

    @NonNull
    public static li bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.imagTip;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.imagTip);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.time;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                if (textView3 != null) {
                    i10 = R.id.userImg;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userImg);
                    if (simpleDraweeView != null) {
                        i10 = R.id.userName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                        if (textView4 != null) {
                            i10 = R.id.vidioTip;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vidioTip);
                            if (textView5 != null) {
                                return new li(linearLayout, textView, textView2, linearLayout, textView3, simpleDraweeView, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static li inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41322b;
    }

    @NonNull
    public static li inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.discover_weibo_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
