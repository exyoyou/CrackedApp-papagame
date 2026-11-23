package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class o8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42719i;

    private o8(@NonNull RelativeLayout rootView, @NonNull TextView desc, @NonNull TextView from, @NonNull TextView fromFlag, @NonNull SimpleDraweeView icon, @NonNull LinearLayout ll, @NonNull TextView name, @NonNull TextView rank) {
        this.f42712b = rootView;
        this.f42713c = desc;
        this.f42714d = from;
        this.f42715e = fromFlag;
        this.f42716f = icon;
        this.f42717g = ll;
        this.f42718h = name;
        this.f42719i = rank;
    }

    @NonNull
    public static o8 bind(@NonNull View rootView) {
        int i10 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
        if (textView != null) {
            i10 = R.id.from;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.from);
            if (textView2 != null) {
                i10 = R.id.fromFlag;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fromFlag);
                if (textView3 != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.ll;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll);
                        if (linearLayout != null) {
                            i10 = R.id.name;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                            if (textView4 != null) {
                                i10 = R.id.rank;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rank);
                                if (textView5 != null) {
                                    return new o8((RelativeLayout) rootView, textView, textView2, textView3, simpleDraweeView, linearLayout, textView4, textView5);
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
    public static o8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42712b;
    }

    @NonNull
    public static o8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.chioce_item_day_game_footer2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
