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
public final class ek0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f37997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37999j;

    private ek0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView informationImage, @NonNull LinearLayout informationTitle, @NonNull TextView informationTv, @NonNull LinearLayout layoutInformation, @NonNull LinearLayout layoutTop, @NonNull View lineH, @NonNull TextView messageType, @NonNull TextView pubtime) {
        this.f37991b = rootView;
        this.f37992c = informationImage;
        this.f37993d = informationTitle;
        this.f37994e = informationTv;
        this.f37995f = layoutInformation;
        this.f37996g = layoutTop;
        this.f37997h = lineH;
        this.f37998i = messageType;
        this.f37999j = pubtime;
    }

    @NonNull
    public static ek0 bind(@NonNull View rootView) {
        int i10 = R.id.informationImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.informationImage);
        if (simpleDraweeView != null) {
            i10 = R.id.informationTitle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.informationTitle);
            if (linearLayout != null) {
                i10 = R.id.informationTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.informationTv);
                if (textView != null) {
                    i10 = R.id.layoutInformation;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutInformation);
                    if (linearLayout2 != null) {
                        i10 = R.id.layoutTop;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                        if (linearLayout3 != null) {
                            i10 = R.id.line_h;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_h);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.messageType;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType);
                                if (textView2 != null) {
                                    i10 = R.id.pubtime;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pubtime);
                                    if (textView3 != null) {
                                        return new ek0((LinearLayout) rootView, simpleDraweeView, linearLayout, textView, linearLayout2, linearLayout3, viewFindChildViewById, textView2, textView3);
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
    public static ek0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37991b;
    }

    @NonNull
    public static ek0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_infomation_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
