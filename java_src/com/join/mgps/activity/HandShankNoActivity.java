package com.join.mgps.activity;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.HandShankAdView;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.HandShankAdBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.controller.core.ControllerManager;
import com.papa.sim.statistic.JoyStickConfig;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.handshank_layout_no)
public class HandShankNoActivity extends HandShankBaseActivity {
    private com.join.mgps.dialog.b1 handShankDialog;
    boolean isInputDeviceConnected = false;

    @ViewById
    HandShankAdView mAdView;

    @ViewById
    TextView papahandList;

    @ViewById
    Button rightButn;
    com.join.mgps.rpc.e rpcClient;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            HandShankNoActivity.this.startActivity(new Intent(HandShankNoActivity.this, (Class<?>) HandShankYesActivity_.class));
            HandShankNoActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(HandShankNoActivity.this, (Class<?>) HandShankCheckKeyActivity_.class);
            intent.putExtra("from", "first");
            HandShankNoActivity.this.startActivity(intent);
            HandShankNoActivity.this.finish();
        }
    }

    private void checkJoystickJoin(List<ControllerManager.c> devices) {
        if (devices == null || devices.size() == 0) {
            com.join.mgps.dialog.b1 b1Var = this.handShankDialog;
            if (b1Var == null || !b1Var.isShowing() || getValidDeviceCount(devices) >= 1) {
                return;
            }
            this.handShankDialog.dismiss();
            return;
        }
        String str = "";
        for (ControllerManager.c cVar : devices) {
            if (!com.join.mgps.joystick.map.a.b().f(cVar.d())) {
                HandShankTable handShankTable = new HandShankTable();
                handShankTable.setName(cVar.d());
                handShankTable.setAddress(cVar.a());
                handShankTable.setTime(Long.valueOf(System.currentTimeMillis()));
                handShankTable.setIsConnect(Boolean.TRUE);
                this.isInputDeviceConnected = true;
                String strD = cVar.d();
                save(handShankTable);
                str = strD;
            }
        }
        if (this.isInputDeviceConnected) {
            showTipDialog(str);
        }
    }

    private void sendJoystickInfo(HandShankTable handShankTable) {
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null) {
            joyStickConfig.setUid(0);
        } else {
            joyStickConfig.setUid(accountData.getUid());
        }
        joyStickConfig.setGamepad_name(handShankTable.getName());
        joyStickConfig.setGamepad_mac(handShankTable.getAddress().replace(":", "_"));
        joyStickConfig.setUpdate_time(handShankTable.getTime().longValue());
    }

    @AfterViews
    void AfterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        loadAdData();
        com.papa.sim.statistic.t.l(this).c0(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).isTourist(), "", "", 0);
        Button button = this.rightButn;
        if (button != null) {
            button.setVisibility(8);
        }
    }

    @Click
    void backImage() {
        finish();
    }

    @Click
    public void blue_setup_btn() {
        if (BluetoothAdapter.getDefaultAdapter() != null) {
            startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
        } else {
            ToastManager.show("设备不支持蓝牙，无法开启");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAdData() {
        try {
            ResultMainBean<HandShankAdBean> resultMainBeanV0 = this.rpcClient.V0(RequestBeanUtil.getInstance(this).getHandShankAdList());
            if (resultMainBeanV0.getCode() == 600) {
                this.mAdView.m(resultMainBeanV0.getMessages().getData());
            } else {
                this.mAdView.i();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.mAdView.i();
        }
    }

    public void loadAdData() {
        if (com.join.android.app.common.utils.m.j(this)) {
            getAdData();
        } else {
            this.mAdView.l();
        }
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    public void onControllerDeviceChanged(int state, List<ControllerManager.c> controllerDevices) {
        checkJoystickJoin(controllerDevices);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.b1 b1Var = this.handShankDialog;
        if (b1Var != null && b1Var.isShowing()) {
            this.handShankDialog.dismiss();
            this.handShankDialog = null;
        }
        super.onDestroy();
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        setSpp4CheckInfo(true);
        super.onResume();
    }

    @Click
    void papahandList() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_shoubing.html");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void save(HandShankTable handShankTable) {
        t6.x xVarP = t6.x.p();
        if (xVarP.q(handShankTable.getAddress())) {
            return;
        }
        xVarP.n(handShankTable);
        sendJoystickInfo(handShankTable);
    }

    public synchronized void showTipDialog(String name) {
        com.join.mgps.dialog.b1 b1Var = this.handShankDialog;
        if (b1Var == null || !b1Var.isShowing()) {
            com.join.mgps.dialog.b1 b1Var2 = new com.join.mgps.dialog.b1(this);
            this.handShankDialog = b1Var2;
            b1Var2.c(name);
            this.handShankDialog.a(new a());
            this.handShankDialog.b(new b());
            if (!isFinishing() && !isDestroyed()) {
                this.handShankDialog.show();
            }
        }
    }
}
