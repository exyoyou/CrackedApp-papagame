package com.join.mgps.activity;

import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PayActivityBean;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.PayActivityRebate;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_pay_start)
public class PayStartActivity extends BaseActivity {
    UserInfo accountBean;
    MApplication application;
    private d btnClick;

    @ViewById
    ImageView checkBoxPay;

    @Extra
    IntentDataMain intentDataMain;
    List<Integer> lists;
    private PayActivityBean mConfigBean;
    private EditText mEditText;
    com.join.mgps.rpc.o mRpcPawalletClient;

    @ViewById
    TextView papaTopPriceBig;

    @ViewById
    FlowLayout papa_top_layout;

    @ViewById
    TextView papa_top_number;

    @ViewById
    TextView papa_top_oto;
    PapayOrder papayOrder;

    @ViewById
    TextView showPrice;

    @ViewById
    Button startPay;

    @ViewById
    TextView title_textview;

    class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v10, boolean hasFocus) {
            if (!hasFocus) {
                PayStartActivity.this.mEditText.setHint(PayStartActivity.this.getString(R.string.papa_other));
                return;
            }
            PayStartActivity.this.changeBtnState(null);
            PayStartActivity.this.showPrice.setVisibility(8);
            PayStartActivity.this.mEditText.setHint("");
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
            String string = s10.toString();
            if (string == null || string.equals("") || string.equals(com.join.mgps.Util.o0.f49827a)) {
                return;
            }
            PayStartActivity.this.showPrice(string);
            PayStartActivity.this.papaTopPriceBig.setVisibility(Float.compare(Float.parseFloat(s10.toString()), 3000.0f) >= 0 ? 0 : 8);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    class c implements Comparator<PayActivityRebate> {
        c() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PayActivityRebate arg0, PayActivityRebate arg1) {
            return arg0.getMin_money() > arg1.getMin_money() ? 1 : -1;
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PayStartActivity.this.papaTopPriceBig.setVisibility(8);
            PayStartActivity.this.changeBtnState(v10);
            if (v10 instanceof Button) {
                PayStartActivity.this.showPrice(v10.getTag().toString());
            }
            PayStartActivity.this.clearEditTextState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBtnState(View mView) {
        int childCount = this.papa_top_layout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (this.papa_top_layout.getChildAt(i10) instanceof Button) {
                Button button = (Button) this.papa_top_layout.getChildAt(i10);
                if (button == mView) {
                    button.setSelected(true);
                } else {
                    button.setSelected(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEditTextState() {
        this.mEditText.setText("");
        this.mEditText.clearFocus();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void drawView() {
        ArrayList arrayList = new ArrayList();
        this.lists = arrayList;
        arrayList.add(10);
        this.lists.add(30);
        this.lists.add(50);
        this.lists.add(100);
        this.lists.add(300);
        this.lists.add(500);
        this.lists.add(1000);
        this.lists.add(2000);
        this.btnClick = new d();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int iA = com.join.mgps.Util.i0.a(this, 20.0f);
        int i10 = (displayMetrics.widthPixels - (iA * 4)) / 3;
        int iA2 = com.join.mgps.Util.i0.a(this, 40.0f);
        for (int i11 = 0; i11 < this.lists.size(); i11++) {
            Button button = new Button(this);
            button.setBackgroundResource(R.drawable.pay_papa_top);
            button.setText(this.lists.get(i11) + getString(R.string.papa_coin));
            if (this.lists.get(i11).intValue() == 100) {
                button.setSelected(true);
                this.papayOrder.PRODUCT_NAME = this.lists.get(i11) + getString(R.string.papa_coin);
                this.papayOrder.MONEY_AMOUNT = this.lists.get(i11) + "";
                this.papa_top_number.setText(Html.fromHtml(String.format(getResources().getString(R.string.papa_top_number), "<font color = '#f2463b'>" + this.lists.get(i11) + "</font>")));
            }
            button.setTextColor(-899525);
            button.setTextSize(12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, iA2);
            layoutParams.leftMargin = iA;
            layoutParams.bottomMargin = iA;
            button.setPadding(0, 0, 0, 0);
            button.setLayoutParams(layoutParams);
            button.setOnClickListener(this.btnClick);
            button.setTag(this.lists.get(i11));
            this.papa_top_layout.addView(button);
        }
        this.mEditText = new EditText(this);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i10, iA2);
        layoutParams2.leftMargin = iA;
        layoutParams2.bottomMargin = iA;
        this.mEditText.setLayoutParams(layoutParams2);
        this.mEditText.setHint(getString(R.string.papa_other));
        this.mEditText.setTextSize(12.0f);
        this.mEditText.setInputType(2);
        this.mEditText.setKeyListener(new DigitsKeyListener(false, true));
        this.mEditText.setBackgroundResource(R.drawable.pay_papa_edit_bg);
        this.mEditText.setHintTextColor(-6513508);
        this.mEditText.setTextColor(-899525);
        this.mEditText.setOnFocusChangeListener(new a());
        this.mEditText.addTextChangedListener(new b());
        this.mEditText.setGravity(17);
        this.papa_top_layout.addView(this.mEditText);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.papa_top_layout.getLayoutParams();
        layoutParams3.bottomMargin = -com.join.mgps.Util.i0.a(this, 10.0f);
        this.papa_top_layout.setLayoutParams(layoutParams3);
        this.papa_top_oto.setText(Html.fromHtml(String.format(getString(R.string.papa_oto), "<font color = '#f2463b'>1</font>", "<font color = '#f2463b'>1</font>")));
    }

    private PayActivityRebate getConfigPrice(int price) {
        PayActivityBean payActivityBean = this.mConfigBean;
        if (payActivityBean == null || payActivityBean.getRebate_list() == null) {
            return null;
        }
        List<PayActivityRebate> rebate_list = this.mConfigBean.getRebate_list();
        for (int i10 = 0; i10 < rebate_list.size(); i10++) {
            PayActivityRebate payActivityRebate = rebate_list.get(i10);
            if (i10 == rebate_list.size() - 1 && payActivityRebate.getMin_money() <= price) {
                return rebate_list.get(rebate_list.size() - 1);
            }
            if (price >= payActivityRebate.getMin_money() && price < rebate_list.get(i10 + 1).getMin_money()) {
                return rebate_list.get(i10);
            }
        }
        return null;
    }

    private void setCheckBox() {
        if (this.checkBoxPay.isSelected()) {
            this.checkBoxPay.setSelected(false);
            this.startPay.setBackgroundResource(R.drawable.acount_is_sign_bg);
        } else {
            this.checkBoxPay.setSelected(true);
            this.startPay.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        }
    }

    private void showActivityPrice(PayActivityRebate bean) {
        if (bean == null) {
            this.showPrice.setVisibility(8);
            return;
        }
        this.showPrice.setText(Html.fromHtml(String.format(getString(R.string.pay_ad_config), "<h2>" + bean.getMin_money() + "</h2>", "<h2>" + bean.getRebate_money() + "</h2>")));
        this.showPrice.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPrice(String str) {
        try {
            this.papa_top_number.setText(Html.fromHtml(String.format(getResources().getString(R.string.papa_top_number), "<font color = '#f2463b'>" + str + "</font>")));
            this.papayOrder.PRODUCT_NAME = str + getString(R.string.papa_coin);
            this.papayOrder.MONEY_AMOUNT = str;
            PayActivityRebate configPrice = getConfigPrice((int) Float.parseFloat(str));
            if (configPrice != null) {
                this.showPrice.setText(Html.fromHtml(String.format(getString(R.string.pay_ad_config), "<h2>" + str + "</h2>", "<h2>" + configPrice.getRebate_money() + "</h2>")));
                this.showPrice.setVisibility(0);
            } else {
                this.showPrice.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void showRebateResult() {
        int childCount = this.papa_top_layout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (this.papa_top_layout.getChildAt(i10) instanceof Button) {
                Button button = (Button) this.papa_top_layout.getChildAt(i10);
                PayActivityRebate configPrice = getConfigPrice(((Integer) button.getTag()).intValue());
                if (configPrice != null) {
                    float rebate_money = (configPrice.getRebate_money() / Float.parseFloat(button.getTag().toString())) * 100.0f;
                    button.setText(String.format(getString(R.string.papa_pabi_top), button.getTag().toString(), Math.round(rebate_money) + "%"));
                } else {
                    button.setText(button.getTag().toString() + getString(R.string.papa_coin));
                }
                if (button.isSelected()) {
                    showPrice(button.getTag().toString());
                }
            }
        }
    }

    @AfterViews
    void afterview() {
        this.mRpcPawalletClient = com.join.mgps.rpc.impl.n.i();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.papayOrder = new PapayOrder();
        this.title_textview.setText(R.string.papa_coin_top);
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData == null) {
            com.join.mgps.Util.a3.b(this).d("你还没有登录,请先登录");
            IntentUtil.getInstance().goAccountCenterActivity(this);
            return;
        }
        this.papayOrder.TOKEN = accountData.getToken();
        this.papayOrder.PA_OPEN_UID = this.accountBean.getUid();
        this.papayOrder.APP_USER_NAME = this.accountBean.getAccount();
        this.checkBoxPay.setSelected(true);
        drawView();
        loadData();
        this.papaTopPriceBig.setText(Html.fromHtml(String.format(getString(R.string.pay_money_big), "<font color = '#000000'>" + getString(R.string.net_fight_room_exit_title) + "：</font>")));
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void checkBoxPay() {
        setCheckBox();
    }

    @Background
    void loadData() {
        try {
            if (com.join.android.app.common.utils.m.j(getApplicationContext())) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(getApplicationContext()).getToken());
                PapayVoucherResultMain<PayActivityConfig> papayVoucherResultMainE = this.mRpcPawalletClient.e(linkedMultiValueMap);
                if (papayVoucherResultMainE == null || papayVoucherResultMainE.getError() != 0 || papayVoucherResultMainE.getData() == null || papayVoucherResultMainE.getData().getConfig() == null || papayVoucherResultMainE.getData().getConfig().getActivity() == null) {
                    return;
                }
                this.mConfigBean = papayVoucherResultMainE.getData().getConfig().getActivity();
                showConfigData();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        FlowLayout flowLayout = this.papa_top_layout;
        if (flowLayout != null) {
            flowLayout.removeAllViews();
            this.papa_top_layout = null;
        }
        List<Integer> list = this.lists;
        if (list != null) {
            list.clear();
            this.lists = null;
        }
        this.btnClick = null;
        try {
            if (this.intentDataMain != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void openTalk() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_pay_service.html");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    @Click
    void readMsg() {
        setCheckBox();
    }

    @UiThread
    void showConfigData() {
        PayActivityBean payActivityBean = this.mConfigBean;
        if (payActivityBean == null || payActivityBean.getRebate_list() == null || this.mConfigBean.getRebate_list().size() <= 0) {
            this.showPrice.setVisibility(8);
            return;
        }
        try {
            Collections.sort(this.mConfigBean.getRebate_list(), new c());
            showRebateResult();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void startPay() {
        if (!this.checkBoxPay.isSelected()) {
            com.join.mgps.Util.a3.b(this).d(getString(R.string.pay_talk_toast));
        } else if (Float.compare(Float.parseFloat(this.papayOrder.MONEY_AMOUNT), 1.0f) >= 0) {
            PayNowActivity_.intent(this).c(this.papayOrder).start();
        } else {
            Toast.makeText(this, "充值金额不得小于1元", 0).show();
        }
    }
}
