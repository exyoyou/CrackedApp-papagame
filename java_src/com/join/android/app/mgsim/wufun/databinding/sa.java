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
public final class sa implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44699d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44701f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44702g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44703h;

    private sa(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView giftIcon, @NonNull TextView giftNameTime, @NonNull TextView giftNameTv, @NonNull LinearLayout layoutItem, @NonNull TextView saveCodeContent, @NonNull TextView saveCodeTv) {
        this.f44697b = rootView;
        this.f44698c = giftIcon;
        this.f44699d = giftNameTime;
        this.f44700e = giftNameTv;
        this.f44701f = layoutItem;
        this.f44702g = saveCodeContent;
        this.f44703h = saveCodeTv;
    }

    @NonNull
    public static sa bind(@NonNull View rootView) {
        int i10 = R.id.giftIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.giftNameTime;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftNameTime);
            if (textView != null) {
                i10 = R.id.giftNameTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftNameTv);
                if (textView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) rootView;
                    i10 = R.id.saveCodeContent;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeContent);
                    if (textView3 != null) {
                        i10 = R.id.saveCodeTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.saveCodeTv);
                        if (textView4 != null) {
                            return new sa(linearLayout, simpleDraweeView, textView, textView2, linearLayout, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sa inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44697b;
    }

    @NonNull
    public static sa inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.codes_box_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
