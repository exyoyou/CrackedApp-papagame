package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class be implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ListView f36349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36354j;

    private be(@NonNull RelativeLayout rootView, @NonNull ImageView iv1, @NonNull LinearLayout ivClose, @NonNull ListView list, @NonNull ConstraintLayout noRecord, @NonNull RelativeLayout rlTop, @NonNull TextView tv1, @NonNull TextView tv2, @NonNull TextView tvTop) {
        this.f36346b = rootView;
        this.f36347c = iv1;
        this.f36348d = ivClose;
        this.f36349e = list;
        this.f36350f = noRecord;
        this.f36351g = rlTop;
        this.f36352h = tv1;
        this.f36353i = tv2;
        this.f36354j = tvTop;
    }

    @NonNull
    public static be bind(@NonNull View rootView) {
        int i10 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
        if (imageView != null) {
            i10 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (linearLayout != null) {
                i10 = R.id.list;
                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.list);
                if (listView != null) {
                    i10 = R.id.noRecord;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.noRecord);
                    if (constraintLayout != null) {
                        i10 = R.id.rl_top;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                        if (relativeLayout != null) {
                            i10 = R.id.tv1;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                            if (textView != null) {
                                i10 = R.id.tv2;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                                if (textView2 != null) {
                                    i10 = R.id.tv_top;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                                    if (textView3 != null) {
                                        return new be((RelativeLayout) rootView, imageView, linearLayout, listView, constraintLayout, relativeLayout, textView, textView2, textView3);
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
    public static be inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36346b;
    }

    @NonNull
    public static be inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_arena_create, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
