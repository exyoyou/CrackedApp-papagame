package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f43532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f43533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f43534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ScrollView f43535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f43536h;

    private pu0(@NonNull LinearLayout rootView, @NonNull LinearLayout layoutTop, @NonNull EditText password, @NonNull EditText recentPassword, @NonNull EditText repeatPassword, @NonNull ScrollView scrollView, @NonNull Button settingButn) {
        this.f43530b = rootView;
        this.f43531c = layoutTop;
        this.f43532d = password;
        this.f43533e = recentPassword;
        this.f43534f = repeatPassword;
        this.f43535g = scrollView;
        this.f43536h = settingButn;
    }

    @NonNull
    public static pu0 bind(@NonNull View rootView) {
        int i10 = R.id.layoutTop;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutTop);
        if (linearLayout != null) {
            i10 = R.id.password;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.password);
            if (editText != null) {
                i10 = R.id.recentPassword;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.recentPassword);
                if (editText2 != null) {
                    i10 = R.id.repeatPassword;
                    EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.repeatPassword);
                    if (editText3 != null) {
                        i10 = R.id.scrollView;
                        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                        if (scrollView != null) {
                            i10 = R.id.settingButn;
                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.settingButn);
                            if (button != null) {
                                return new pu0((LinearLayout) rootView, linearLayout, editText, editText2, editText3, scrollView, button);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43530b;
    }

    @NonNull
    public static pu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.setting_password_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
