package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.BaseFragmentActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.fragment.MyArchiveFragment;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q.rorbin.badgeview.QBadgeView;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_document_manage)
public class DocumentManageActivity extends BaseFragmentActivity {

    @Extra
    public static int from = 1;
    private UserInfo accountBean;

    @ViewById
    LinearLayout archive_back;
    Context context;
    com.github.snowdream.android.app.downloader.b factory;

    @ViewById
    FrameLayout frag;

    @Extra
    String gameid;
    IntentFilter intentFilter;

    @ViewById
    ImageView iv_myarchive_open;

    @ViewById
    ImageView iv_shop_open;
    private com.github.snowdream.android.app.downloader.b.InterfaceC0591b listener;

    @ViewById
    LinearLayout ll_manage;
    LocalBroadcastManager localBroadcastManager;
    MyArchiveFragment localFragment;
    private q.rorbin.badgeview.a messagebadge1;
    MyArchiveFragment myArch;
    com.join.mgps.fragment.b4 myShop;
    com.join.mgps.fragment.b4 myShopbuy;
    ArchiveNumDataBean numDataBean;
    PopupWindow popupWindow;

    @Pref
    PrefDef_ pref;
    com.join.mgps.dialog.x progressDialogForDown;
    QuitReceive quitReceive;

    @ViewById
    RadioButton rb_buy;

    @ViewById
    RadioButton rb_colud;

    @ViewById
    RadioButton rb_local;

    @ViewById
    RadioButton rb_remoned;
    List<RomArchived> recordRoms;

    @ViewById
    RadioGroup rg_myarchive;

    @ViewById
    RadioGroup rg_myshop;

    @ViewById
    RelativeLayout rl_bg;

    @ViewById
    RelativeLayout rl_myarchive;

    @ViewById
    RelativeLayout rl_shop;
    com.join.mgps.rpc.d rpcClient;

    @ViewById
    SimpleDraweeView simdw;

    @ViewById
    TextView tv_manage;

    @ViewById
    TextView tv_myarchive_size;

    @ViewById
    TextView tv_red;

    @ViewById
    TextView tv_shop_size;
    private TextView tv_time;
    Fragment fg = null;
    int downNumber = 1;
    int downNumberNow = 0;
    int showTyep = 1;
    public boolean isVBA = false;
    public boolean marcketDownEnable = true;
    public boolean marcketPGNEnable = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f51230s = true;
    int time = 5;

    @SuppressLint({"HandlerLeak"})
    Handler handler = new c();
    boolean isArchiveOpen = false;
    boolean isArchiveShop = false;
    boolean is_llManage = false;
    Map<String, CloudListDataBean> listDataBeans = new HashMap();

    class QuitReceive extends BroadcastReceiver {
        QuitReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity.this.is_llManage = false;
        }
    }

    class a implements com.join.mgps.dialog.x.c {
        a() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            dialog.dismiss();
        }
    }

    class b implements com.join.mgps.dialog.x.c {
        b() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            DocumentManageActivity.this.factory.i();
            dialog.dismiss();
        }
    }

    class c extends Handler {
        c() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 != 3) {
                if (i10 != 4) {
                    return;
                }
                DocumentManageActivity.this.handler.removeMessages(3);
                return;
            }
            DocumentManageActivity.this.tv_time.setText(DocumentManageActivity.this.time + "s");
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i11 = documentManageActivity.time + (-1);
            documentManageActivity.time = i11;
            if (i11 < 0) {
                documentManageActivity.popupWindow.dismiss();
                return;
            }
            Message message = new Message();
            message.what = 3;
            DocumentManageActivity.this.handler.sendMessageDelayed(message, 1000L);
        }
    }

    class d implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {
        d() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i10 = documentManageActivity.downNumberNow + 1;
            documentManageActivity.downNumberNow = i10;
            if (documentManageActivity.downNumber == i10) {
                documentManageActivity.progressDialogForDown.dismiss();
            }
            DocumentManageActivity.this.factory.l(url);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(6);
            iVar.f(cloudListDataBean);
            iVar.j(6);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            if (documentManageActivity.downNumber == documentManageActivity.downNumberNow) {
                documentManageActivity.progressDialogForDown.dismiss();
            }
            DocumentManageActivity documentManageActivity2 = DocumentManageActivity.this;
            int i10 = documentManageActivity2.downNumber;
            if (i10 == documentManageActivity2.downNumberNow && i10 > 1) {
                DocumentManageActivity.this.localBroadcastManager.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
            }
            DocumentManageActivity documentManageActivity3 = DocumentManageActivity.this;
            documentManageActivity3.downNumberNow++;
            documentManageActivity3.factory.l(url);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            if (cloudListDataBean.getArchiveFilePath().contains(com.join.mgps.Util.z.f50169h)) {
                DocumentManageActivity.this.downFinishToCopy(cloudListDataBean);
                return;
            }
            CloudDownRecoderTable cloudDownRecoderTable = new CloudDownRecoderTable();
            cloudDownRecoderTable.setGameId(DocumentManageActivity.this.gameid);
            cloudDownRecoderTable.setFilePath(cloudListDataBean.getArchiveFilePath());
            cloudDownRecoderTable.setFileName(cloudListDataBean.getArchiveFileName());
            cloudDownRecoderTable.setMd5(cloudListDataBean.getFileMd5());
            t6.i.o().k(cloudDownRecoderTable);
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(0);
            iVar.f(cloudListDataBean);
            iVar.j(0);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            String str = UtilsMy.f((cloudListDataBean.getFileSize() * ((long) progress)) / 100) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(cloudListDataBean.getFileSize()) + "K";
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(3);
            iVar.f(cloudListDataBean);
            iVar.j(3);
            iVar.g(speed);
            iVar.i(progress);
            iVar.h(str);
            org.greenrobot.eventbus.c.f().q(iVar);
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i10 = documentManageActivity.downNumber;
            if (i10 > 1) {
                if (i10 != 0) {
                    documentManageActivity.progressDialogForDown.c(DocumentManageActivity.this.downNumberNow + net.lingala.zip4j.util.e.F0 + DocumentManageActivity.this.downNumber, iVar.b(), iVar.d());
                    return;
                }
                return;
            }
            com.join.mgps.dialog.x xVar = documentManageActivity.progressDialogForDown;
            if (xVar != null) {
                xVar.c(iVar.c(), iVar.b() + "/S", iVar.d());
            }
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i10 = documentManageActivity.downNumber;
            if (i10 == 1 || i10 == 0) {
                return;
            }
            documentManageActivity.progressDialogForDown.c(DocumentManageActivity.this.downNumberNow + net.lingala.zip4j.util.e.F0 + DocumentManageActivity.this.downNumber, "0K", 100 / DocumentManageActivity.this.downNumber);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i10 = documentManageActivity.downNumberNow + 1;
            documentManageActivity.downNumberNow = i10;
            if (documentManageActivity.downNumber == i10) {
                documentManageActivity.progressDialogForDown.dismiss();
            }
            DocumentManageActivity.this.factory.l(url);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(6);
            iVar.f(cloudListDataBean);
            iVar.j(6);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }

    public static long date2TimeStamp(String date_str, String format) {
        try {
            return new SimpleDateFormat(format).parse(date_str).getTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    private ArchiveColudArgs getArchiveCouldArgs() {
        if (this.accountBean == null) {
            return RequestBeanUtil.getInstance(this.context).getArchiveNum("", "", this.gameid);
        }
        return RequestBeanUtil.getInstance(this.context).getArchiveNum(this.accountBean.getUid() + "", this.accountBean.getToken(), this.gameid);
    }

    private void initListener() {
        this.factory = com.github.snowdream.android.app.downloader.b.e();
        d dVar = new d();
        this.listener = dVar;
        this.factory.m(dVar);
        this.factory.i();
    }

    private boolean isActivityVisible() {
        return getWindow().getDecorView().getVisibility() == 0;
    }

    private void setTypeFragment(int type) {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        hideAllFragment(fragmentTransactionBeginTransaction);
        Bundle bundle = new Bundle();
        bundle.putString("gameid", this.gameid);
        bundle.putInt("type", type);
        if (type == 1) {
            MyArchiveFragment myArchiveFragment = this.myArch;
            if (myArchiveFragment == null) {
                com.join.mgps.fragment.a4 a4Var = new com.join.mgps.fragment.a4();
                this.myArch = a4Var;
                a4Var.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag, this.myArch);
            } else {
                fragmentTransactionBeginTransaction.show(myArchiveFragment);
            }
        } else if (type == 2) {
            MyArchiveFragment myArchiveFragment2 = this.localFragment;
            if (myArchiveFragment2 == null) {
                com.join.mgps.fragment.a4 a4Var2 = new com.join.mgps.fragment.a4();
                this.localFragment = a4Var2;
                a4Var2.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag, this.localFragment);
            } else {
                fragmentTransactionBeginTransaction.show(myArchiveFragment2);
            }
        } else if (type == 3) {
            com.join.mgps.fragment.b4 b4Var = this.myShop;
            if (b4Var == null) {
                com.join.mgps.fragment.c4 c4Var = new com.join.mgps.fragment.c4();
                this.myShop = c4Var;
                c4Var.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag, this.myShop);
            } else {
                fragmentTransactionBeginTransaction.show(b4Var);
            }
        } else {
            com.join.mgps.fragment.b4 b4Var2 = this.myShopbuy;
            if (b4Var2 == null) {
                com.join.mgps.fragment.c4 c4Var2 = new com.join.mgps.fragment.c4();
                this.myShopbuy = c4Var2;
                c4Var2.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frag, this.myShopbuy);
            } else {
                fragmentTransactionBeginTransaction.show(b4Var2);
            }
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public void HideRadioButtonBg() {
        this.rb_local.setTextColor(getResources().getColor(R.color.archive_txt));
        this.rb_colud.setTextColor(getResources().getColor(R.color.archive_txt));
        this.rb_remoned.setTextColor(getResources().getColor(R.color.archive_txt));
        this.rb_buy.setTextColor(getResources().getColor(R.color.archive_txt));
        this.rb_local.setBackgroundResource(R.drawable.archive_local);
        this.rb_colud.setBackgroundResource(R.drawable.archive_local);
        this.rb_remoned.setBackgroundResource(R.drawable.archive_local);
        this.rb_buy.setBackgroundResource(R.drawable.archive_local);
    }

    @AfterViews
    void afterViews() {
        this.context = this;
        this.rl_myarchive.setVisibility(0);
        this.rl_shop.setVisibility(0);
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.rg_myshop.setVisibility(8);
        this.quitReceive = new QuitReceive();
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("com.join.mgps.activity.quitManage");
        this.localBroadcastManager = LocalBroadcastManager.getInstance(this.context);
        this.rpcClient = com.join.mgps.rpc.impl.c.k();
        this.iv_myarchive_open.setBackgroundResource(R.drawable.archive_down);
        this.localBroadcastManager.registerReceiver(this.quitReceive, this.intentFilter);
        int dimension = (int) getResources().getDimension(R.dimen.wdp916);
        int dimension2 = (int) getResources().getDimension(R.dimen.wdp667);
        int dimension3 = (int) getResources().getDimension(R.dimen.wdp27);
        getResources().getDimension(R.dimen.wdp343);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((dimension * (getResources().getDisplayMetrics().heightPixels - (dimension3 * 2))) / dimension2, -1);
        layoutParams.leftMargin = dimension3;
        layoutParams.topMargin = dimension3;
        layoutParams.bottomMargin = dimension3;
        this.rl_bg.setLayoutParams(layoutParams);
        HideRadioButtonBg();
        this.rb_local.setBackgroundResource(R.drawable.archive_bg_left);
        HideRadioButtonBg();
        this.rg_myshop.setVisibility(0);
        this.ll_manage.setVisibility(8);
        this.iv_shop_open.setBackgroundResource(R.drawable.archive_down);
        this.rb_remoned.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_remoned.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(3);
        getNum();
        initListener();
        this.progressDialogForDown = new com.join.mgps.dialog.x(this, R.style.HKDialogLoading).f("存档下载中").e("取消下载").b("后台运行").d(new b()).a(new a());
    }

    @Click
    void archive_back() {
        if (!this.is_llManage) {
            finish();
        }
        if (isFromEMU()) {
            com.join.mgps.va.overmind.i.q().g();
        }
    }

    void dispopuwindow() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downFinishToCopy(CloudListDataBean dataBean) {
        DownloadTask downloadTaskG = q5.f.M().G(this.gameid);
        String strM4 = UtilsMy.M4(downloadTaskG.getGameZipPath());
        String strD2 = UtilsMy.d2(Integer.parseInt(downloadTaskG.getPlugin_num()));
        File file = new File(com.join.mgps.Util.z.f50164c);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        String str = File.separator;
        sb2.append(str);
        sb2.append("papa91");
        sb2.append(str);
        sb2.append(strD2);
        sb2.append(str);
        String string = sb2.toString();
        String strSubstring = strM4.substring(strM4.lastIndexOf(47) + 1, strM4.length());
        File file2 = new File(string + strSubstring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str2 = new String(string + strSubstring + str + dataBean.getArchiveFileName());
        if (new File(dataBean.getArchiveFilePath()).exists()) {
            boolean zF = com.join.mgps.Util.o0.f(dataBean.getArchiveFilePath(), str2);
            downLodingImage(dataBean.getArchiveCover(), file2.getAbsolutePath() + str, dataBean.getArchiveFileName() + ".png");
            if (zF) {
                UtilsMy.delete(new File(dataBean.getArchiveFilePath()));
                dataBean.setArchiveFilePath(str2);
            }
            updateStatu(dataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downLodingImage(String imageUrl, String filePath, String fileName) {
        File file = null;
        try {
            File file2 = new File(filePath);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(filePath + fileName);
            try {
                if (file3.exists()) {
                    UtilsMy.delete(file3);
                }
                file3.createNewFile();
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                if (httpURLConnection.getResponseCode() != 200) {
                    if (file3.exists()) {
                        UtilsMy.delete(file3);
                        return;
                    }
                    return;
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        inputStream.close();
                        fileOutputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (Exception e10) {
                e = e10;
                file = file3;
                try {
                    e.printStackTrace();
                    if (file == null || !file.exists()) {
                        return;
                    }
                    UtilsMy.delete(file);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getNum() {
        try {
            ArchiveNumDataBean archiveNumDataBeanI = this.rpcClient.i(getArchiveCouldArgs().getArgs());
            this.numDataBean = archiveNumDataBeanI;
            if (archiveNumDataBeanI == null || archiveNumDataBeanI.getCode() != 600) {
                return;
            }
            if (this.numDataBean.getData_info().getTitle() != null) {
                MApplication.Q = true;
                MApplication.R = this.numDataBean.getData_info().getTitle();
                MApplication.S = this.numDataBean.getData_info().getPid();
                getShowTitle();
            }
            if (this.numDataBean.getData_info().getHasNoComment() == 1) {
                showRedPoint();
            }
            this.pref.getArchiveCoinPref().g(Integer.valueOf(this.numDataBean.getData_info().getArchiveCoin()));
            this.pref.cloudVipLink().g(this.numDataBean.getData_info().getVipLink());
            DownloadTask downloadTaskG = q5.f.M().G(this.gameid);
            if (downloadTaskG == null) {
                upNum(0);
                return;
            }
            this.recordRoms = com.join.mgps.Util.o3.n(downloadTaskG.getPlugin_num(), downloadTaskG.getGameZipPath());
            if (downloadTaskG.getPlugin_num().equals("31")) {
                Iterator<RomArchived> it2 = this.recordRoms.iterator();
                boolean z10 = false;
                boolean z11 = false;
                while (it2.hasNext()) {
                    if (it2.next().getFileName().contains("_v2")) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                }
                Iterator<RomArchived> it3 = this.recordRoms.iterator();
                while (it3.hasNext()) {
                    RomArchived next = it3.next();
                    if (z11 && !z10) {
                        this.marcketDownEnable = false;
                        if (!com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            it3.remove();
                        }
                    } else if (z11 && z10) {
                        if (com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            this.marcketPGNEnable = false;
                            if (next.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                }
            }
            if (downloadTaskG.getPlugin_num().equals("33")) {
                RomArchived romArchived = null;
                long j10 = 0;
                for (RomArchived romArchived2 : this.recordRoms) {
                    long jDate2TimeStamp = date2TimeStamp(romArchived2.getArchivedTime(), "MM月dd日 HH:mm");
                    if (j10 == 0) {
                        romArchived = romArchived2;
                        j10 = jDate2TimeStamp;
                    }
                    if (j10 > jDate2TimeStamp) {
                        romArchived = romArchived2;
                        j10 = jDate2TimeStamp;
                    }
                }
                if (romArchived != null && romArchived.getFileName().contains("vba")) {
                    setIsVBA(true);
                }
            }
            List<RomArchived> list = this.recordRoms;
            if (list != null) {
                upNum(list.size());
            } else {
                upNum(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void getShowTitle() {
        com.join.mgps.fragment.b4 b4Var = this.myShop;
        if (b4Var != null) {
            b4Var.M();
        }
    }

    public void hideAllFragment(FragmentTransaction fragmentTransaction) {
        MyArchiveFragment myArchiveFragment = this.myArch;
        if (myArchiveFragment != null) {
            fragmentTransaction.hide(myArchiveFragment);
        }
        MyArchiveFragment myArchiveFragment2 = this.localFragment;
        if (myArchiveFragment2 != null) {
            fragmentTransaction.hide(myArchiveFragment2);
        }
        com.join.mgps.fragment.b4 b4Var = this.myShop;
        if (b4Var != null) {
            fragmentTransaction.hide(b4Var);
        }
        com.join.mgps.fragment.b4 b4Var2 = this.myShopbuy;
        if (b4Var2 != null) {
            fragmentTransaction.hide(b4Var2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        q.rorbin.badgeview.a aVar = this.messagebadge1;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    public boolean isFromEMU() {
        return from == 2;
    }

    @Click
    void ll_manage() {
        if (this.is_llManage) {
            return;
        }
        this.is_llManage = true;
        this.tv_manage.setText("批量模式");
        this.localBroadcastManager.sendBroadcast(new Intent("com.join.mgps.activity.joinManage"));
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.github.snowdream.android.app.downloader.b.InterfaceC0591b interfaceC0591b;
        super.onDestroy();
        dispopuwindow();
        com.github.snowdream.android.app.downloader.b bVar = this.factory;
        if (bVar != null && (interfaceC0591b = this.listener) != null) {
            bVar.j(interfaceC0591b);
        }
        this.localBroadcastManager.unregisterReceiver(this.quitReceive);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.i cloudEvent) {
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (isFromEMU()) {
                com.join.mgps.va.overmind.i.q().g();
            }
            if (this.is_llManage) {
                return true;
            }
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        initListener();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus && this.showTyep == 2 && this.f51230s) {
            this.f51230s = false;
            showPopuwindow(2);
        }
    }

    @Click
    void rb_buy() {
        if (this.is_llManage) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("无网络链接");
            return;
        }
        UserInfo userInfo = this.accountBean;
        if (userInfo == null || userInfo.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            IntentUtil.getInstance().goLogin(this.context);
            return;
        }
        HideRadioButtonBg();
        dispopuwindow();
        showPopuwindow(4);
        this.ll_manage.setVisibility(8);
        this.rb_buy.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_buy.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(4);
        hideRedPoint();
        ArchiveNumDataBean archiveNumDataBean = this.numDataBean;
        if (archiveNumDataBean == null || archiveNumDataBean.getData_info() == null || this.numDataBean.getData_info().getHasNoComment() != 1) {
            return;
        }
        this.numDataBean.getData_info().setHasNoComment(0);
    }

    @Click
    void rb_colud() {
        if (this.is_llManage) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("无网络链接");
            return;
        }
        UserInfo userInfo = this.accountBean;
        if (userInfo == null || userInfo.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            IntentUtil.getInstance().goLogin(this.context);
            return;
        }
        dispopuwindow();
        showPopuwindow(1);
        HideRadioButtonBg();
        this.ll_manage.setVisibility(0);
        this.rb_colud.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_colud.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(1);
    }

    @Click
    void rb_local() {
        if (this.is_llManage) {
            return;
        }
        dispopuwindow();
        showPopuwindow(2);
        HideRadioButtonBg();
        this.ll_manage.setVisibility(0);
        this.rb_local.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_local.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(2);
    }

    @Click
    @RequiresApi(api = 21)
    void rb_remoned() {
        if (this.is_llManage) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("无网络链接");
            return;
        }
        dispopuwindow();
        showPopuwindow(3);
        HideRadioButtonBg();
        this.ll_manage.setVisibility(8);
        this.rb_remoned.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_remoned.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(3);
    }

    @Receiver(actions = {p5.a.f96198h0})
    void recvedDownData(Intent intent) {
        if (isActivityVisible()) {
            this.downNumber = 1;
            this.downNumberNow = 1;
            CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("downCloud");
            this.listDataBeans.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
            String archiveFileName = cloudListDataBean.getArchiveFileName();
            String str = new File(cloudListDataBean.getArchiveFilePath()).getParent() + File.separator;
            cloudListDataBean.setStatus(3);
            this.factory.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, str, cloudListDataBean.getFileSize()));
            org.greenrobot.eventbus.c.f().q(cloudListDataBean);
            this.progressDialogForDown.show();
            this.progressDialogForDown.c("1/" + UtilsMy.f(cloudListDataBean.getFileSize()) + "K", "0", 1);
        }
    }

    @Receiver(actions = {"com.cloud.downCloud.all"})
    void recvedDownDatav2(Intent intent) {
        if (isActivityVisible()) {
            List<CloudListDataBean> list = (List) intent.getSerializableExtra("downClouds");
            this.downNumber = list.size();
            this.progressDialogForDown.show();
            this.progressDialogForDown.c("1/" + list.size(), "0K", 1);
            this.downNumberNow = 1;
            if (this.downNumber != 0) {
                this.progressDialogForDown.c("1/" + list.size(), "0K", 100 / this.downNumber);
            }
            for (CloudListDataBean cloudListDataBean : list) {
                this.listDataBeans.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.join.mgps.Util.z.f50169h);
                String str = File.separator;
                sb2.append(str);
                sb2.append(cloudListDataBean.getArchiveFileName());
                cloudListDataBean.setArchiveFilePath(sb2.toString());
                String str2 = new File(cloudListDataBean.getArchiveFilePath()).getParent() + str;
                cloudListDataBean.setStatus(3);
                this.factory.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, str2, cloudListDataBean.getFileSize()));
                org.greenrobot.eventbus.c.f().q(cloudListDataBean);
            }
        }
    }

    @Click
    void rl_myarchive() {
        if (this.is_llManage) {
            return;
        }
        if (!this.isArchiveOpen) {
            this.iv_myarchive_open.setBackgroundResource(R.drawable.archive_up);
            this.rb_local.setVisibility(8);
            this.rb_colud.setVisibility(8);
            this.isArchiveOpen = true;
            return;
        }
        HideRadioButtonBg();
        dispopuwindow();
        showPopuwindow(2);
        this.ll_manage.setVisibility(0);
        this.rb_local.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_local.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(2);
        this.iv_myarchive_open.setBackgroundResource(R.drawable.archive_down);
        this.rb_local.setVisibility(0);
        this.rb_colud.setVisibility(0);
        this.isArchiveOpen = false;
    }

    @Click
    void rl_shop() {
        if (this.is_llManage) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("无网络链接");
            return;
        }
        if (!this.isArchiveShop) {
            this.iv_shop_open.setBackgroundResource(R.drawable.archive_up);
            this.rg_myshop.setVisibility(8);
            this.isArchiveShop = true;
            hideRedPoint();
            return;
        }
        HideRadioButtonBg();
        this.rg_myshop.setVisibility(0);
        this.ll_manage.setVisibility(8);
        dispopuwindow();
        showPopuwindow(3);
        this.iv_shop_open.setBackgroundResource(R.drawable.archive_down);
        this.rb_remoned.setBackgroundResource(R.drawable.archive_bg_left);
        this.rb_remoned.setTextColor(getResources().getColor(R.color.white));
        setTypeFragment(3);
        ArchiveNumDataBean archiveNumDataBean = this.numDataBean;
        if (archiveNumDataBean != null && archiveNumDataBean.getData_info() != null && this.numDataBean.getData_info().getHasNoComment() == 1) {
            showRedPoint();
        }
        this.iv_shop_open.setBackgroundResource(R.drawable.archive_down);
        this.rg_myshop.setVisibility(0);
        this.isArchiveShop = false;
    }

    public void setIsVBA(boolean isVBA) {
        this.isVBA = isVBA;
    }

    @Receiver(actions = {"com.wufun.cloud.showDownDialog"})
    void showDialogDowning() {
        if (this.factory.g() > 0) {
            this.progressDialogForDown.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPopuwindow(int type) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRedBroadcast(ArchiveNumDataBean numDataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRedPoint() {
        this.messagebadge1 = new QBadgeView(this.context).n(this.tv_red).g(-1).k(4.0f, true).d(SupportMenu.CATEGORY_MASK).w(getResources().getDimensionPixelSize(R.dimen.wdp20), false).u(8388693).s(-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNum(final int localnum) {
        try {
            this.simdw.setImageURI(this.numDataBean.getData_info().getBgImg());
            this.tv_myarchive_size.setText(localnum + "个");
            this.tv_shop_size.setText(this.numDataBean.getData_info().getMarketNum() + "个");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateStatu(CloudListDataBean dataBean) {
        com.join.mgps.event.i iVar = new com.join.mgps.event.i();
        dataBean.setStatus(0);
        iVar.f(dataBean);
        iVar.j(0);
        org.greenrobot.eventbus.c.f().q(iVar);
    }
}
