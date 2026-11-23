package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class vt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46457g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46459i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46460j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46461k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46462l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46463m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46464n;

    private vt0(@NonNull RelativeLayout rootView, @NonNull LinearLayout failMsg, @NonNull TextView messageHeader, @NonNull LinearLayout messageLayout, @NonNull ImageView reloadingHeader, @NonNull LinearLayout searchHeaderLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView tv1, @NonNull TextView tv2, @NonNull TextView tv3, @NonNull TextView tv4, @NonNull TextView tvMore) {
        this.f46452b = rootView;
        this.f46453c = failMsg;
        this.f46454d = messageHeader;
        this.f46455e = messageLayout;
        this.f46456f = reloadingHeader;
        this.f46457g = searchHeaderLayout;
        this.f46458h = textView;
        this.f46459i = textView2;
        this.f46460j = tv1;
        this.f46461k = tv2;
        this.f46462l = tv3;
        this.f46463m = tv4;
        this.f46464n = tvMore;
    }

    @NonNull
    public static vt0 bind(@NonNull View rootView) {
        int i10 = R.id.failMsg;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.failMsg);
        if (linearLayout != null) {
            i10 = R.id.messageHeader;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageHeader);
            if (textView != null) {
                i10 = R.id.messageLayout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.messageLayout);
                if (linearLayout2 != null) {
                    i10 = R.id.reloadingHeader;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.reloadingHeader);
                    if (imageView != null) {
                        i10 = R.id.searchHeaderLayout;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchHeaderLayout);
                        if (linearLayout3 != null) {
                            i10 = R.id.textView;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                            if (textView2 != null) {
                                i10 = R.id.textView2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                if (textView3 != null) {
                                    i10 = R.id.tv1;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                                    if (textView4 != null) {
                                        i10 = R.id.tv2;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                                        if (textView5 != null) {
                                            i10 = R.id.tv3;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv3);
                                            if (textView6 != null) {
                                                i10 = R.id.tv4;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv4);
                                                if (textView7 != null) {
                                                    i10 = R.id.tvMore;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvMore);
                                                    if (textView8 != null) {
                                                        return new vt0((RelativeLayout) rootView, linearLayout, textView, linearLayout2, imageView, linearLayout3, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static vt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46452b;
    }

    @NonNull
    public static vt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_failed_header1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
