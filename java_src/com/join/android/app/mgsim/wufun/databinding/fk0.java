package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38410g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f38411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38412i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38413j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38414k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38415l;

    private fk0(@NonNull LinearLayout rootView, @NonNull ImageView imageView16, @NonNull ImageView imageView17, @NonNull SimpleDraweeView informationImage, @NonNull TextView informationTv, @NonNull LinearLayout layoutInformation, @NonNull View line, @NonNull TextView messageType, @NonNull TextView pubtime, @NonNull TextView pv, @NonNull TextView uv) {
        this.f38405b = rootView;
        this.f38406c = imageView16;
        this.f38407d = imageView17;
        this.f38408e = informationImage;
        this.f38409f = informationTv;
        this.f38410g = layoutInformation;
        this.f38411h = line;
        this.f38412i = messageType;
        this.f38413j = pubtime;
        this.f38414k = pv;
        this.f38415l = uv;
    }

    @NonNull
    public static fk0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView16;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView16);
        if (imageView != null) {
            i10 = R.id.imageView17;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView17);
            if (imageView2 != null) {
                i10 = R.id.informationImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.informationImage);
                if (simpleDraweeView != null) {
                    i10 = R.id.informationTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.informationTv);
                    if (textView != null) {
                        i10 = R.id.layoutInformation;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutInformation);
                        if (linearLayout != null) {
                            i10 = R.id.line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.messageType;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType);
                                if (textView2 != null) {
                                    i10 = R.id.pubtime;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pubtime);
                                    if (textView3 != null) {
                                        i10 = R.id.pv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pv);
                                        if (textView4 != null) {
                                            i10 = R.id.uv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.uv);
                                            if (textView5 != null) {
                                                return new fk0((LinearLayout) rootView, imageView, imageView2, simpleDraweeView, textView, linearLayout, viewFindChildViewById, textView2, textView3, textView4, textView5);
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
    public static fk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38405b;
    }

    @NonNull
    public static fk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_infomation_item_top, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
