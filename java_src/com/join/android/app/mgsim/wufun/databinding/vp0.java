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
public final class vp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46384g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46386i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46387j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46388k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46389l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46390m;

    private vp0(@NonNull LinearLayout rootView, @NonNull TextView comment, @NonNull TextView commentNumber, @NonNull LinearLayout gamebroadcastTop, @NonNull SimpleDraweeView gamebroadcastTopImage1, @NonNull SimpleDraweeView gamebroadcastTopImage2, @NonNull SimpleDraweeView gamebroadcastTopImage3, @NonNull TextView gamebroadcastTopText1, @NonNull TextView gamebroadcastTopText2, @NonNull TextView read, @NonNull TextView readNumber, @NonNull LinearLayout topTextLayout) {
        this.f46379b = rootView;
        this.f46380c = comment;
        this.f46381d = commentNumber;
        this.f46382e = gamebroadcastTop;
        this.f46383f = gamebroadcastTopImage1;
        this.f46384g = gamebroadcastTopImage2;
        this.f46385h = gamebroadcastTopImage3;
        this.f46386i = gamebroadcastTopText1;
        this.f46387j = gamebroadcastTopText2;
        this.f46388k = read;
        this.f46389l = readNumber;
        this.f46390m = topTextLayout;
    }

    @NonNull
    public static vp0 bind(@NonNull View rootView) {
        int i10 = R.id.comment;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment);
        if (textView != null) {
            i10 = R.id.commentNumber;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.commentNumber);
            if (textView2 != null) {
                i10 = R.id.gamebroadcastTop;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTop);
                if (linearLayout != null) {
                    i10 = R.id.gamebroadcastTopImage1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage1);
                    if (simpleDraweeView != null) {
                        i10 = R.id.gamebroadcastTopImage2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage2);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.gamebroadcastTopImage3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage3);
                            if (simpleDraweeView3 != null) {
                                i10 = R.id.gamebroadcastTopText1;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopText1);
                                if (textView3 != null) {
                                    i10 = R.id.gamebroadcastTopText2;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopText2);
                                    if (textView4 != null) {
                                        i10 = R.id.read;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.read);
                                        if (textView5 != null) {
                                            i10 = R.id.readNumber;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.readNumber);
                                            if (textView6 != null) {
                                                i10 = R.id.topTextLayout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.topTextLayout);
                                                if (linearLayout2 != null) {
                                                    return new vp0((LinearLayout) rootView, textView, textView2, linearLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView3, textView4, textView5, textView6, linearLayout2);
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
    public static vp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46379b;
    }

    @NonNull
    public static vp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_broadcase_top_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
