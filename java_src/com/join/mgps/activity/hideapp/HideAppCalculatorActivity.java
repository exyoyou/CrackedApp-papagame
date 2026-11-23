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
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.j2;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.pref.PrefDef_;
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

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_hide_app_calculator)
public class HideAppCalculatorActivity extends BaseAppCompatActivity {
    private c adapter;
    private boolean caled;
    private Context context;

    @ViewById
    LinearLayout hideAppMask;

    @Extra
    boolean isFromBackground;

    @Pref
    PrefDef_ prefDef;
    private String pwd;

    @ViewById
    RecyclerView rvKeyBoard;

    @ViewById
    View statubar;

    @ViewById
    TextView tvCalResult;
    private List<d> datas = new ArrayList();
    private String result = "0";

    class a extends GridLayoutManager.SpanSizeLookup {
        a() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            return (position >= HideAppCalculatorActivity.this.datas.size() || HideAppCalculatorActivity.this.datas.get(position) == null || !TextUtils.equals(((d) HideAppCalculatorActivity.this.datas.get(position)).b(), "0")) ? 1 : 2;
        }
    }

    class b implements BaseQuickAdapter.j {
        b() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            d dVar = (d) HideAppCalculatorActivity.this.datas.get(position);
            if (dVar.b().matches("[\\+\\-\\×\\÷]")) {
                HideAppCalculatorActivity.this.writeText(dVar.b(), true);
                return;
            }
            if (dVar.b().equals("DEL")) {
                HideAppCalculatorActivity.this.del();
                return;
            }
            if (dVar.b().equals("%")) {
                HideAppCalculatorActivity.this.convertPercentToFloat();
                return;
            }
            if (dVar.b().equals(SimpleComparison.EQUAL_TO_OPERATION)) {
                HideAppCalculatorActivity.this.checkCal();
            } else if (dVar.b().equals("AC")) {
                HideAppCalculatorActivity.this.clearInput();
            } else {
                HideAppCalculatorActivity.this.writeText(dVar.b(), false);
            }
        }
    }

    class c extends BaseQuickAdapter<d, com.join.mgps.base.b> {
        public c() {
            super(R.layout.item_hide_app_calculator, HideAppCalculatorActivity.this.datas);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, d item) {
            helper.setText(R.id.tvBtn, item.b()).setTextColor(R.id.tvBtn, Color.parseColor(item.c())).setVisible(R.id.tvBtn, !TextUtils.equals(item.b(), "DEL")).setVisible(R.id.ivBtn, TextUtils.equals(item.b(), "DEL"));
            ((CardView) helper.getView(R.id.root)).setCardBackgroundColor(Color.parseColor(item.a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCal() {
        try {
            if (this.result.contains("+")) {
                String[] strArrSplit = this.result.split("\\+");
                if (strArrSplit.length == 2) {
                    this.result = String.valueOf(Float.parseFloat(strArrSplit[0]) + Float.parseFloat(strArrSplit[1]));
                    this.caled = true;
                }
            } else if (this.result.contains("-")) {
                String[] strArrSplit2 = this.result.split("\\-");
                if (strArrSplit2.length == 2) {
                    this.result = String.valueOf(Float.parseFloat(strArrSplit2[0]) - Float.parseFloat(strArrSplit2[1]));
                    this.caled = true;
                }
            } else if (this.result.contains("×")) {
                String[] strArrSplit3 = this.result.split("\\×");
                if (strArrSplit3.length == 2) {
                    this.result = String.valueOf(Float.parseFloat(strArrSplit3[0]) * Float.parseFloat(strArrSplit3[1]));
                    this.caled = true;
                }
            } else if (this.result.contains("÷")) {
                String[] strArrSplit4 = this.result.split("\\÷");
                if (strArrSplit4.length == 2) {
                    if (Float.parseFloat(strArrSplit4[1]) == 0.0f) {
                        showMessage("运算错误");
                        this.result = "0";
                        this.tvCalResult.setText("0");
                        return;
                    }
                    this.result = String.valueOf(Float.parseFloat(strArrSplit4[0]) / Float.parseFloat(strArrSplit4[1]));
                    this.caled = true;
                }
            }
            String[] strArrSplit5 = this.result.split("\\.");
            if (strArrSplit5.length == 2 && Integer.parseInt(strArrSplit5[1]) == 0) {
                this.result = strArrSplit5[0];
            }
            this.tvCalResult.setText(this.result);
        } catch (Exception unused) {
            showMessage("运算错误");
            this.result = "0";
            this.tvCalResult.setText("0");
        }
    }

    private void checkPwd() {
        String str = this.result;
        if (str == null || !str.contains(this.pwd)) {
            return;
        }
        if (!this.isFromBackground) {
            MGMainActivity_.intent(this.context).start();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearInput() {
        this.result = "0";
        this.tvCalResult.setText("0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void convertPercentToFloat() {
        try {
            String string = this.tvCalResult.getText().toString();
            this.result = string;
            if (string.contains("+")) {
                String[] strArrSplit = this.result.split("\\+");
                if (strArrSplit.length == 2) {
                    this.result = strArrSplit[0] + "+" + (Float.parseFloat(strArrSplit[1]) / 100.0f);
                }
            } else if (this.result.contains("-")) {
                String[] strArrSplit2 = this.result.split("\\-");
                if (strArrSplit2.length == 2) {
                    this.result = strArrSplit2[0] + "-" + (Float.parseFloat(strArrSplit2[1]) / 100.0f);
                }
            } else if (this.result.contains("×")) {
                String[] strArrSplit3 = this.result.split("\\×");
                if (strArrSplit3.length == 2) {
                    this.result = strArrSplit3[0] + "×" + (Float.parseFloat(strArrSplit3[1]) / 100.0f);
                }
            } else if (this.result.contains("÷")) {
                String[] strArrSplit4 = this.result.split("\\÷");
                if (strArrSplit4.length == 2) {
                    this.result = strArrSplit4[0] + "÷" + (Float.parseFloat(strArrSplit4[1]) / 100.0f);
                }
            } else {
                this.result = String.valueOf(Float.parseFloat(this.result) / 100.0f);
            }
            String[] strArrSplit5 = this.result.split("\\.");
            if (strArrSplit5.length == 2 && Integer.parseInt(strArrSplit5[1]) == 0) {
                this.result = strArrSplit5[0];
            }
            this.tvCalResult.setText(this.result);
        } catch (Exception e10) {
            e10.printStackTrace();
            showMessage("运算错误");
            this.result = "0";
            this.tvCalResult.setText("0");
        }
    }

    private void initBtnData() {
        this.datas.clear();
        this.datas.add(new d("AC", "#A5A5A5", "#000000"));
        this.datas.add(new d("DEL", "#A5A5A5", "#000000"));
        this.datas.add(new d("%", "#A5A5A5", "#000000"));
        this.datas.add(new d("÷", "#FEA00A", "#FFFFFF"));
        this.datas.add(new d("7"));
        this.datas.add(new d(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD));
        this.datas.add(new d("9"));
        this.datas.add(new d("×", "#FEA00A", "#FFFFFF"));
        this.datas.add(new d("4"));
        this.datas.add(new d("5"));
        this.datas.add(new d("6"));
        this.datas.add(new d("+", "#FEA00A", "#FFFFFF"));
        this.datas.add(new d("1"));
        this.datas.add(new d("2"));
        this.datas.add(new d("3"));
        this.datas.add(new d("-", "#FEA00A", "#FFFFFF"));
        this.datas.add(new d("0"));
        this.datas.add(new d(o0.f49827a));
        this.datas.add(new d(SimpleComparison.EQUAL_TO_OPERATION, "#FEA00A", "#FFFFFF"));
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.context, 4);
        gridLayoutManager.setSpanSizeLookup(new a());
        this.rvKeyBoard.setLayoutManager(gridLayoutManager);
        c cVar = new c();
        this.adapter = cVar;
        this.rvKeyBoard.setAdapter(cVar);
        this.adapter.setOnItemClickListener(new b());
        if (TextUtils.isEmpty(this.pwd)) {
            PackageManager packageManager = getPackageManager();
            packageManager.setComponentEnabledSetting(new ComponentName(this, "default.alias"), 1, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"), 2, 1);
            packageManager.setComponentEnabledSetting(new ComponentName(this, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"), 2, 1);
            j2.a(this);
            MGMainActivity_.intent(this.context).start();
            finish();
        }
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.rvKeyBoard.setVisibility(0);
        this.hideAppMask.setVisibility(8);
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
        this.pwd = this.prefDef.hide_app_pwd().d();
        this.tvCalResult.setText(this.result);
        initBtnData();
    }

    @Click
    void back_image() {
        moveTaskToBack(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void del() {
        if (this.result.length() <= 1) {
            this.result = "0";
        } else {
            String str = this.result;
            this.result = str.substring(0, str.length() - 1);
        }
        this.tvCalResult.setText(this.result);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        moveTaskToBack(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void writeText(String s10, boolean isOp) {
        String string = this.tvCalResult.getText().toString();
        this.result = string;
        if (isOp) {
            if (!string.matches(".*[\\+\\-\\×\\÷]$") || !TextUtils.equals(s10, o0.f49827a)) {
                checkCal();
                this.result += s10;
                this.caled = false;
            }
        } else if (this.caled) {
            if (!TextUtils.equals(s10, o0.f49827a)) {
                this.result = s10;
                this.caled = false;
            }
        } else if (TextUtils.equals(string, "0") && !TextUtils.equals(s10, o0.f49827a) && !TextUtils.equals(s10, "0")) {
            this.result = s10;
            this.caled = false;
        } else if (!this.result.matches(".*[\\+\\-\\×\\÷]$") || !TextUtils.equals(s10, o0.f49827a)) {
            this.result += s10;
            this.caled = false;
        }
        this.tvCalResult.setText(this.result);
        checkPwd();
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f57293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f57294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f57295c;

        public d(String btnStr, String btnColor, String textColor) {
            this.f57293a = btnStr;
            this.f57294b = btnColor;
            this.f57295c = textColor;
        }

        public String a() {
            return this.f57294b;
        }

        public String b() {
            return this.f57293a;
        }

        public String c() {
            return this.f57295c;
        }

        public void d(String btnColor) {
            this.f57294b = btnColor;
        }

        public void e(String btnStr) {
            this.f57293a = btnStr;
        }

        public void f(String textColor) {
            this.f57295c = textColor;
        }

        public d(String btnStr) {
            this.f57294b = "#333333";
            this.f57295c = "#FFFFFF";
            this.f57293a = btnStr;
        }
    }
}
