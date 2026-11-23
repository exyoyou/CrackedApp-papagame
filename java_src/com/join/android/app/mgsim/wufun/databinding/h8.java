package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f39216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final EditText f39218g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39219h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ScrollView f39220i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f39221j;

    private h8(@NonNull LinearLayout rootView, @NonNull TextView getCodeTv, @NonNull TextView myAccountTv, @NonNull EditText newInputCode, @NonNull TextView newMessageTv, @NonNull EditText oldInputCode, @NonNull TextView oldMessageTv, @NonNull ScrollView scrollView, @NonNull Button settingButn) {
        this.f39213b = rootView;
        this.f39214c = getCodeTv;
        this.f39215d = myAccountTv;
        this.f39216e = newInputCode;
        this.f39217f = newMessageTv;
        this.f39218g = oldInputCode;
        this.f39219h = oldMessageTv;
        this.f39220i = scrollView;
        this.f39221j = settingButn;
    }

    @NonNull
    public static h8 bind(@NonNull View rootView) {
        int i10 = R.id.getCodeTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.getCodeTv);
        if (textView != null) {
            i10 = R.id.myAccountTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.myAccountTv);
            if (textView2 != null) {
                i10 = R.id.newInputCode;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.newInputCode);
                if (editText != null) {
                    i10 = R.id.newMessageTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.newMessageTv);
                    if (textView3 != null) {
                        i10 = R.id.oldInputCode;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.oldInputCode);
                        if (editText2 != null) {
                            i10 = R.id.oldMessageTv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.oldMessageTv);
                            if (textView4 != null) {
                                i10 = R.id.scrollView;
                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                if (scrollView != null) {
                                    i10 = R.id.settingButn;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.settingButn);
                                    if (button != null) {
                                        return new h8((LinearLayout) rootView, textView, textView2, editText, textView3, editText2, textView4, scrollView, button);
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
    public static h8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39213b;
    }

    @NonNull
    public static h8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.change_phone_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
