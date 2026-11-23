package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f47245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f47246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f47247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f47248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ListView f47249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47251k;

    private xi(@NonNull LinearLayout rootView, @NonNull Button btnStartService, @NonNull Button btnWeixin, @NonNull Button deleteDownload, @NonNull Button doInstall, @NonNull Button downloadCenter, @NonNull Button installedList, @NonNull ListView listView, @NonNull TextView txtIndicator, @NonNull TextView txtWeixinIndicator) {
        this.f47242b = rootView;
        this.f47243c = btnStartService;
        this.f47244d = btnWeixin;
        this.f47245e = deleteDownload;
        this.f47246f = doInstall;
        this.f47247g = downloadCenter;
        this.f47248h = installedList;
        this.f47249i = listView;
        this.f47250j = txtIndicator;
        this.f47251k = txtWeixinIndicator;
    }

    @NonNull
    public static xi bind(@NonNull View rootView) {
        int i10 = R.id.btnStartService;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnStartService);
        if (button != null) {
            i10 = R.id.btnWeixin;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btnWeixin);
            if (button2 != null) {
                i10 = R.id.deleteDownload;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.deleteDownload);
                if (button3 != null) {
                    i10 = R.id.doInstall;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.doInstall);
                    if (button4 != null) {
                        i10 = R.id.downloadCenter;
                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.downloadCenter);
                        if (button5 != null) {
                            i10 = R.id.installedList;
                            Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.installedList);
                            if (button6 != null) {
                                i10 = R.id.listView;
                                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listView);
                                if (listView != null) {
                                    i10 = R.id.txtIndicator;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.txtIndicator);
                                    if (textView != null) {
                                        i10 = R.id.txtWeixinIndicator;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txtWeixinIndicator);
                                        if (textView2 != null) {
                                            return new xi((LinearLayout) rootView, button, button2, button3, button4, button5, button6, listView, textView, textView2);
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
    public static xi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47242b;
    }

    @NonNull
    public static xi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_service_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
