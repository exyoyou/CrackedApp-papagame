package com.join.mgps.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.helper.MGFightClientManager;
import com.join.mgps.helper.MGFightServerManager;
import com.join.mgps.helper.MGWifiFightClientManger;
import com.join.mgps.helper.MGWifiFightServerManger;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.zxing.CaptureActivity;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.fight_activity)
public class ApFightActivity extends BaseActivity {
    public static final int REQUEST_CODE = 9001;
    public static final int REQUEST_ZXING_CODE = 10001;
    public static final int START_MODE_NETCLIENT = 2;
    public static final int START_MODE_NETSERVER = 1;
    public static int step;
    String apName;

    @ViewById
    ImageView ap_net_match_info_1p_frame;

    @ViewById
    ImageView ap_net_match_info_2p_frame;

    @ViewById
    RelativeLayout apfight_zxing_content_lay;

    @ViewById
    ImageView back;
    Animation beginAnimation;
    Animation btnAnimation;

    @ViewById
    TextView clientBrandName;

    @ViewById
    Button clientBtn;
    DownloadTask downloadTask;

    @ViewById
    ImageView fightClientIcon;
    private com.join.mgps.dialog.a fightClientLoadingDialog;
    private com.join.mgps.dialog.s0 fightCreateServerDialog;
    private com.join.mgps.dialog.t0 fightDisconnectDialog;
    private com.join.mgps.dialog.v0 fightServerChoseDialog;

    @ViewById
    ImageView fightServerIcon;

    @ViewById
    ImageView fightStart;
    private String gId;
    private String gName;

    @Extra
    String gameId;

    @ViewById
    TextView hint;

    @ViewById
    TextView ipTxt;

    @ViewById
    LinearLayout ip_lay;
    long lastClick;

    @ViewById
    ImageView lcon;
    private ru.alexbykov.nopermission.b mPermissionHelper;
    String mServerIp;
    private WifiUtils mWifiUtils;
    MGFightClientManager mgFightClientManager;
    MGFightServerManager mgFightServerManager;
    MGWifiFightClientManger mgWifiFightClientManger;
    MGWifiFightServerManger mgWifiFightServerManger;
    com.join.mgps.dialog.u2 mismatchDialog;

    @ViewById
    ImageView modeIconAP;

    @ViewById
    ImageView modeIconWifi;

    @ViewById
    TextView num;

    @ViewById
    ImageView p1status_btn_around_img;

    @Pref
    PrefDef_ prefDef;
    private String romPath;

    @ViewById
    TextView serverBrandName;

    @ViewById
    Button serverBtn;

    @ViewById
    TextView ssidTxt;
    int statType;
    int suiji;

    @ViewById
    TextView tipTxt1;

    @ViewById
    TextView tipTxt2;

    @ViewById
    TextView tipWifi;
    int type;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.join.mgps.dialog.t2 f50333w;

    @ViewById
    TextView waitHint;
    private WifiInfo wifiInfo;

    @ViewById
    Button zxingBtn;

    @ViewById
    ImageView zxingImg;

    @ViewById
    TextView zxingTip1;

    @ViewById
    TextView zxingTip2;

    @ViewById
    FrameLayout zxing_lay;

    @ViewById
    LinearLayout zxing_tip_lay;
    private String TAG = getClass().getSimpleName();
    private String plugin_num = "";
    private int mode = 0;
    private ArrayList<String> mWifiApList = new ArrayList<>(0);
    private boolean isClient = true;
    private boolean isUsing = false;
    private boolean isConnectSuccessed = false;
    private String specifiedSSID = "";
    boolean modeSwitchEnable = true;
    boolean apBtnEnable = true;
    private com.join.mgps.callbacks.g fightConnectListener = new e();
    String getSSID = "";
    boolean isGetPermission = false;
    private String ap = "";
    private boolean isWranAp = false;
    boolean isWifiConnectedBefore = false;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity.step = 1;
            ApFightActivity.this.fightDisconnectDialog.dismiss();
            ApFightActivity.this.showClientLoading(0, "");
            ApFightActivity.this.mgFightClientManager.connect();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity.this.mgFightClientManager.connect();
            ApFightActivity.this.fightDisconnectDialog.dismiss();
            ApFightActivity.this.showClientLoading(0, "");
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((FightIntroductionActivity_.b) FightIntroductionActivity_.intent(ApFightActivity.this).flags(4194304)).a(ApFightActivity.this.mode).start();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity.this.zxing_lay.setVisibility(0);
            ApFightActivity.this.apfight_zxing_content_lay.startAnimation(AnimationUtils.loadAnimation(ApFightActivity.this, R.anim.scale_apfight));
        }
    }

    class e implements com.join.mgps.callbacks.g {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ApFightActivity.this.mgFightClientManager.connect();
                ApFightActivity.this.fightDisconnectDialog.dismiss();
                ApFightActivity.this.showClientLoading(0, "");
            }
        }

        class b implements DialogInterface.OnCancelListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                if (ApFightActivity.this.fightClientLoadingDialog == null || !ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                    return;
                }
                ApFightActivity.this.fightClientLoadingDialog.dismiss();
            }
        }

        e() {
        }

        @Override // com.join.mgps.callbacks.g
        public void a(int error) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.zxing_lay.setVisibility(8);
            ApFightActivity.this.zxing_tip_lay.setVisibility(8);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.clientBtn.setEnabled(true);
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.closeBeginAnim();
            if (ApFightActivity.this.mode != 0) {
                new com.join.mgps.dialog.w0(ApFightActivity.this, R.style.HKDialogLoading).show();
                ApFightActivity.this.serverBtn.setEnabled(true);
                return;
            }
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.serverBtn.setVisibility(0);
            ApFightActivity.this.resetClientBtn();
            ApFightActivity.this.zxingBtn.setVisibility(0);
            ApFightActivity.this.fightStart.setVisibility(8);
            ApFightActivity.this.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.revertHint();
            ApFightActivity.this.waitHint.setText("");
            ApFightActivity.this.dismissLoading();
            com.join.android.app.common.manager.a.h().j(ApFightActivity.this, "创建热点失败!", 2);
        }

        @Override // com.join.mgps.callbacks.g
        public void b() {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.zxing_lay.setVisibility(8);
            ApFightActivity.this.zxing_tip_lay.setVisibility(8);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.apBtnEnable = true;
            apFightActivity.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.clientBtn.setEnabled(true);
            if (ApFightActivity.this.mode != 0) {
                if (ApFightActivity.this.isClient) {
                    try {
                        new com.join.mgps.dialog.v2(ApFightActivity.this, R.style.HKDialogLoading).show();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    ApFightActivity apFightActivity2 = ApFightActivity.this;
                    apFightActivity2.fightServerIcon.setImageDrawable(apFightActivity2.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                    ApFightActivity.this.serverBrandName.setText("我是主机");
                    ApFightActivity.this.clientBrandName.setText("我是客机");
                    ApFightActivity.this.resetClientBtn();
                    ApFightActivity.this.zxingBtn.setVisibility(0);
                    ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                    ApFightActivity.this.serverBtn.setEnabled(true);
                    ApFightActivity.this.clientBtn.setEnabled(true);
                    ApFightActivity.this.hint.setText("服务器断开请重新连接");
                    ApFightActivity.this.num.setText("");
                    ApFightActivity.this.lcon.setVisibility(0);
                    ApFightActivity.this.waitHint.setText("服务器断开请重新连接");
                    ApFightActivity apFightActivity3 = ApFightActivity.this;
                    apFightActivity3.fightClientIcon.setImageDrawable(apFightActivity3.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                    return;
                }
                ApFightActivity.this.mgWifiFightServerManger.disConnect();
                ApFightActivity.this.mgWifiFightServerManger.shutDownServer();
                try {
                    if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                        ApFightActivity.this.fightDisconnectDialog.dismiss();
                    }
                    ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.t0(ApFightActivity.this, R.style.HKDialogLoading);
                    ApFightActivity.this.fightDisconnectDialog.show();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                ApFightActivity.this.serverBrandName.setText("我是主机");
                ApFightActivity.this.clientBrandName.setText("我是客机");
                ApFightActivity.this.resetClientBtn();
                ApFightActivity.this.zxingBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                ApFightActivity.this.serverBtn.setEnabled(true);
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity.this.closeBeginAnim();
                ApFightActivity.this.hideFrame();
                ApFightActivity.this.hint.setText("连接已断开,等待小伙伴连接");
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity4.fightClientIcon.setImageDrawable(apFightActivity4.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.fightStart.setVisibility(8);
                ApFightActivity.this.waitHint.setText("连接已断开,等待小伙伴连接");
                ApFightActivity.this.fightDisconnectDialog.j("连接已断开");
                ApFightActivity.this.fightDisconnectDialog.g(8);
                ApFightActivity.this.fightDisconnectDialog.c(8);
                ApFightActivity.this.fightDisconnectDialog.a(0);
                ApFightActivity apFightActivity5 = ApFightActivity.this;
                apFightActivity5.fightServerIcon.setImageDrawable(apFightActivity5.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.num.setText("");
                ApFightActivity.this.lcon.setVisibility(0);
                return;
            }
            ApFightActivity.this.lcon.setVisibility(0);
            if (ApFightActivity.this.isClient) {
                if (!ApFightActivity.this.mWifiUtils.isWifiConnect(ApFightActivity.this)) {
                    ApFightActivity.this.mWifiUtils.openWifi(ApFightActivity.this);
                }
                if (ApFightActivity.this.fightDisconnectDialog == null || !ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                    try {
                        ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.t0(ApFightActivity.this, R.style.HKDialogLoading);
                        ApFightActivity.this.fightDisconnectDialog.show();
                        ApFightActivity.this.fightDisconnectDialog.h(new a());
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                ApFightActivity apFightActivity6 = ApFightActivity.this;
                apFightActivity6.fightServerIcon.setImageDrawable(apFightActivity6.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.serverBrandName.setText("我是主机");
                ApFightActivity.this.clientBrandName.setText("我是客机");
                ApFightActivity.this.resetClientBtn();
                ApFightActivity.this.zxingBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                ApFightActivity.this.serverBtn.setEnabled(true);
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity.this.hint.setText("服务器断开请重新连接");
                ApFightActivity.this.num.setText("");
                ApFightActivity.this.lcon.setVisibility(0);
                ApFightActivity.this.waitHint.setText("服务器断开请重新连接");
                ApFightActivity apFightActivity7 = ApFightActivity.this;
                apFightActivity7.fightClientIcon.setImageDrawable(apFightActivity7.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.step = 6;
                return;
            }
            ApFightActivity.this.mgFightServerManager.disConnect();
            ApFightActivity.this.mWifiUtils.setHotSpot(ApFightActivity.this.apName, r6.c.f96777q, false);
            try {
                if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                    ApFightActivity.this.fightDisconnectDialog.dismiss();
                }
                ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.t0(ApFightActivity.this, R.style.HKDialogLoading);
                ApFightActivity.this.fightDisconnectDialog.show();
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            ApFightActivity.this.serverBrandName.setText("我是主机");
            ApFightActivity.this.clientBrandName.setText("我是客机");
            ApFightActivity.this.resetClientBtn();
            ApFightActivity.this.zxingBtn.setVisibility(0);
            ApFightActivity.this.serverBtn.setVisibility(0);
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.this.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.hint.setText("连接已断开,等待小伙伴连接");
            ApFightActivity apFightActivity8 = ApFightActivity.this;
            apFightActivity8.fightClientIcon.setImageDrawable(apFightActivity8.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            ApFightActivity.this.fightStart.setVisibility(8);
            ApFightActivity.this.waitHint.setText("连接已断开,等待小伙伴连接");
            ApFightActivity.this.fightDisconnectDialog.j("连接已断开");
            ApFightActivity.this.fightDisconnectDialog.g(8);
            ApFightActivity.this.fightDisconnectDialog.c(8);
            ApFightActivity.this.fightDisconnectDialog.a(0);
            ApFightActivity apFightActivity9 = ApFightActivity.this;
            apFightActivity9.fightServerIcon.setImageDrawable(apFightActivity9.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            ApFightActivity.this.num.setText("");
            ApFightActivity.this.lcon.setVisibility(0);
        }

        @Override // com.join.mgps.callbacks.g
        public void c(String name) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.step = 3;
            ApFightActivity.this.showClientLoading(1, "正在进入房间" + name + ",请稍候...");
        }

        @Override // com.join.mgps.callbacks.g
        public void d() {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.this.lcon.setVisibility(0);
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.showConnectExceptionDialog(1);
            } else {
                ApFightActivity.this.showConnectExceptionDialog(3);
            }
        }

        @Override // com.join.mgps.callbacks.g
        public void e(List<String> rooms) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.step = 4;
            if (ApFightActivity.this.fightClientLoadingDialog != null && ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                ApFightActivity.this.fightClientLoadingDialog.dismiss();
            }
            if (ApFightActivity.this.fightServerChoseDialog == null || !ApFightActivity.this.fightServerChoseDialog.isShowing()) {
                ApFightActivity.this.fightServerChoseDialog = new com.join.mgps.dialog.v0(ApFightActivity.this, R.style.HKDialogLoading);
                ApFightActivity.this.fightServerChoseDialog.show();
                ApFightActivity.this.fightServerChoseDialog.a(rooms);
                ApFightActivity.this.fightServerChoseDialog.setOnCancelListener(new b());
            }
        }

        @Override // com.join.mgps.callbacks.g
        public void f() {
            String unused = ApFightActivity.this.TAG;
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.startGameClient();
            } else {
                ApFightActivity.this.startGameClientWifi();
                ApFightActivity.this.disConnectWifiFightClient();
            }
            ApFightActivity.this.finish();
        }

        @Override // com.join.mgps.callbacks.g
        public void g(String serverBrand) {
            if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                ApFightActivity.this.fightDisconnectDialog.dismiss();
            }
            ApFightActivity.this.hideFrame();
            String unused = ApFightActivity.this.TAG;
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = false;
            apFightActivity.apBtnEnable = false;
            String ssid = WifiUtils.getInstance(apFightActivity.getApplicationContext()).getSSID();
            if (ssid.contains(BuildQRCodeActivity_.SSID_EXTRA)) {
                ssid = WifiUtils.getInstance(ApFightActivity.this.getApplicationContext()).getApSSID(ApFightActivity.this.getApplicationContext());
            }
            String strReplaceAll = ssid.replaceAll(x.a.f97579g, "");
            if (strReplaceAll.contains("_")) {
                strReplaceAll = strReplaceAll.substring(strReplaceAll.lastIndexOf("_") + 1);
            }
            if (!ApFightActivity.this.isClient) {
                ApFightActivity apFightActivity2 = ApFightActivity.this;
                apFightActivity2.fightClientIcon.setImageDrawable(apFightActivity2.getResources().getDrawable(R.drawable.fight_ok_person));
                ApFightActivity.this.fightStart.setVisibility(0);
                ApFightActivity.this.zxing_lay.setVisibility(8);
                ApFightActivity.this.zxing_tip_lay.setVisibility(8);
                ApFightActivity.this.openBeginAnim();
                ApFightActivity.this.showP1Frame();
                ApFightActivity.this.hint.setText("小伙伴已到位，快点开始吧！");
                ApFightActivity.this.serverBtn.setVisibility(8);
                ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_3);
                ApFightActivity.this.zxingBtn.setVisibility(8);
                return;
            }
            ApFightActivity.this.prefDef.apName().g(Integer.valueOf(ApFightActivity.this.mWifiUtils.getNetworkId()));
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.num.setText("房间号" + strReplaceAll);
            }
            ApFightActivity.this.waitHint.setText("等待主机开始游戏...");
            ApFightActivity.this.isConnectSuccessed = true;
            ApFightActivity apFightActivity3 = ApFightActivity.this;
            apFightActivity3.fightClientIcon.setImageDrawable(apFightActivity3.getResources().getDrawable(R.drawable.fight_ok_person));
            ApFightActivity.this.hint.setText("等待主机开始游戏...");
            ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_3);
            ApFightActivity.this.zxingBtn.setVisibility(8);
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
            ApFightActivity.this.showP2Frame();
            if (serverBrand.equals(Build.BRAND)) {
                ApFightActivity.this.serverBrandName.setText("主机");
            }
            ApFightActivity apFightActivity4 = ApFightActivity.this;
            apFightActivity4.fightServerIcon.setImageDrawable(apFightActivity4.getResources().getDrawable(R.drawable.fight_ok_person_left));
            ApFightActivity.this.dismissShowClientLoading();
            com.papa.sim.statistic.t.l(ApFightActivity.this).w1(ApFightActivity.this.gId, AccountUtil_.getInstance_(ApFightActivity.this).getUid(), ApFightActivity.this.statType, q5.f.M().N(ApFightActivity.this.gId, ApFightActivity.this));
        }

        @Override // com.join.mgps.callbacks.g
        public void h() {
            String unused = ApFightActivity.this.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method onSearchTimeout,step=");
            sb2.append(ApFightActivity.step);
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.lcon.setVisibility(0);
            if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                ApFightActivity.this.fightDisconnectDialog.dismiss();
            }
            if (ApFightActivity.this.waitHint.getText().toString().contains("等待主机开始游戏") || ApFightActivity.step != 1) {
                return;
            }
            ApFightActivity.this.showConnectExceptionDialog(2);
        }

        @Override // com.join.mgps.callbacks.g
        public void i() {
            String unused = ApFightActivity.this.TAG;
            com.join.mgps.dialog.u2 u2Var = ApFightActivity.this.mismatchDialog;
            if (u2Var == null || !u2Var.isShowing()) {
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity apFightActivity = ApFightActivity.this;
                apFightActivity.modeSwitchEnable = true;
                if (apFightActivity.fightStart.getVisibility() == 8) {
                    ApFightActivity.this.showConnectExceptionDialog(1);
                }
            }
        }

        @Override // com.join.mgps.callbacks.g
        public void j() {
            String unused = ApFightActivity.this.TAG;
            com.join.mgps.dialog.u2 u2Var = ApFightActivity.this.mismatchDialog;
            if (u2Var == null || !u2Var.isShowing()) {
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity apFightActivity = ApFightActivity.this;
                apFightActivity.modeSwitchEnable = true;
                apFightActivity.lcon.setVisibility(0);
                ApFightActivity.this.mWifiUtils.setHotSpot(ApFightActivity.this.apName, r6.c.f96777q, false);
            }
        }

        @Override // com.join.mgps.callbacks.g
        public void k(String gameIdName) {
            ApFightActivity.this.dismissShowClientLoading();
            if (gameIdName.split("_").length == 1) {
                ApFightActivity apFightActivity = ApFightActivity.this;
                ApFightActivity apFightActivity2 = ApFightActivity.this;
                apFightActivity.mismatchDialog = new com.join.mgps.dialog.u2(apFightActivity2, R.style.HKDialogLoading, apFightActivity2.mServerIp, gameIdName.split("_")[0]);
            } else if (gameIdName.split("_").length == 2) {
                ApFightActivity apFightActivity3 = ApFightActivity.this;
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity3.mismatchDialog = new com.join.mgps.dialog.u2(apFightActivity4, R.style.HKDialogLoading, apFightActivity4.mServerIp, gameIdName.split("_")[1]);
            }
            ApFightActivity.this.mismatchDialog.show();
        }

        @Override // com.join.mgps.callbacks.g
        public void onSuccess(String name) {
            String unused = ApFightActivity.this.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("tbl>>>method onSuccess:");
            sb2.append(name);
            com.papa.sim.statistic.t.l(ApFightActivity.this).Z(ApFightActivity.this.gId, AccountUtil_.getInstance_(ApFightActivity.this).getUid());
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = false;
            apFightActivity.apBtnEnable = false;
            if (com.join.mgps.Util.t2.h(name)) {
                name = ApFightActivity.this.ap;
            }
            ApFightActivity apFightActivity2 = ApFightActivity.this;
            apFightActivity2.apName = name;
            if (apFightActivity2.mode == 0) {
                ApFightActivity.this.num.setText("房间号 " + name.substring(name.lastIndexOf("_") + 1));
            }
            ApFightActivity.this.serverBtn.setVisibility(0);
            ApFightActivity.this.fightStart.setVisibility(8);
            ApFightActivity.this.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
                ApFightActivity.this.showP1Frame();
                ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_2);
                ApFightActivity.this.zxingBtn.setVisibility(8);
                ApFightActivity.this.serverBtn.setEnabled(false);
                ApFightActivity.this.hint.setText("等待小伙伴加入...");
                ApFightActivity.this.waitHint.setText("等待小伙伴加入...");
                ApFightActivity.this.zxing_tip_lay.setVisibility(0);
                ApFightActivity.this.zxingTip1.setText("你已创建热点：" + name);
                ApFightActivity.this.zxingTip2.setText("IP: 192.168.43.1");
                ApFightActivity.this.createZxingLay(name);
                ApFightActivity.this.ssidTxt.setText(name);
                ApFightActivity.this.ipTxt.setText(com.join.mgps.socket.entity.b.f73007i);
                ApFightActivity.this.tipTxt1.setText("你已创建热点：");
                ApFightActivity.this.tipTxt2.setText("② 让小伙伴点击“自动加入”");
                ApFightActivity.this.ip_lay.setVisibility(0);
            } else {
                ApFightActivity.this.waitHint.setText("已连接" + com.join.android.app.common.utils.m.g(ApFightActivity.this) + ",IP为" + com.join.android.app.common.utils.m.e(ApFightActivity.this));
                ApFightActivity.this.hint.setText("等待小伙伴加入...");
                if (ApFightActivity.this.fightClientLoadingDialog != null && ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                    ApFightActivity.this.fightClientLoadingDialog.dismiss();
                }
                ApFightActivity.this.zxing_tip_lay.setVisibility(0);
                ApFightActivity.this.zxingTip1.setText("你已连WIFI：" + com.join.android.app.common.utils.m.g(ApFightActivity.this));
                ApFightActivity.this.zxingTip2.setText("IP: " + com.join.android.app.common.utils.m.e(ApFightActivity.this));
                ApFightActivity apFightActivity3 = ApFightActivity.this;
                apFightActivity3.createZxingLay(com.join.android.app.common.utils.m.e(apFightActivity3));
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity4.ssidTxt.setText(com.join.android.app.common.utils.m.g(apFightActivity4));
                ApFightActivity apFightActivity5 = ApFightActivity.this;
                apFightActivity5.ipTxt.setText(com.join.android.app.common.utils.m.e(apFightActivity5));
                ApFightActivity.this.tipTxt2.setText("② 让小伙伴输入IP: " + com.join.android.app.common.utils.m.e(ApFightActivity.this));
                ApFightActivity.this.tipTxt1.setText("你已连接WIFI：");
                ApFightActivity.this.ip_lay.setVisibility(8);
            }
            ApFightActivity apFightActivity6 = ApFightActivity.this;
            apFightActivity6.fightServerIcon.setImageDrawable(apFightActivity6.getResources().getDrawable(R.drawable.fight_ok_person_left));
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
            ApFightActivity.this.showP1Frame();
            ApFightActivity.this.dismissLoading();
            if (ApFightActivity.this.fightServerChoseDialog == null || !ApFightActivity.this.fightServerChoseDialog.isShowing()) {
                return;
            }
            ApFightActivity.this.fightServerChoseDialog.dismiss();
        }
    }

    class f implements Consumer<com.tbruyelle.rxpermissions2.b> {
        f() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (ApFightActivity.this.checkPermiss(com.kuaishou.weapon.p0.g.f74779c)) {
                    ApFightActivity.this.onSuccess();
                }
            } else if (permission.f83020c) {
                ApFightActivity.this.onDenied();
            } else {
                com.join.mgps.Util.h0.h0(ApFightActivity.this).Z(ApFightActivity.this, permission);
            }
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f50342b;

        g(final com.join.mgps.customview.p val$messageDialog) {
            this.f50342b = val$messageDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50342b.dismiss();
            ApFightActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    class h implements Consumer<com.tbruyelle.rxpermissions2.b> {
        h() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (!permission.f83019b) {
                if (permission.f83020c) {
                    return;
                }
                com.join.mgps.Util.h0.h0(ApFightActivity.this).Z(ApFightActivity.this, permission);
            } else if (ApFightActivity.this.checkPermiss("android.permission.CAMERA")) {
                ApFightActivity.this.startActivityForResult(new Intent(ApFightActivity.this, (Class<?>) CaptureActivity.class), 10001);
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f50345b;

        i(final com.join.mgps.customview.p val$messageDialog) {
            this.f50345b = val$messageDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50345b.dismiss();
            ApFightActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ((ClipboardManager) ApFightActivity.this.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, ApFightActivity.this.ap));
            com.join.android.app.common.manager.a.h().j(ApFightActivity.this, "复制成功！", 2);
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f50348b;

        k(final com.join.mgps.customview.p val$messageDialog) {
            this.f50348b = val$messageDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50348b.dismiss();
            ApFightActivity.this.isWranAp = true;
            Intent intent = new Intent(net.lingala.zip4j.util.e.F0);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.TetherSettings"));
            intent.setAction("android.intent.action.VIEW");
            ApFightActivity.this.startActivityForResult(intent, 88);
        }
    }

    private boolean checkWifiIp(String ip) {
        if (ip.contains("192.168") || ip.startsWith("10.")) {
            return true;
        }
        return ip.startsWith("172.");
    }

    private void createServer() {
        if (this.mode != 0) {
            if (!com.join.android.app.common.utils.m.k(this)) {
                this.mWifiUtils.OpenWifi();
            }
            this.mgWifiFightServerManger.startServer(this.gId);
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            closeServer();
            this.num.setText("");
            this.serverBrandName.setText("我是主机");
            this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            this.mgFightServerManager.startServer(this.gName);
            showLoading();
            return;
        }
        this.ap = r6.c.f96776p + this.gName + "_" + this.suiji;
        if (this.mWifiUtils.getWifiApStateInt() == 11 || !this.isWranAp) {
            this.isUsing = false;
            this.serverBtn.setEnabled(true);
            com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
            pVar.show();
            pVar.b(this.ap);
            pVar.a(new j());
            pVar.d(new k(pVar));
            return;
        }
        if (this.mWifiUtils.getWifiApStateInt() == 13 || this.mWifiUtils.getWifiApStateInt() == 3) {
            closeServer();
            this.num.setText("");
            this.serverBrandName.setText("我是主机");
            this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            this.mgFightServerManager.startServer(this.ap);
            showLoading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createZxingLay(String str) {
        if (this.mode == 0) {
            this.zxingImg.setImageBitmap(h7.a.b(str, this));
            this.tipWifi.setVisibility(4);
        } else {
            this.zxingImg.setImageBitmap(h7.a.b(str, this));
            this.tipWifi.setVisibility(0);
        }
        new Handler().postDelayed(new d(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissShowClientLoading() {
        com.join.mgps.dialog.a aVar = this.fightClientLoadingDialog;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    private void getDeviceInfo() {
        new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74779c).subscribe(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDenied() {
        com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
    }

    private void onNeverAskAgain() {
        com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccess() {
        this.isGetPermission = true;
        this.getSSID = this.mWifiUtils.getApSSIDAll(this);
        if (this.type == 1) {
            zxingBtn();
        } else {
            clientBtn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetClientBtn() {
        if (this.mode == 0) {
            this.clientBtn.setBackgroundResource(R.drawable.ap_client_ap_btn);
        } else {
            this.clientBtn.setBackgroundResource(R.drawable.ap_client_wifi_btn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClientLoading(int stage, String hint) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method showClientLoading() called.stage=");
        sb2.append(stage);
        com.join.mgps.dialog.a aVar = this.fightClientLoadingDialog;
        if (aVar != null && aVar.isShowing()) {
            this.fightClientLoadingDialog.dismiss();
        }
        com.join.mgps.dialog.a aVar2 = new com.join.mgps.dialog.a(this, R.style.HKDialogLoading);
        this.fightClientLoadingDialog = aVar2;
        aVar2.setCancelable(false);
        this.fightClientLoadingDialog.setCanceledOnTouchOutside(false);
        if (stage == 0) {
            this.fightClientLoadingDialog.show();
            this.fightClientLoadingDialog.a("正在搜索游戏房间,请稍候...");
            step = 1;
        } else {
            if (stage != 1) {
                return;
            }
            try {
                this.fightClientLoadingDialog.show();
                this.fightClientLoadingDialog.a(hint);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConnectExceptionDialog(int stage) {
        try {
            if (stage == 1) {
                dismissShowClientLoading();
                com.join.mgps.dialog.t0 t0Var = this.fightDisconnectDialog;
                if (t0Var != null) {
                    t0Var.dismiss();
                }
                com.join.mgps.dialog.t0 t0Var2 = new com.join.mgps.dialog.t0(this, R.style.HKDialogLoading);
                this.fightDisconnectDialog = t0Var2;
                if (this.isConnectSuccessed) {
                    return;
                }
                step = 5;
                t0Var2.show();
                this.fightDisconnectDialog.j("加入房间失败");
                this.fightDisconnectDialog.f("请确认手机WIFI功能是否打开，并请确保本机热点处于关闭状态，或重新搜索房间");
                this.fightDisconnectDialog.h(new a());
                this.isConnectSuccessed = false;
                return;
            }
            if (stage != 2) {
                if (stage != 3) {
                    return;
                }
                dismissShowClientLoading();
                if (this.f50333w == null) {
                    this.f50333w = new com.join.mgps.dialog.t2(this, R.style.HKDialogLoading, this.mServerIp);
                }
                if (this.f50333w.isShowing()) {
                    return;
                }
                this.f50333w.show();
                return;
            }
            dismissShowClientLoading();
            com.join.mgps.dialog.t0 t0Var3 = this.fightDisconnectDialog;
            if (t0Var3 != null) {
                t0Var3.dismiss();
            }
            com.join.mgps.dialog.t0 t0Var4 = new com.join.mgps.dialog.t0(this, R.style.HKDialogLoading);
            this.fightDisconnectDialog = t0Var4;
            step = 2;
            t0Var4.show();
            this.fightDisconnectDialog.j("未搜索到可用房间");
            this.fightDisconnectDialog.f("无法搜索到小伙伴创建的热点，请重试");
            this.fightDisconnectDialog.h(new b());
        } catch (Exception unused) {
        }
    }

    @UiThread(delay = BaseCloudFileManager.ACK_TIMEOUT)
    void afterStartGame() {
        closeServer();
        finish();
    }

    @AfterViews
    void afterViews() {
        getWindow().addFlags(128);
        this.downloadTask = q5.f.M().G(this.gameId);
        this.isWranAp = false;
        this.suiji = new Random().nextInt(900) + 100;
        this.gId = this.downloadTask.getCrc_link_type_val();
        this.gName = this.downloadTask.getShowName();
        this.romPath = this.downloadTask.getGameZipPath();
        this.plugin_num = this.downloadTask.getRomType();
        this.mWifiUtils = WifiUtils.getInstance(getApplicationContext());
        if (this.gName.replaceAll(" ", "").length() > 6) {
            this.gName = this.gName.replaceAll(" ", "").substring(0, 6);
        }
        this.mgFightServerManager = new MGFightServerManager(this, this.fightConnectListener);
        this.mgFightClientManager = new MGFightClientManager(this, this.fightConnectListener);
        this.mgWifiFightServerManger = new MGWifiFightServerManger(this, this.fightConnectListener, this.gId, this.gName);
        this.mgWifiFightClientManger = new MGWifiFightClientManger(this, this.fightConnectListener);
        com.papa.sim.statistic.t.l(this).J(this.gId, AccountUtil_.getInstance_(this).getUid());
        this.lcon.setOnClickListener(new c());
        this.beginAnimation = AnimationUtils.loadAnimation(this, R.anim.net_match_btn_alpha);
        this.modeIconWifi.performClick();
        this.btnAnimation = AnimationUtils.loadAnimation(this, R.anim.net_match_btn_alpha);
        this.mPermissionHelper = new ru.alexbykov.nopermission.b(this);
    }

    @Click
    void backClicked() {
        com.join.mgps.Util.g1.g("a---------");
        hideFrame();
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        step = 0;
        this.modeSwitchEnable = true;
        if (!this.isUsing) {
            finish();
            return;
        }
        this.isUsing = false;
        this.waitHint.setText("");
        this.zxing_tip_lay.setVisibility(8);
        revertHint();
        boolean z10 = this.isClient;
        if (!z10) {
            restoreServer();
        } else if (z10) {
            if (this.isConnectSuccessed) {
                restoreClient();
            } else {
                finish();
            }
        }
    }

    @Click
    void clientBtn() {
        int i10;
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        String apSSID = this.mWifiUtils.getApSSID(this);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28 && (i10 = this.mode) == 0) {
            if (!this.isGetPermission && i10 == 0) {
                this.type = 2;
                getDeviceInfo();
                return;
            }
            apSSID = this.mWifiUtils.getApSSIDAll(this);
            this.getSSID = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.t2.h(apSSID)) {
                com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i11 >= 26 && this.mode == 0 && (!com.join.android.app.common.utils.m.k(this) || com.join.mgps.Util.t2.h(apSSID) || !apSSID.contains(this.gName))) {
            com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
            pVar.show();
            pVar.c(r6.c.f96776p + this.gName);
            pVar.e("去连接", new i(pVar));
            return;
        }
        if (i11 < 26 && this.mode != 0 && !com.join.android.app.common.utils.m.k(this)) {
            this.mWifiUtils.OpenWifi();
        }
        if (!this.apBtnEnable) {
            if (this.isClient) {
                return;
            }
            com.join.mgps.Util.a3.b(this).d("你已经是主机");
            return;
        }
        this.clientBtn.setEnabled(false);
        revertHint();
        this.statType = 1;
        com.papa.sim.statistic.t.l(this).H(this.gId, AccountUtil_.getInstance_(this).getUid(), this.statType, q5.f.M().N(this.gId, this));
        this.isUsing = true;
        this.isClient = true;
        this.waitHint.setText("");
        if (this.mode != 0) {
            FightWifiInputDialogActivity_.intent(this).startForResult(9001);
            return;
        }
        showClientLoading(0, "");
        this.mgFightClientManager.setGameName(this.gName);
        this.mgFightClientManager.connect();
    }

    void closeBeginAnim() {
        this.p1status_btn_around_img.setVisibility(8);
        this.p1status_btn_around_img.clearAnimation();
    }

    public void closeServer() {
        if (this.mode == 0) {
            this.mgFightServerManager.disConnect();
            this.mgFightServerManager.shutDown();
        } else {
            this.mgWifiFightServerManger.disConnect();
            this.mgWifiFightServerManger.shutDownServer();
        }
    }

    @Receiver(actions = {k6.b.f92139a})
    public void connectToChosen(final Intent intent) {
        com.join.mgps.dialog.v0 v0Var = this.fightServerChoseDialog;
        if (v0Var != null && v0Var.isShowing()) {
            this.fightServerChoseDialog.dismiss();
        }
        this.wifiInfo = WifiUtils.getInstance(getApplicationContext()).getWifiInfo();
        this.specifiedSSID = intent.getStringExtra(BuildQRCodeActivity_.SSID_EXTRA);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connect to specifiedSSID ::");
        sb2.append(this.specifiedSSID);
        if (this.specifiedSSID == null) {
            return;
        }
        com.join.mgps.dialog.v0 v0Var2 = this.fightServerChoseDialog;
        if (v0Var2 != null) {
            v0Var2.dismiss();
        }
        WifiInfo wifiInfo = this.wifiInfo;
        String ssid = wifiInfo != null ? wifiInfo.getSSID() : "";
        if (ssid == null || !ssid.equals(this.specifiedSSID)) {
            showClientLoading(1, "正在进入房间" + this.specifiedSSID + ",请稍候...");
            this.mgFightClientManager.connectToChosen(this.specifiedSSID);
            this.fightServerChoseDialog.dismiss();
            return;
        }
        showClientLoading(1, "正在进入房间\"" + this.mWifiApList.get(0) + "\",请稍候...");
        try {
            this.mgFightClientManager.connectToChosen();
            this.fightServerChoseDialog.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void disConnectWifiFightAPClient() {
        this.mgFightClientManager.disConnect();
    }

    @Background
    void disConnectWifiFightClient() {
        this.mgWifiFightClientManger.disConnect();
    }

    @Override // com.BaseActivity
    public void dismissLoading() {
        com.join.mgps.dialog.s0 s0Var = this.fightCreateServerDialog;
        if (s0Var != null) {
            s0Var.dismiss();
        }
    }

    @Background
    @Click
    void fightStartClicked() {
        try {
            com.papa.sim.statistic.t.l(this).I(this.gId, AccountUtil_.getInstance_(this).getUid());
            if (this.mode == 0) {
                this.mgFightServerManager.startGame();
            } else {
                this.mgWifiFightServerManger.startGame();
            }
            startGameServer();
            afterStartGame();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void hideFrame() {
        this.ap_net_match_info_1p_frame.setVisibility(4);
        this.ap_net_match_info_2p_frame.setVisibility(4);
    }

    @Click
    void modeIconAP() {
        if (!this.modeSwitchEnable) {
            com.join.mgps.Util.a3.b(this).d("游戏创建成功，您当前无法切换模式哦~");
            return;
        }
        if (this.mode == 1) {
            restoreServer();
            this.modeIconWifi.setImageDrawable(getResources().getDrawable(R.drawable.mode_wifi_pressed));
            this.modeIconAP.setImageDrawable(getResources().getDrawable(R.drawable.mode_ap_normal));
            this.hint.setText(getString(R.string.ap_hint));
            this.mode = 0;
            resetClientBtn();
        }
    }

    @Click
    void modeIconWifi() {
        if (!this.modeSwitchEnable) {
            com.join.mgps.Util.a3.b(this).d("游戏创建成功，您当前无法切换模式哦~");
            return;
        }
        if (this.mode == 0) {
            this.hint.setText(getString(R.string.wifi_hint));
            this.modeIconWifi.setImageDrawable(getResources().getDrawable(R.drawable.mode_wifi_normal));
            this.modeIconAP.setImageDrawable(getResources().getDrawable(R.drawable.mode_ap_pressed));
            this.mode = 1;
            resetClientBtn();
            if (this.isClient) {
                disConnectWifiFightAPClient();
                restoreClient();
            } else {
                closeServer();
                restoreServer();
            }
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.clientBtn.setEnabled(true);
        if (requestCode == 9001 && resultCode == 9002) {
            showClientLoading(1, "正在进入房间,请稍候...");
            String string = data.getExtras().getString("ip");
            this.mServerIp = string;
            this.mgWifiFightClientManger.connect(string, this.gId);
            return;
        }
        if (resultCode == -1 && this.mode == 1) {
            String string2 = data.getExtras().getString("result");
            this.mServerIp = string2;
            if (!checkWifiIp(string2)) {
                com.join.mgps.Util.a3.b(this).d("您扫描的不是WIFI模式联机二维码哦~");
                return;
            } else {
                showClientLoading(1, "正在进入房间,请稍候...");
                this.mgWifiFightClientManger.connect(this.mServerIp, this.gId);
                return;
            }
        }
        if (resultCode != -1 || this.mode != 0) {
            if (requestCode == 89 && this.mode == 0) {
                clientBtn();
                return;
            }
            return;
        }
        String string3 = data.getExtras().getString("result");
        if (!string3.contains("papa") && !string3.contains(this.gName)) {
            com.join.mgps.Util.a3.b(this).d("您扫描的不是热点模式联机二维码哦~");
            return;
        }
        showClientLoading(0, "");
        this.mgFightClientManager.setGameName(this.gName);
        this.mgFightClientManager.connect(string3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        backClicked();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        MGWifiFightServerManger mGWifiFightServerManger = this.mgWifiFightServerManger;
        if (mGWifiFightServerManger != null) {
            mGWifiFightServerManger.unregisterBroadCast();
        }
        MGWifiFightClientManger mGWifiFightClientManger = this.mgWifiFightClientManger;
        if (mGWifiFightClientManger != null) {
            mGWifiFightClientManger.unregisterBroadCast();
        }
        if (this.isClient) {
            disConnectWifiFightAPClient();
        } else {
            this.mgFightServerManager.disConnect();
            this.mgFightServerManager.shutDown();
        }
        this.prefDef.isFightActivity().g(Boolean.FALSE);
        com.join.mgps.dialog.t0 t0Var = this.fightDisconnectDialog;
        if (t0Var != null) {
            t0Var.dismiss();
        }
        MGFightClientManager mGFightClientManager = this.mgFightClientManager;
        if (mGFightClientManager != null) {
            try {
                unregisterReceiver(mGFightClientManager.getmWifiapBroadcast());
            } catch (Exception unused) {
            }
        }
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode != 99998) {
            super.onRequestPermissionsResult(requestCode, permissions, grantResults);
            try {
                this.mPermissionHelper.q(requestCode, permissions, grantResults);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (grantResults[0] == 0) {
            return;
        }
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, com.kuaishou.weapon.p0.g.f74780d)) {
            Toast.makeText(this, "没有获取到权限,对战需要网络权限,请授权网络权限(部分手机显示网络与定位权限)", 0).show();
        } else {
            Toast.makeText(this, "对战需要网络权限,请授权网络权限(部分手机显示网络与定位权限)", 0).show();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
            this.prefDef.ssidBefore().g(this.mWifiUtils.getSSID());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ssid original is ");
            sb2.append(this.mWifiUtils.getSSID());
            this.isWifiConnectedBefore = false;
        } else {
            this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
        }
        com.join.mgps.dialog.t0 t0Var = this.fightDisconnectDialog;
        if (t0Var != null) {
            t0Var.dismiss();
        }
        this.prefDef.isFightActivity().g(Boolean.TRUE);
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    void openBeginAnim() {
        this.p1status_btn_around_img.setVisibility(0);
        this.p1status_btn_around_img.startAnimation(this.btnAnimation);
    }

    void restoreClient() {
        this.modeSwitchEnable = true;
        this.apBtnEnable = true;
        if (this.mode == 0) {
            disConnectWifiFightAPClient();
        } else {
            disConnectWifiFightClient();
        }
        this.fightServerIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        resetClientBtn();
        this.zxingBtn.setVisibility(0);
        this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
        this.serverBrandName.setText("我是主机");
        this.clientBrandName.setText("我是客机");
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        revertHint();
        this.waitHint.setText("");
        this.num.setText("");
        this.lcon.setVisibility(0);
    }

    void restoreServer() {
        this.modeSwitchEnable = true;
        this.apBtnEnable = true;
        this.mgWifiFightServerManger.disConnect();
        this.mgWifiFightServerManger.shutDown();
        this.mWifiUtils.setHotSpot(this.apName, r6.c.f96777q, false);
        this.mgFightServerManager.disConnect();
        this.mgFightServerManager.shutDown();
        this.mgWifiFightServerManger.shutDownServer();
        this.fightStart.setVisibility(8);
        this.fightServerIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        closeBeginAnim();
        hideFrame();
        this.serverBrandName.setText("我是主机");
        this.serverBtn.setVisibility(0);
        this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
        this.clientBrandName.setText("我是客机");
        resetClientBtn();
        this.zxingBtn.setVisibility(0);
        this.zxingBtn.setVisibility(0);
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        revertHint();
        this.lcon.setVisibility(0);
        this.num.setText("");
        this.waitHint.setText("");
        this.mWifiUtils.openWifi(this);
    }

    void revertHint() {
        int i10 = this.mode;
        if (i10 == 0) {
            this.hint.setText(getString(R.string.ap_hint));
        } else if (i10 == 1) {
            this.hint.setText(getString(R.string.wifi_hint));
        }
    }

    @Click
    void serverBtn() {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (!this.apBtnEnable) {
            if (this.isClient) {
                com.join.mgps.Util.a3.b(this).d("你已经是客机");
                return;
            }
            return;
        }
        this.isUsing = true;
        com.join.mgps.Util.g1.g("aisUsing----" + this.isUsing);
        this.isClient = false;
        com.papa.sim.statistic.t.l(this).D(this.gId, AccountUtil_.getInstance_(this).getUid());
        this.serverBtn.setEnabled(false);
        createServer();
    }

    @Override // com.BaseActivity
    public void showLoading() {
        com.join.mgps.dialog.s0 s0Var = new com.join.mgps.dialog.s0(this, R.style.HKDialogLoading);
        this.fightCreateServerDialog = s0Var;
        try {
            s0Var.show();
        } catch (Exception unused) {
        }
    }

    void showP1Frame() {
        this.ap_net_match_info_1p_frame.setVisibility(0);
    }

    void showP2Frame() {
        this.ap_net_match_info_2p_frame.setVisibility(0);
    }

    @UiThread
    void startGameClient() {
        UtilsMy.t4(this, this.gId, this.romPath, this.plugin_num, 2, com.join.mgps.socket.entity.b.f73007i, this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    @UiThread
    void startGameClientWifi() {
        UtilsMy.t4(this, this.gId, this.romPath, this.plugin_num, 2, this.mServerIp, this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    @UiThread
    void startGameServer() {
        UtilsMy.t4(this, this.gId, this.romPath, this.plugin_num, 1, "", this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    @Click
    void zxingBtn() {
        int i10;
        String apSSID = this.mWifiUtils.getApSSID(this);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28 && (i10 = this.mode) == 0) {
            if (!this.isGetPermission && i10 == 0) {
                this.type = 1;
                getDeviceInfo();
                return;
            }
            apSSID = this.mWifiUtils.getApSSIDAll(this);
            this.getSSID = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.t2.h(apSSID)) {
                com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i11 >= 26 && this.mode == 0 && (!com.join.android.app.common.utils.m.k(this) || com.join.mgps.Util.t2.h(apSSID) || !apSSID.contains(this.gName))) {
            com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
            pVar.show();
            pVar.c(r6.c.f96776p + this.gName);
            pVar.e("去连接", new g(pVar));
            return;
        }
        if (!com.join.android.app.common.utils.m.k(this)) {
            this.mWifiUtils.OpenWifi();
        }
        if (!this.apBtnEnable) {
            if (this.isClient) {
                return;
            }
            com.join.mgps.Util.a3.b(this).d("你已经是主机");
            return;
        }
        revertHint();
        this.isUsing = true;
        this.isClient = true;
        this.waitHint.setText("");
        this.statType = 2;
        com.papa.sim.statistic.t.l(this).H(this.gId, AccountUtil_.getInstance_(this).getUid(), this.statType, q5.f.M().N(this.gId, this));
        new com.tbruyelle.rxpermissions2.c(this).r("android.permission.CAMERA").subscribe(new h());
    }

    @Click
    void zxingCloseBtn() {
        this.zxing_lay.setVisibility(8);
    }

    @Click
    void zxingTipBtn() {
        this.zxing_lay.setVisibility(0);
    }
}
