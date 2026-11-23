package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class b5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f36229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FlowLayout f36230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ListView f36231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final jw0 f36232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f36233h;

    private b5(@NonNull LinearLayout rootView, @NonNull Button btnCommit, @NonNull EditText etReasonText, @NonNull FlowLayout flTagAll, @NonNull ListView lvReasons, @NonNull jw0 titleBarLayout, @NonNull View viewBg) {
        this.f36227b = rootView;
        this.f36228c = btnCommit;
        this.f36229d = etReasonText;
        this.f36230e = flTagAll;
        this.f36231f = lvReasons;
        this.f36232g = titleBarLayout;
        this.f36233h = viewBg;
    }

    @NonNull
    public static b5 bind(@NonNull View rootView) {
        int i10 = R.id.btn_commit;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_commit);
        if (button != null) {
            i10 = R.id.et_reason_text;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_reason_text);
            if (editText != null) {
                i10 = R.id.fl_tag_all;
                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.fl_tag_all);
                if (flowLayout != null) {
                    i10 = R.id.lv_reasons;
                    ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.lv_reasons);
                    if (listView != null) {
                        i10 = R.id.title_bar_layout;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                        if (viewFindChildViewById != null) {
                            jw0 jw0VarBind = jw0.bind(viewFindChildViewById);
                            i10 = R.id.viewBg;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                            if (viewFindChildViewById2 != null) {
                                return new b5((LinearLayout) rootView, button, editText, flowLayout, listView, jw0VarBind, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36227b;
    }

    @NonNull
    public static b5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_tag_report, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
