package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class is0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f39918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f39919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39925j;

    private is0(@NonNull LinearLayout rootView, @NonNull EditText gameEd, @NonNull XListView2 listview, @NonNull LinearLayout llBuild, @NonNull LinearLayout llDismiss, @NonNull LinearLayout llOur, @NonNull LinearLayout llShowFinish, @NonNull TextView tvFinish, @NonNull TextView tvShowTips) {
        this.f39917b = rootView;
        this.f39918c = gameEd;
        this.f39919d = listview;
        this.f39920e = llBuild;
        this.f39921f = llDismiss;
        this.f39922g = llOur;
        this.f39923h = llShowFinish;
        this.f39924i = tvFinish;
        this.f39925j = tvShowTips;
    }

    @NonNull
    public static is0 bind(@NonNull View rootView) {
        int i10 = R.id.game_ed;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.game_ed);
        if (editText != null) {
            i10 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (xListView2 != null) {
                i10 = R.id.ll_build;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_build);
                if (linearLayout != null) {
                    i10 = R.id.ll_dismiss;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_dismiss);
                    if (linearLayout2 != null) {
                        i10 = R.id.ll_our;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_our);
                        if (linearLayout3 != null) {
                            i10 = R.id.ll_show_finish;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_show_finish);
                            if (linearLayout4 != null) {
                                i10 = R.id.tv_finish;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_finish);
                                if (textView != null) {
                                    i10 = R.id.tv_show_tips;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_tips);
                                    if (textView2 != null) {
                                        return new is0((LinearLayout) rootView, editText, xListView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, textView2);
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
    public static is0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39917b;
    }

    @NonNull
    public static is0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.popo_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
