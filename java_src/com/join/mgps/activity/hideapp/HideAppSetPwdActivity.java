package com.join.mgps.activity.hideapp;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.j2;
import com.join.mgps.Util.o0;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dialog.c1;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.androidannotations.api.sharedpreferences.p;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_hide_app_set_pwd)
public class HideAppSetPwdActivity extends BaseAppCompatActivity {
    private Context context;

    @Extra
    int hideType;
    boolean isHide;

    @ViewById
    LinearLayout llPwd;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RecyclerView rvKeyBoard;

    @ViewById
    View statubar;

    @ViewById
    TextView title_textview;

    class a implements BaseQuickAdapter.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f57317a;

        a(final ArrayList val$keys) {
            this.f57317a = val$keys;
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            String str = (String) this.f57317a.get(position);
            if (TextUtils.equals(str, o0.f49827a)) {
                return;
            }
            if (TextUtils.equals(str, "×")) {
                HideAppSetPwdActivity.this.deleteNum();
            } else {
                HideAppSetPwdActivity.this.addNum(str);
            }
        }
    }

    class b implements c1.a {
        b() {
        }

        @Override // com.join.mgps.dialog.c1.a
        public void a(String pwd) {
            HideAppSetPwdActivity hideAppSetPwdActivity = HideAppSetPwdActivity.this;
            if (hideAppSetPwdActivity.hideType != 100) {
                hideAppSetPwdActivity.change(pwd);
                return;
            }
            hideAppSetPwdActivity.prefDef.hide_app_pwd().g(pwd);
            HideAppSetPwdActivity.this.showMessage("重置密码成功");
            HideAppSetPwdActivity.this.finish();
        }

        @Override // com.join.mgps.dialog.c1.a
        public void reset() {
            HideAppSetPwdActivity.this.clearInput();
        }
    }

    class c extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public c(List<String> data) {
            super(R.layout.item_hide_app_pwd, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, String item) {
            helper.setText(R.id.tvBtn, item);
            ((CardView) helper.getView(R.id.root)).setCardBackgroundColor(Color.parseColor(TextUtils.equals(item, "×") ? "#FEA00A" : "#333333"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNum(String key) {
        LinearLayout linearLayout = this.llPwd;
        if (linearLayout == null || linearLayout.getChildCount() <= 0) {
            return;
        }
        int childCount = this.llPwd.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.llPwd.getChildAt(i10);
            if (childAt != null) {
                TextView textView = (TextView) childAt.findViewById(R.id.tvNum);
                if (TextUtils.isEmpty(textView.getText())) {
                    textView.setText(key);
                    View viewFindViewById = childAt.findViewById(R.id.indicator);
                    if (viewFindViewById != null) {
                        viewFindViewById.setBackgroundColor(Color.parseColor("#FFFFFF"));
                    }
                    if (i10 == childCount - 1) {
                        int i11 = this.hideType;
                        if (i11 == 0) {
                            cancelPretend();
                            return;
                        }
                        if (i11 == 99) {
                            checkOldPwd();
                            return;
                        }
                        if (i11 == 100) {
                            showConfirmDialog();
                            return;
                        } else {
                            if (i11 == 1 || i11 == 2) {
                                showConfirmDialog();
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }

    private void cancelPretend() {
        if (TextUtils.equals(this.prefDef.hide_app_pwd().d(), getInputPwd())) {
            showConfirmDialog();
        } else {
            showMessage("密码校验未通过");
            clearInput();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void change(String pwd) {
        p pVarHide_app_pwd = this.prefDef.hide_app_pwd();
        if (this.isHide) {
            pwd = "";
        }
        pVarHide_app_pwd.g(pwd);
        this.prefDef.hide_app_switch().g(Integer.valueOf(this.isHide ? 0 : this.hideType));
        PackageManager packageManager = getPackageManager();
        packageManager.setComponentEnabledSetting(new ComponentName(this, "default.alias"), !this.isHide ? 2 : 1, 1);
        packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"), (this.isHide || this.hideType != 1) ? 2 : 1, 1);
        packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"), (this.isHide || this.hideType != 2) ? 2 : 1, 1);
        if (this.isHide) {
            j2.a(this);
        } else {
            int i10 = this.hideType;
            if (i10 == 1) {
                HideAppNotebookActivity_.intent(this.context).a(true).start();
            } else if (i10 == 2) {
                HideAppCalculatorActivity_.intent(this.context).a(true).start();
            }
            t.l(this.context).R1(Event.usefakeAPP, new Ext());
            j2.f(this);
        }
        finish();
    }

    private void checkOldPwd() {
        if (!TextUtils.equals(this.prefDef.hide_app_pwd().d(), getInputPwd())) {
            showMessage("密码校验未通过");
            clearInput();
        } else {
            this.hideType = 100;
            clearInput();
            initView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearInput() {
        int childCount = this.llPwd.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.llPwd.getChildAt(i10);
            if (childAt != null) {
                ((TextView) childAt.findViewById(R.id.tvNum)).setText("");
                View viewFindViewById = childAt.findViewById(R.id.indicator);
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundColor(Color.parseColor("#FF656565"));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteNum() {
        LinearLayout linearLayout = this.llPwd;
        if (linearLayout == null || linearLayout.getChildCount() <= 0) {
            return;
        }
        int childCount = this.llPwd.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.llPwd.getChildAt((childCount - 1) - i10);
            if (childAt != null) {
                TextView textView = (TextView) childAt.findViewById(R.id.tvNum);
                if (!TextUtils.isEmpty(textView.getText())) {
                    textView.setText("");
                    View viewFindViewById = childAt.findViewById(R.id.indicator);
                    if (viewFindViewById != null) {
                        viewFindViewById.setBackgroundColor(Color.parseColor("#FF656565"));
                        return;
                    }
                    return;
                }
            }
        }
    }

    private String getInputPwd() {
        int childCount = this.llPwd.getChildCount();
        String str = "";
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.llPwd.getChildAt(i10);
            if (childAt != null) {
                TextView textView = (TextView) childAt.findViewById(R.id.tvNum);
                if (!TextUtils.isEmpty(textView.getText())) {
                    str = str + ((Object) textView.getText());
                }
            }
        }
        return str;
    }

    private void initKeyBoard() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("7");
        arrayList.add(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD);
        arrayList.add("9");
        arrayList.add("4");
        arrayList.add("5");
        arrayList.add("6");
        arrayList.add("1");
        arrayList.add("2");
        arrayList.add("3");
        arrayList.add("0");
        arrayList.add(o0.f49827a);
        arrayList.add("×");
        this.rvKeyBoard.setLayoutManager(new GridLayoutManager(this.context, 3));
        c cVar = new c(arrayList);
        this.rvKeyBoard.setAdapter(cVar);
        cVar.setOnItemClickListener(new a(arrayList));
    }

    private void initView() {
        int i10 = this.hideType;
        this.isHide = (i10 == 1 || i10 == 2 || i10 == 99 || i10 == 100) ? false : true;
        if (i10 == 0) {
            this.title_textview.setText("输入伪装密码");
        } else if (i10 == 99) {
            this.title_textview.setText("输入旧密码");
        } else if (i10 == 100) {
            this.title_textview.setText("输入新密码");
        }
        initKeyBoard();
    }

    private void showConfirmDialog() {
        c1 c1Var = new c1(this.context, getInputPwd(), this.isHide);
        c1Var.a(new b());
        c1Var.show();
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
        initView();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        a3.b(this.context).d(message);
    }
}
