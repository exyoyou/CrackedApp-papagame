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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ck0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36972f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36973g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f36974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36976j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f36977k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36978l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36979m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36980n;

    private ck0(@NonNull RelativeLayout rootView, @NonNull TextView getGiftTextView, @NonNull TextView giftContent, @NonNull TextView giftCount, @NonNull SimpleDraweeView giftIcon, @NonNull TextView giftName, @NonNull ImageView giftPackageSwich, @NonNull TextView giftSurplus, @NonNull TextView giftSurplusTitle, @NonNull View itemLine, @NonNull LinearLayout layoutContent, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout rightButnLayout) {
        this.f36968b = rootView;
        this.f36969c = getGiftTextView;
        this.f36970d = giftContent;
        this.f36971e = giftCount;
        this.f36972f = giftIcon;
        this.f36973g = giftName;
        this.f36974h = giftPackageSwich;
        this.f36975i = giftSurplus;
        this.f36976j = giftSurplusTitle;
        this.f36977k = itemLine;
        this.f36978l = layoutContent;
        this.f36979m = linearLayout;
        this.f36980n = rightButnLayout;
    }

    @NonNull
    public static ck0 bind(@NonNull View rootView) {
        int i10 = R.id.getGiftTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.getGiftTextView);
        if (textView != null) {
            i10 = R.id.giftContent;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftContent);
            if (textView2 != null) {
                i10 = R.id.giftCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftCount);
                if (textView3 != null) {
                    i10 = R.id.giftIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.giftName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftName);
                        if (textView4 != null) {
                            i10 = R.id.giftPackageSwich;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                            if (imageView != null) {
                                i10 = R.id.giftSurplus;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftSurplus);
                                if (textView5 != null) {
                                    i10 = R.id.giftSurplusTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftSurplusTitle);
                                    if (textView6 != null) {
                                        i10 = R.id.itemLine;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.itemLine);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.layoutContent;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutContent);
                                            if (linearLayout != null) {
                                                i10 = R.id.linearLayout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.rightButnLayout;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rightButnLayout);
                                                    if (relativeLayout != null) {
                                                        return new ck0((RelativeLayout) rootView, textView, textView2, textView3, simpleDraweeView, textView4, imageView, textView5, textView6, viewFindChildViewById, linearLayout, linearLayout2, relativeLayout);
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
    public static ck0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36968b;
    }

    @NonNull
    public static ck0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_gifts_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
