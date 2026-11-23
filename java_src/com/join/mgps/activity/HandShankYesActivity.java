package com.join.mgps.activity;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.handshank_layout_yes)
public class HandShankYesActivity extends HandShankBaseActivity {
    private d adapter;
    private LinkedList<HandShankTable> data;
    private List<HandShankTable> dataBaseInfos;

    @ViewById
    FrameLayout handshank_tip_lay;

    @ViewById
    ListView listview;

    @ViewById
    HandShankAdView mAdView;
    private ArrayList<ControllerManager.c> mGameControllers;
    public ArrayList<HandShankTable> onLineHandShankTableInfos = new ArrayList<>();

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
            if (HandShankYesActivity.this.haveConnectedDevices()) {
                HandShankMapKeyActivity_.intent(HandShankYesActivity.this).start();
            } else {
                com.join.mgps.Util.a3.b(HandShankYesActivity.this).d("请先连接手柄！");
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.b1 f53905b;

        b(final com.join.mgps.dialog.b1 val$handShankDialog) {
            this.f53905b = val$handShankDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f53905b.dismiss();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.b1 f53907b;

        c(final com.join.mgps.dialog.b1 val$handShankDialog) {
            this.f53907b = val$handShankDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankYesActivity.this.startActivity(new Intent(HandShankYesActivity.this, (Class<?>) HandShankCheckKeyActivity_.class));
            this.f53907b.dismiss();
        }
    }

    private void handleChanged(List<ControllerManager.c> list) {
        try {
            if (this.mGameControllers == null) {
                this.mGameControllers = new ArrayList<>();
            }
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                arrayList.addAll(getValidDevice(list));
            }
            this.onLineHandShankTableInfos.clear();
            if (arrayList.size() != 0) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ControllerManager.c cVar = (ControllerManager.c) arrayList.get(i10);
                    HandShankTable handShankTable = new HandShankTable();
                    handShankTable.setName(cVar.d());
                    handShankTable.setAddress(cVar.a());
                    handShankTable.setTime(Long.valueOf(System.currentTimeMillis()));
                    Boolean bool = Boolean.TRUE;
                    handShankTable.setIsConnect(bool);
                    if (!this.onLineHandShankTableInfos.contains(handShankTable)) {
                        this.onLineHandShankTableInfos.add(handShankTable);
                        this.data.remove(handShankTable);
                        this.data.addFirst(handShankTable);
                        refreshConnectState(bool);
                    }
                }
                this.handshank_tip_lay.setVisibility(8);
                this.adapter.notifyDataSetChanged();
            } else {
                refreshConnectState(Boolean.FALSE);
            }
            this.mGameControllers.clear();
            if (list != null) {
                this.mGameControllers.addAll(arrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean haveConnectedDevices() {
        LinkedList<HandShankTable> linkedList = this.data;
        boolean z10 = false;
        if (linkedList != null && linkedList.size() > 0) {
            synchronized (this.data) {
                Iterator<HandShankTable> it2 = this.data.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getIsConnect().booleanValue()) {
                        z10 = true;
                        break;
                    }
                }
            }
        }
        return z10;
    }

    private void initView() {
        this.rightButn.setVisibility(0);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.handshank_list_foot, (ViewGroup) null);
        this.dataBaseInfos = new ArrayList();
        this.data = new LinkedList<>();
        this.dataBaseInfos.addAll(t6.x.p().o());
        this.data.addAll(this.dataBaseInfos);
        this.adapter = new d(this, null);
        this.listview.addFooterView(viewInflate);
        this.listview.setAdapter((ListAdapter) this.adapter);
        viewInflate.findViewById(R.id.lay_2).setOnClickListener(new a());
        if (isBlueEnabled()) {
            this.handshank_tip_lay.setVisibility(8);
        } else if (haveConnectedDevices()) {
            this.handshank_tip_lay.setVisibility(8);
        } else {
            this.handshank_tip_lay.setVisibility(0);
        }
    }

    private void notifyNoDeviceConnect() {
        FrameLayout frameLayout = this.handshank_tip_lay;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        this.dataBaseInfos = t6.x.p().o();
        this.data.clear();
        this.data.addAll(this.dataBaseInfos);
        this.adapter.notifyDataSetChanged();
    }

    private void parseConnectBlue() {
        this.handshank_tip_lay.setVisibility(8);
        HandShankTable handShankTable = null;
        for (HandShankTable handShankTable2 : this.onLineHandShankTableInfos) {
            if (!this.dataBaseInfos.contains(handShankTable2)) {
                sendJoystickInfo(handShankTable2);
                handShankTable = handShankTable2;
            }
        }
        if (handShankTable != null) {
            showDialog(handShankTable.getName());
        }
        this.dataBaseInfos = t6.x.p().o();
        this.data.clear();
        this.data.addAll(this.onLineHandShankTableInfos);
        this.dataBaseInfos.removeAll(this.onLineHandShankTableInfos);
        this.data.addAll(this.dataBaseInfos);
        this.adapter.notifyDataSetChanged();
        this.dataBaseInfos.clear();
        this.dataBaseInfos.addAll(this.data);
        saveDataBase(this.data);
    }

    private void showDialog(String name) {
        com.join.mgps.dialog.b1 b1Var = new com.join.mgps.dialog.b1(this);
        b1Var.c(name);
        b1Var.a(new b(b1Var));
        b1Var.b(new c(b1Var));
        b1Var.show();
    }

    @AfterViews
    void afterView() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        loadAdData();
        com.papa.sim.statistic.t.l(this).c0(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).isTourist(), "", "", 0);
        initView();
    }

    @Click
    void backImage() {
        finish();
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
        handleChanged(controllerDevices);
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

    protected synchronized void refreshConnectState(Boolean isConnect) {
        if (isConnect.booleanValue()) {
            parseConnectBlue();
        } else {
            notifyNoDeviceConnect();
        }
    }

    @Click
    void rightButn() {
        if (BluetoothAdapter.getDefaultAdapter() != null) {
            startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
        } else {
            ToastManager.show("设备不支持蓝牙，无法连接");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void saveDataBase(List<HandShankTable> dataBaseInfos) {
        try {
            synchronized (t6.x.p()) {
                for (HandShankTable handShankTable : dataBaseInfos) {
                    if (!com.join.mgps.joystick.map.a.b().f(handShankTable.getName())) {
                        t6.x.p().n(handShankTable);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendJoystickInfo(HandShankTable handShankTable) {
        if (t6.x.p().q(handShankTable.getAddress())) {
            return;
        }
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

    private class d extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f53909b;

        private d() {
            this.f53909b = getClass().getSimpleName();
        }

        private boolean a(String mac) {
            return Pattern.compile("^[A-F0-9]{2}(:[A-F0-9]{2}){5}$").matcher(mac.toUpperCase()).find();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return HandShankYesActivity.this.data.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return HandShankYesActivity.this.data.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x00f3 A[Catch: Exception -> 0x0104, TryCatch #0 {Exception -> 0x0104, blocks: (B:3:0x0002, B:4:0x0010, B:6:0x002f, B:8:0x00a2, B:10:0x00f3, B:11:0x00fb, B:7:0x0069), top: B:16:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:11:0x00fb A[Catch: Exception -> 0x0104, TRY_LEAVE, TryCatch #0 {Exception -> 0x0104, blocks: (B:3:0x0002, B:4:0x0010, B:6:0x002f, B:8:0x00a2, B:10:0x00f3, B:11:0x00fb, B:7:0x0069), top: B:16:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:6:0x002f A[Catch: Exception -> 0x0104, TryCatch #0 {Exception -> 0x0104, blocks: (B:3:0x0002, B:4:0x0010, B:6:0x002f, B:8:0x00a2, B:10:0x00f3, B:11:0x00fb, B:7:0x0069), top: B:16:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:7:0x0069 A[Catch: Exception -> 0x0104, TryCatch #0 {Exception -> 0x0104, blocks: (B:3:0x0002, B:4:0x0010, B:6:0x002f, B:8:0x00a2, B:10:0x00f3, B:11:0x00fb, B:7:0x0069), top: B:16:0x0002 }] */
        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String address;
            if (view == null) {
                try {
                    view = LayoutInflater.from(HandShankYesActivity.this).inflate(R.layout.handshank_item, (ViewGroup) null);
                    if (((HandShankTable) HandShankYesActivity.this.data.get(i10)).getIsConnect().booleanValue()) {
                        ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_on_icon);
                        ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_open_icon);
                        ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_connected_txt));
                        ((TextView) view.findViewById(R.id.dsc)).setText("已连接");
                    } else {
                        ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_off_icon);
                        ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_disconnected_txt));
                        ((TextView) view.findViewById(R.id.dsc)).setText("未连接");
                        ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_close_icon);
                    }
                    ((TextView) view.findViewById(R.id.handshank_name)).setText(((HandShankTable) HandShankYesActivity.this.data.get(i10)).getName());
                    address = ((HandShankTable) HandShankYesActivity.this.data.get(i10)).getAddress();
                    com.join.mgps.Util.h1.e(this.f53909b, "device address=" + address);
                    if (a(address)) {
                        view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(0);
                    } else {
                        view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(4);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                if (((HandShankTable) HandShankYesActivity.this.data.get(i10)).getIsConnect().booleanValue()) {
                    ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_on_icon);
                    ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_open_icon);
                    ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_connected_txt));
                    ((TextView) view.findViewById(R.id.dsc)).setText("已连接");
                } else {
                    ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_off_icon);
                    ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_disconnected_txt));
                    ((TextView) view.findViewById(R.id.dsc)).setText("未连接");
                    ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_close_icon);
                }
                ((TextView) view.findViewById(R.id.handshank_name)).setText(((HandShankTable) HandShankYesActivity.this.data.get(i10)).getName());
                address = ((HandShankTable) HandShankYesActivity.this.data.get(i10)).getAddress();
                com.join.mgps.Util.h1.e(this.f53909b, "device address=" + address);
                if (a(address)) {
                    view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(0);
                } else {
                    view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(4);
                }
            }
            return view;
        }

        /* synthetic */ d(HandShankYesActivity handShankYesActivity, a aVar) {
            this();
        }
    }
}
