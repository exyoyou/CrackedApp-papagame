package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class a5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f35656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FlowLayout f35657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FlowLayout f35658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ListView f35660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f35661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final jw0 f35662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f35665l;

    private a5(@NonNull LinearLayout rootView, @NonNull EditText etTag, @NonNull FlowLayout flTagAll, @NonNull FlowLayout flTagMy, @NonNull LinearLayout llAddTag, @NonNull ListView lvAutoSearch, @NonNull NestedScrollView nsvView, @NonNull jw0 titleBarLayout, @NonNull TextView tvReport, @NonNull TextView tvTagAdd, @NonNull View viewBg) {
        this.f35655b = rootView;
        this.f35656c = etTag;
        this.f35657d = flTagAll;
        this.f35658e = flTagMy;
        this.f35659f = llAddTag;
        this.f35660g = lvAutoSearch;
        this.f35661h = nsvView;
        this.f35662i = titleBarLayout;
        this.f35663j = tvReport;
        this.f35664k = tvTagAdd;
        this.f35665l = viewBg;
    }

    @NonNull
    public static a5 bind(@NonNull View rootView) {
        int i10 = R.id.et_tag;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_tag);
        if (editText != null) {
            i10 = R.id.fl_tag_all;
            FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.fl_tag_all);
            if (flowLayout != null) {
                i10 = R.id.fl_tag_my;
                FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.fl_tag_my);
                if (flowLayout2 != null) {
                    i10 = R.id.ll_add_tag;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_add_tag);
                    if (linearLayout != null) {
                        i10 = R.id.lv_auto_search;
                        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.lv_auto_search);
                        if (listView != null) {
                            i10 = R.id.nsv_view;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, R.id.nsv_view);
                            if (nestedScrollView != null) {
                                i10 = R.id.title_bar_layout;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                if (viewFindChildViewById != null) {
                                    jw0 jw0VarBind = jw0.bind(viewFindChildViewById);
                                    i10 = R.id.tv_report;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_report);
                                    if (textView != null) {
                                        i10 = R.id.tv_tag_add;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_tag_add);
                                        if (textView2 != null) {
                                            i10 = R.id.viewBg;
                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                                            if (viewFindChildViewById2 != null) {
                                                return new a5((LinearLayout) rootView, editText, flowLayout, flowLayout2, linearLayout, listView, nestedScrollView, jw0VarBind, textView, textView2, viewFindChildViewById2);
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
    public static a5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35655b;
    }

    @NonNull
    public static a5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_tag_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
