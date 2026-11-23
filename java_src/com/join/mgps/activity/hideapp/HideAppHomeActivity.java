package com.join.mgps.activity.hideapp;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.j2;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.pref.PrefDef_;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_hide_app_home)
public class HideAppHomeActivity extends BaseAppCompatActivity {
    private Context context;
    private List<b> datas = new ArrayList();
    private int hideType;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View statubar;

    @ViewById
    ViewPager2 viewpager;

    class a extends BaseQuickAdapter<b, com.join.mgps.base.b> {
        public a() {
            super(R.layout.item_hide_app_home_viewpager, HideAppHomeActivity.this.datas);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(b bVar, View view) {
            if (HideAppHomeActivity.this.hideType == 0) {
                HideAppSetPwdActivity_.intent(this.mContext).a(bVar.getType()).start();
            } else if (HideAppHomeActivity.this.hideType == bVar.getType()) {
                HideAppHomeActivity.this.change();
            } else {
                HideAppHomeActivity hideAppHomeActivity = HideAppHomeActivity.this;
                hideAppHomeActivity.showMessage(hideAppHomeActivity.hideType == 1 ? "记事本" : "计算器伪装功能使用中，请先解除隐身状态");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(View view) {
            HideAppSetPwdActivity_.intent(this.mContext).a(100).start();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final b item) {
            helper.setText(R.id.tvTitle, "将自身伪装成" + item.b()).setText(R.id.tvDesc, "从" + item.b() + "中输入6位密码进入悟饭").setText(R.id.tvBtn, HideAppHomeActivity.this.hideType == item.getType() ? "解除隐身状态" : "立即使用").setBackgroundRes(R.id.tvBtn, HideAppHomeActivity.this.hideType == item.getType() ? R.drawable.shape_434343_r40 : R.drawable.shape_gradient_yellow_btn).setVisible(R.id.tvResetPwd, HideAppHomeActivity.this.hideType == item.getType()).setImageResource(R.id.ic_pretend, item.a());
            helper.getView(R.id.tvBtn).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.hideapp.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57325b.u(item, view);
                }
            });
            helper.getView(R.id.tvResetPwd).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.hideapp.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57327b.v(view);
                }
            });
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f57306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f57307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f57308c;

        public b(int type, String name, int iconRes) {
            this.f57306a = type;
            this.f57307b = name;
            this.f57308c = iconRes;
        }

        public int a() {
            return this.f57308c;
        }

        public String b() {
            return this.f57307b;
        }

        public void c(int iconRes) {
            this.f57308c = iconRes;
        }

        public void d(String name) {
            this.f57307b = name;
        }

        public void e(int type) {
            this.f57306a = type;
        }

        public int getType() {
            return this.f57306a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void change() {
        this.prefDef.hide_app_pwd().g("");
        this.prefDef.hide_app_switch().g(0);
        PackageManager packageManager = getPackageManager();
        packageManager.setComponentEnabledSetting(new ComponentName(this, "default.alias"), 1, 1);
        packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"), 2, 1);
        packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"), 2, 1);
        j2.a(this);
        finish();
    }

    private void initViewpager() {
        this.datas.clear();
        this.datas.add(new b(2, "计算器", R.drawable.ic_hide_app_calculator));
        this.datas.add(new b(1, "记事本", R.drawable.ic_hide_app_notebook));
        this.viewpager.setOffscreenPageLimit(2);
        RecyclerView recyclerView = (RecyclerView) this.viewpager.getChildAt(0);
        recyclerView.setPadding(0, 0, (int) getResources().getDimension(R.dimen.wdp60), 0);
        recyclerView.setClipToPadding(false);
        this.viewpager.setAdapter(new a());
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        int iV = q.v(this);
        View view = this.statubar;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = iV;
            this.statubar.setLayoutParams(layoutParams);
        }
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.hideType = this.prefDef.hide_app_switch().d().intValue();
        initViewpager();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        a3.b(this.context).d(message);
    }
}
