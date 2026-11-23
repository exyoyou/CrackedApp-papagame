package com.join.mgps.activity;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.TipBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.detail_simple_info_layout)
public class e6 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f57130c = e6.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f57131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ObservableWebView f57132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f57133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout.LayoutParams f57134g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DetailResultBean f57135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f57136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f57137j;

    private void M(List<TipBean> tipBeans, LinearLayout view) {
        view.removeAllViews();
        for (TipBean tipBean : tipBeans) {
            TextView textView = new TextView(this.f57133f);
            textView.setLayoutParams(this.f57134g);
            textView.setGravity(17);
            textView.setText(tipBean.getName());
            textView.setTextColor(-1);
            textView.setPadding(0, 0, 0, 0);
            textView.setTextSize(this.f57133f.getResources().getDimensionPixelSize(R.dimen.main_detial_textsize));
            textView.setTextSize(10.0f);
            textView.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f57133f, tipBean.getColor()));
            view.addView(textView);
        }
    }

    @AfterViews
    void afterView() {
        this.f57133f = getActivity();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.f57134g = layoutParams;
        layoutParams.setMargins(getResources().getDimensionPixelSize(R.dimen.detail_tipsitem_magin), 0, getResources().getDimensionPixelSize(R.dimen.detail_tipsitem_magin), 0);
        DetailResultBean detailResultBean = (DetailResultBean) getArguments().getSerializable("simpleInfoData");
        this.f57135h = detailResultBean;
        M(detailResultBean.getTag_info(), this.f57131d);
        this.f57132e.getSettings().setDefaultTextEncodingName("utf-8");
        this.f57132e.loadData(this.f57135h.getDescribe(), "text/html;charset=UTF-8", "utf-8");
        this.f57132e.getSettings().setJavaScriptEnabled(true);
        this.f57132e.setWebChromeClient(new WebChromeClient());
        this.f57132e.getParent().requestDisallowInterceptTouchEvent(true);
    }
}
