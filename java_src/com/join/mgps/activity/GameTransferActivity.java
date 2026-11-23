package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.customview.DrawableDividerItemDecoration;
import com.join.mgps.customview.PaPaLinearLayoutManager;
import com.join.mgps.dto.GameTransferBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ApWifiConnectedReceiver;
import com.join.mgps.receiver.NetWorkConnectedReceiver;
import com.join.mgps.receiver.WifiAPBroadcastReceiver;
import com.join.mgps.service.SocketClientService;
import com.join.mgps.service.SocketServerService;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.SystemService;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_transfer)
public class GameTransferActivity extends BaseActivity {
    public static final String EXTERNALSTORAGEDIR_PATH;
    public static final String PATH_ANDROID_DATA;
    public static final String PATH_ANDROID_OBB;
    private static final String TAG = "GameTransferActivity";

    @Extra
    int Flag;
    SparseArray<GameTransferBean> accept_game_array;
    ApWifiConnectedReceiver apWifiConnectedReceiver;
    File cacheRoot;
    int can_choose_count;
    com.join.mgps.socket.client.a client;
    List<DownloadTask> gameAndPlugTasks;
    List<DownloadTask> gameDownloadTasks;

    @Bean
    com.join.mgps.adapter.x2 gameListAdapter;
    SparseArray<GameTransferBean> game_array;

    @ViewById(R.id.game_transfer_historyList_rv)
    RecyclerView game_transfer_historyList;

    @ViewById(R.id.game_transfer_list_rv)
    RecyclerView game_transfer_list;

    @Bean
    com.join.mgps.adapter.v2 histroyGameListAdapter;

    @ViewById(R.id.game_transfer_history_hint_rl)
    RelativeLayout histroy_hint_rl;
    Iterator<DownloadTask> iteratorDownloadTask;
    long lastReceiverTime;

    @ViewById(R.id.game_transfer_bottom_navigation_left_txt)
    TextView left_nagivation_bar_txt;
    Context mContext;
    NetWorkConnectedReceiver netWorkConnectedReceiver;

    @ViewById(R.id.game_transfer_right_phone_txt)
    TextView other_phone_modle_txt;
    List<DownloadTask> plugDownloadTasks;
    List<DownloadTask> plugTasks;

    @SystemService
    PowerManager powerManager;

    @Pref
    PrefDef_ prefDef;
    Map<String, DownloadTask> recevedDownloadTask;

    @ViewById(R.id.game_transfer_bottom_navigation_right_txt)
    TextView right_nagivation_bar_txt;
    com.join.mgps.socket.b scManager;

    @ViewById(R.id.game_transfer_list_choose_all_txt)
    TextView select_all_txt;

    @ViewById(R.id.game_transfer_selected_num_txt)
    TextView select_num_txt;
    List<GameTransferBean> sendGameList;
    com.join.mgps.socket.server.a socketService;

    @ViewById(R.id.game_transfer_ok_btn)
    Button tansfer_ok_btn;

    @ViewById(R.id.game_transfer_title_txt)
    TextView titleTxt;
    List<DownloadTask> transferGames;
    final int LEFT_BAR = 1;
    final int RIGHT_BAR = 2;
    boolean is_select_all = false;
    ExecutorService mExecutor = Executors.newCachedThreadPool();
    e mRunable = null;
    com.join.mgps.task.b fileRunable = null;
    Future mFuture = null;
    com.join.mgps.task.d apClientRunable = null;
    Future apClientFuture = null;
    boolean sending = false;
    DownloadTask currentSendTask = null;
    String currentAcceptId = null;
    PowerManager.WakeLock wakeLock = null;
    Socket mSocket = null;
    int zClientNum = 0;
    List<DownloadTask> receiverList = new ArrayList();
    ServiceConnection connection = new a();
    com.join.mgps.customview.t mDialog = null;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                GameTransferActivity.this.mSocket = ((SocketClientService.a) iBinder).getSocket();
            } else if (iBinder instanceof SocketServerService.a) {
                GameTransferActivity.this.mSocket = ((SocketServerService.a) iBinder).getSocket();
            }
            GameTransferActivity.this.initServerAndClient();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity.this.dialogDismiss();
            GameTransferActivity.this.finish();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity.this.dialogDismiss();
        }
    }

    class d extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f53309b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File f53310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f53311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f53312e;

        public d(File file, long size, String gameId) {
            this.f53310c = file;
            this.f53311d = size;
            this.f53312e = gameId;
        }

        public void a(boolean monitor) {
            this.f53309b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f53309b) {
                try {
                    File file = this.f53310c;
                    if (file != null) {
                        long jN1 = UtilsMy.N1(file);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("zip currentSize =");
                        sb2.append(jN1);
                        long j10 = this.f53311d * 2;
                        long j11 = 0;
                        if (j10 != 0 && jN1 != 0) {
                            j11 = (jN1 * 100) / j10;
                        }
                        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(5, this.f53312e, j11));
                        Thread.sleep(1000L);
                    }
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile boolean f53314b = true;

        e() {
        }

        public void a(boolean monitor) {
            this.f53314b = monitor;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f53314b) {
                try {
                    Thread.sleep(1000L);
                    long jCurrentTimeMillis = System.currentTimeMillis() - GameTransferActivity.this.lastReceiverTime;
                    String unused = GameTransferActivity.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onTick: 间隔");
                    sb2.append(jCurrentTimeMillis);
                    if (jCurrentTimeMillis > 10000) {
                        String unused2 = GameTransferActivity.TAG;
                        this.f53314b = false;
                        GameTransferActivity.this.finish();
                    }
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    e10.printStackTrace();
                }
            }
        }
    }

    static {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        EXTERNALSTORAGEDIR_PATH = absolutePath;
        PATH_ANDROID_OBB = absolutePath + "/Android/obb";
        PATH_ANDROID_DATA = absolutePath + "/Android/data";
    }

    private void acceptFileSuccess(GameTransferBean bean) {
        DownloadTask downloadTask = this.recevedDownloadTask.get(bean.getId());
        downloadTask.setPath(bean.getFilePath());
        String fileType = downloadTask.getFileType();
        if (Dtype.android.name().equals(fileType)) {
            if (com.join.android.app.common.utils.g.t0(this.mContext).n(this.mContext, downloadTask.getPackageName()).d() >= Integer.parseInt(downloadTask.getVer())) {
                UtilsMy.delete(new File(downloadTask.getPath()));
                return;
            }
            DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
            if (downloadTaskG != null) {
                downloadTask.setId(downloadTaskG.getId());
                return;
            }
            downloadTask.set_from_type(1);
            if (Dtype.androiddata.name().equals(downloadTask.getRomType())) {
                unZipDpk(downloadTask);
                return;
            }
            if (Dtype.androidobb.name().equals(downloadTask.getRomType())) {
                unZipDpk(downloadTask);
                return;
            }
            downloadTask.setStatus(11);
            downloadTask.setGameZipPath(downloadTask.getPath());
            q5.f.M().k(downloadTask);
            UtilsMy.i3(downloadTask, 11);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(7, downloadTask.getCrc_link_type_val()));
            return;
        }
        if (Dtype.apk.name().equals(fileType)) {
            DownloadTask downloadTaskG2 = q5.f.M().G(downloadTask.getCrc_link_type_val());
            if (downloadTaskG2 != null) {
                downloadTask.setId(downloadTaskG2.getId());
                return;
            }
            downloadTask.setStatus(12);
            q5.f.M().k(downloadTask);
            unZipRom(downloadTask);
            return;
        }
        if (Dtype.chajian.name().equals(fileType)) {
            downloadTask.setStatus(11);
            downloadTask.setGameZipPath(downloadTask.getPath());
            DownloadTask downloadTaskG3 = q5.f.M().G(downloadTask.getCrc_link_type_val());
            if (downloadTaskG3 != null) {
                downloadTask.setId(downloadTaskG3.getId());
            }
            q5.f.M().k(downloadTask);
            this.plugDownloadTasks.add(downloadTask);
            UtilsMy.i3(downloadTask, 11);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(7, downloadTask.getCrc_link_type_val()));
        }
    }

    private boolean checkStorage(DownloadTask downloadTask) {
        long jC = com.join.mgps.Util.f2.c(this.cacheRoot.getAbsolutePath());
        long j10 = downloadTask.getUnzip_size() != null ? Long.parseLong(downloadTask.getUnzip_size()) : 0L;
        if (j10 == 0) {
            j10 = (long) (Float.parseFloat(downloadTask.getShowSize()) * 1000.0f * 1000.0f);
        }
        if (j10 <= jC) {
            return true;
        }
        toast("存储空间不足传输失败");
        return false;
    }

    private boolean checkStorageAccept(DownloadTask downloadTask) {
        long jC = com.join.mgps.Util.f2.c(this.cacheRoot.getAbsolutePath());
        long j10 = downloadTask.getUnzip_size() != null ? Long.parseLong(downloadTask.getUnzip_size()) : 0L;
        if (j10 == 0) {
            j10 = (long) (Float.parseFloat(downloadTask.getShowSize()) * 1000.0f * 1000.0f);
        }
        String fileType = downloadTask.getFileType();
        if (!Dtype.android.name().equals(fileType) ? !(!Dtype.apk.name().equals(fileType) && !Dtype.chajian.name().equals(fileType)) : !(!Dtype.androiddata.name().equals(downloadTask.getRomType()) && !Dtype.androidobb.name().equals(downloadTask.getRomType()) && !Dtype.androidobbdata.name().equals(downloadTask.getRomType()))) {
            j10 *= 2;
        }
        if (j10 <= jC) {
            return true;
        }
        toast("存储空间不足传输失败");
        return false;
    }

    private void copyRomArchives(DownloadTask downloadTask) {
        for (RomArchived romArchived : com.join.mgps.Util.o3.m(downloadTask.getPlugin_num(), downloadTask.getGameZipPath())) {
            String archivedPath = romArchived.getArchivedPath();
            String archivedImagePath = romArchived.getArchivedImagePath();
            if (com.join.mgps.Util.t2.i(archivedPath)) {
                File file = new File(archivedPath);
                if (file.exists()) {
                    com.join.mgps.Util.o0.f(archivedPath, new File(downloadTask.getGameZipPath()).getParent() + File.separator + file.getName());
                }
            }
            if (com.join.mgps.Util.t2.i(archivedImagePath)) {
                File file2 = new File(archivedImagePath);
                if (file2.exists()) {
                    com.join.mgps.Util.o0.f(archivedImagePath, new File(downloadTask.getGameZipPath()).getParent() + File.separator + file2.getName());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dialogDismiss() {
        if (this.sending) {
            String uid = AccountUtil_.getInstance_(this).getUid();
            DownloadTask downloadTask = this.currentSendTask;
            com.papa.sim.statistic.t.l(this).n0(downloadTask != null ? downloadTask.getCrc_link_type_val() : "", uid);
        }
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private DownloadTask getDownloadTaskFromAlreadyDownloadedTask(String id2) {
        if (com.join.mgps.Util.t2.h(id2)) {
            return null;
        }
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.gameDownloadTasks;
            if (list == null || i10 >= list.size()) {
                return null;
            }
            DownloadTask downloadTask = this.gameDownloadTasks.get(i10);
            if (downloadTask.getCrc_link_type_val().equals(id2)) {
                downloadTask.set_from_type(1);
                return downloadTask;
            }
            i10++;
        }
    }

    private DownloadTask getDownloadTaskFromAlreadyDownloadedTaskByIndex(int index) {
        List<DownloadTask> list = this.gameDownloadTasks;
        if (list == null) {
            return null;
        }
        return list.get(index);
    }

    private void transferFile(File file, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.join.mgps.socket.entity.d dVar = new com.join.mgps.socket.entity.d();
        dVar.f(downloadTask.getPackageName() + com.join.mgps.Util.o0.f49827a + com.join.mgps.Util.o0.s(file.getAbsolutePath()));
        dVar.g(file.getAbsolutePath());
        dVar.h(file.length());
        dVar.i(downloadTask.getCrc_link_type_val());
        com.join.mgps.Util.h1.e(TAG, "transferFile: 文件名称" + dVar.a());
        downloadTask.setSize(file.length());
        this.scManager.j(dVar);
        com.papa.sim.statistic.t.l(this).q0(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid());
    }

    private void unZipDpk(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(6, downloadTask.getCrc_link_type_val()));
        downloadTask.setStatus(12);
        q5.f.M().k(downloadTask);
        UtilsMy.i3(downloadTask, 12);
        new com.join.mgps.task.e(downloadTask, this.mContext, true).start();
    }

    private void unZipRom(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(6, downloadTask.getCrc_link_type_val()));
        String str = com.join.mgps.Util.z.f50166e + downloadTask.getRomType() + "/roms";
        UtilsMy.i3(downloadTask, 12);
        new com.join.mgps.task.h(downloadTask, this.mContext, str).start();
    }

    private String zipAndroidData(DownloadTask downloadTask) {
        return zipDpk(downloadTask, PATH_ANDROID_DATA + File.separator + downloadTask.getPackageName());
    }

    private String zipAndroidOBB(DownloadTask downloadTask) {
        return zipDpk(downloadTask, PATH_ANDROID_OBB + File.separator + downloadTask.getPackageName());
    }

    private String zipDpk(DownloadTask downloadTask, String pathData) {
        File file;
        long j10;
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(5, downloadTask.getCrc_link_type_val()));
        if (this.currentSendTask.getStatus() == 11) {
            file = new File(this.currentSendTask.getGameZipPath());
        } else {
            try {
                file = new File(getPackageManager().getApplicationInfo(downloadTask.getPackageName(), 0).sourceDir);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                file = null;
            }
        }
        File file2 = new File(pathData);
        ArrayList arrayList = new ArrayList();
        arrayList.add(file2);
        arrayList.add(file);
        File file3 = new File(this.cacheRoot.getAbsolutePath() + File.separator + downloadTask.getPackageName() + ".zip");
        if (!file3.exists()) {
            new File(file3.getParent()).mkdirs();
        }
        if (!file3.exists()) {
            try {
                file3.createNewFile();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        String showSize = downloadTask.getShowSize();
        if (com.join.mgps.Util.t2.i(showSize)) {
            try {
                j10 = (long) (Float.parseFloat(showSize) * 1000.0f * 1000.0f);
            } catch (Exception e12) {
                e12.printStackTrace();
                j10 = 0;
            }
        } else {
            j10 = 0;
        }
        d dVar = new d(file3, j10, downloadTask.getCrc_link_type_val());
        try {
            dVar.start();
            com.join.mgps.Util.s3.k(arrayList, file3);
            return file3.getAbsolutePath();
        } catch (Exception e13) {
            e13.printStackTrace();
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(8, downloadTask.getCrc_link_type_val()));
            UtilsMy.delete(file3);
            return "";
        } finally {
            dVar.a(false);
        }
    }

    private String zipRom(DownloadTask downloadTask) {
        long j10;
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(5, downloadTask.getCrc_link_type_val()));
        File parentFile = new File(downloadTask.getGameZipPath()).getParentFile();
        File file = new File(this.cacheRoot.getAbsolutePath() + File.separator + parentFile.getName() + ".zip");
        if (!file.exists()) {
            new File(file.getParent()).mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        String showSize = downloadTask.getShowSize();
        if (com.join.mgps.Util.t2.i(showSize)) {
            try {
                j10 = (long) (Float.parseFloat(showSize) * 1000.0f * 1000.0f);
            } catch (Exception e11) {
                e11.printStackTrace();
                j10 = 0;
            }
        } else {
            j10 = 0;
        }
        copyRomArchives(downloadTask);
        d dVar = new d(file, j10, downloadTask.getCrc_link_type_val());
        try {
            dVar.start();
            com.join.mgps.Util.s3.i(parentFile, file);
            return file.getAbsolutePath();
        } catch (Exception e12) {
            e12.printStackTrace();
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(8, downloadTask.getCrc_link_type_val()));
            UtilsMy.delete(file);
            return "";
        } finally {
            dVar.a(false);
        }
    }

    public void addAll(SparseArray<GameTransferBean> items) {
        int size = this.game_array.size();
        for (int i10 = 0; i10 < items.size(); i10++) {
            this.game_array.put(size + i10, items.get(items.keyAt(i10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void backAchivedData(DownloadTask downloadTask) {
        if (Dtype.apk.name().equals(downloadTask.getFileType())) {
            com.join.mgps.Util.o3.h(downloadTask.getGameZipPath(), downloadTask.getPackageName(), Integer.parseInt(downloadTask.getPlugin_num()));
        }
    }

    void bindService() {
        Intent intent;
        int i10 = this.Flag;
        if (i10 == 2) {
            intent = new Intent(this, (Class<?>) SocketServerService.class);
        } else {
            intent = i10 == 1 ? new Intent(this, (Class<?>) SocketClientService.class) : null;
        }
        bindService(intent, this.connection, 1);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void canApClientConnect(List<com.join.mgps.event.h> clients) {
        if (clients == null) {
            return;
        }
        if (clients.size() != 0) {
            this.zClientNum = 0;
            return;
        }
        int i10 = this.zClientNum + 1;
        this.zClientNum = i10;
        if (i10 > 1) {
            finish();
        }
    }

    void checkeVersion(String content) {
        if (content == null || com.join.mgps.Util.t2.h(content)) {
            return;
        }
        String[] strArrSplit = content.split(":");
        if (strArrSplit.length != 3) {
            return;
        }
        String str = strArrSplit[0];
        this.currentAcceptId = str;
        String str2 = strArrSplit[1];
        String str3 = strArrSplit[2];
        Dtype dtype = Dtype.chajian;
        int plugTaskListIndex = dtype.name().equals(str3) ? getPlugTaskListIndex(this.currentAcceptId) : getDownloadTaskListIndex(this.currentAcceptId);
        DownloadTask downloadTask = this.recevedDownloadTask.get(this.currentAcceptId);
        if (!checkStorageAccept(downloadTask)) {
            updateReceiverSdCardSizeLimite(str);
            this.scManager.e(str);
            return;
        }
        if (plugTaskListIndex != -1) {
            if (Integer.parseInt(str2) > Integer.parseInt(dtype.name().equals(str3) ? getPlugVersionCode(plugTaskListIndex) : getGameVersionCodeById(this.currentAcceptId))) {
                this.scManager.i();
                return;
            } else {
                this.scManager.h();
                return;
            }
        }
        if (!Dtype.android.name().equals(str3)) {
            this.scManager.i();
            return;
        }
        if (downloadTask == null) {
            this.scManager.i();
            return;
        }
        String packageName = downloadTask.getPackageName();
        if (!com.join.android.app.common.utils.g.t0(this.mContext).e(this.mContext, packageName)) {
            this.scManager.i();
            return;
        }
        q5.f.M().k(downloadTask);
        UtilsMy.i3(q5.f.M().G(this.currentAcceptId), 5);
        if (Integer.parseInt(str2) > com.join.android.app.common.utils.g.t0(this.mContext).n(this.mContext, packageName).d()) {
            this.scManager.i();
        } else {
            this.scManager.h();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void chooseSendFileEvent(GameTransferBean bean) {
        if (bean == null || this.gameDownloadTasks == null) {
            return;
        }
        String id2 = bean.getId();
        if (bean.isSelectedTransfer()) {
            this.transferGames.add(getDownloadTaskFromAlreadyDownloadedTask(id2));
            if (this.transferGames.size() == this.can_choose_count) {
                this.is_select_all = true;
                this.select_all_txt.setSelected(true);
            }
        } else {
            removeDownloadTaskFromTransferList(bean);
            if (this.is_select_all) {
                this.is_select_all = false;
                this.select_all_txt.setSelected(false);
            }
        }
        List<DownloadTask> list = this.transferGames;
        if (list != null) {
            setChooseGameNum(list.size());
        }
        refreshEnableSendState();
    }

    void combinSendTask(String contnt) {
        if (contnt != null) {
            this.receiverList.addAll((ArrayList) JsonMapper.getInstance().fromJson(contnt, JsonMapper.getInstance().createCollectionType(ArrayList.class, DownloadTask.class)));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void connectedEvent(String connectedStr) {
        if (connectedStr.equals(com.join.mgps.socket.entity.b.f73006h)) {
            finish();
        }
    }

    public void deletFile(String filePath) {
        if (filePath == null || !filePath.contains(this.cacheRoot.getAbsolutePath())) {
            return;
        }
        com.join.mgps.task.b bVar = new com.join.mgps.task.b(filePath);
        this.fileRunable = bVar;
        this.mFuture = this.mExecutor.submit(bVar);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void dialogEvent(String str) {
        if (str.equals("ok")) {
            finish();
        }
    }

    void doSomeAcceptFile(com.join.mgps.socket.entity.c event) {
        if (event == null) {
            return;
        }
        int historyGameTransferListIndex = getHistoryGameTransferListIndex(event.f73024x);
        GameTransferBean gameTransferBeanValueAt = this.histroyGameListAdapter.c().valueAt(historyGameTransferListIndex);
        gameTransferBeanValueAt.setTransferStatus(event.f73022v);
        gameTransferBeanValueAt.setFilePath(event.f73020t);
        int i10 = event.f73022v;
        if (i10 == 2) {
            gameTransferBeanValueAt.setProgerss(event.f73021u);
            this.histroyGameListAdapter.notifyItemChanged(historyGameTransferListIndex);
        } else if (i10 == 3) {
            this.histroyGameListAdapter.notifyItemChanged(historyGameTransferListIndex);
            acceptFileSuccess(gameTransferBeanValueAt);
        } else {
            if (i10 != 4) {
                return;
            }
            this.histroyGameListAdapter.notifyItemChanged(historyGameTransferListIndex);
        }
    }

    void doSomeAfterSendFile(com.join.mgps.socket.entity.c event) {
        if (event == null) {
            return;
        }
        int gameTransferListIndex = getGameTransferListIndex(event.f73024x);
        if (gameTransferListIndex < 0) {
            int i10 = event.f73022v;
            if (i10 == 4 || i10 == 3) {
                startSend();
                return;
            }
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        GameTransferBean gameTransferBean = sparseArrayC.get(gameTransferListIndex);
        gameTransferBean.setTransferStatus(event.f73022v);
        sparseArrayC.setValueAt(gameTransferListIndex, gameTransferBean);
        int i11 = event.f73022v;
        if (i11 == 2) {
            gameTransferBean.setProgerss(event.f73021u);
            this.gameListAdapter.notifyItemChanged(gameTransferListIndex);
            return;
        }
        if (i11 != 3) {
            if (i11 != 4) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SendFile:;;;;Failed index");
            sb2.append(gameTransferListIndex);
            sb2.append(":::名称::::");
            sb2.append(gameTransferBean.getGameName());
            this.gameListAdapter.notifyItemChanged(gameTransferListIndex);
            deletFile(event.f73020t);
            startSend();
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("SendFile:;;;;Success index");
        sb3.append(gameTransferListIndex);
        sb3.append(":::名称::::");
        sb3.append(gameTransferBean.getGameName());
        String uid = AccountUtil_.getInstance_(this).getUid();
        com.papa.sim.statistic.t.l(this).r0(gameTransferBean.getId(), uid);
        this.gameListAdapter.notifyItemChanged(gameTransferListIndex);
        deletFile(event.f73020t);
        startSend();
    }

    @AfterViews
    void doSomeAfterView() {
        init();
        initData();
        initView();
        org.greenrobot.eventbus.c.f().v(this);
    }

    GameTransferBean downloadTask2GameTransferBean(DownloadTask task, int status) {
        if (task == null) {
            return null;
        }
        GameTransferBean gameTransferBean = new GameTransferBean();
        gameTransferBean.setId(task.getCrc_link_type_val());
        gameTransferBean.setGameName(task.getShowName());
        gameTransferBean.setFileType(task.getFileType());
        gameTransferBean.setTransferStatus(status);
        gameTransferBean.setFilePath(task.getPath());
        gameTransferBean.setSize(task.getShowSize());
        gameTransferBean.setIconUrl(task.getPortraitURL());
        return gameTransferBean;
    }

    void findGamePlug() {
        List<DownloadTask> list;
        File file;
        if (this.transferGames == null || (list = this.plugDownloadTasks) == null) {
            return;
        }
        for (DownloadTask downloadTask : list) {
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Iterator<DownloadTask> it2 = this.transferGames.iterator();
            while (it2.hasNext()) {
                String romType = it2.next().getRomType();
                if (romType != null && romType.equals(crc_link_type_val)) {
                    try {
                        file = new File(getPackageManager().getApplicationInfo(downloadTask.getPackageName(), 0).sourceDir);
                    } catch (PackageManager.NameNotFoundException e10) {
                        e10.printStackTrace();
                        file = null;
                    }
                    if (file != null && file.exists()) {
                        this.plugTasks.add(downloadTask);
                        break;
                    }
                    break;
                }
            }
        }
    }

    void getDownloadTaskList() {
        this.recevedDownloadTask.clear();
        for (DownloadTask downloadTask : this.receiverList) {
            this.recevedDownloadTask.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        SparseArray sparseArray = new SparseArray();
        for (int i10 = 0; i10 < this.receiverList.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getDownloadTask: 名称");
            sb2.append(this.receiverList.get(i10).getName());
            sparseArray.put(i10, downloadTask2GameTransferBean(this.receiverList.get(i10), 1));
        }
        this.histroyGameListAdapter.a(sparseArray);
        this.gameListAdapter.m(true);
        this.gameListAdapter.notifyDataSetChanged();
        this.receiverList.clear();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("getDownloadTask: 传输记录");
        sb3.append(this.histroyGameListAdapter.c().size());
    }

    int getDownloadTaskListIndex(String id2) {
        List<DownloadTask> list;
        if (id2 == null || (list = this.gameDownloadTasks) == null) {
            return -1;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            DownloadTask downloadTask = this.gameDownloadTasks.get(i10);
            if (downloadTask != null && id2.equals(downloadTask.getCrc_link_type_val())) {
                return i10;
            }
        }
        return -1;
    }

    int getGameTransferListIndex(String id2) {
        com.join.mgps.adapter.x2 x2Var;
        if (id2 == null || (x2Var = this.gameListAdapter) == null) {
            return -1;
        }
        SparseArray<GameTransferBean> sparseArrayC = x2Var.c();
        int size = sparseArrayC.size();
        for (int i10 = 0; i10 < size; i10++) {
            GameTransferBean gameTransferBean = sparseArrayC.get(i10);
            if (gameTransferBean != null && id2.equals(gameTransferBean.getId())) {
                return i10;
            }
        }
        return -1;
    }

    String getGameVersionCode(int index) {
        List<DownloadTask> list = this.gameDownloadTasks;
        if (list == null || list.size() < index) {
            return null;
        }
        return this.gameDownloadTasks.get(index).getVer();
    }

    String getGameVersionCodeById(String id2) {
        DownloadTask downloadTaskFromAlreadyDownloadedTask = getDownloadTaskFromAlreadyDownloadedTask(id2);
        return downloadTaskFromAlreadyDownloadedTask != null ? downloadTaskFromAlreadyDownloadedTask.getVer() : "";
    }

    int getHistoryGameTransferListIndex(String id2) {
        SparseArray<GameTransferBean> sparseArrayC = this.histroyGameListAdapter.c();
        for (int i10 = 0; i10 < sparseArrayC.size(); i10++) {
            GameTransferBean gameTransferBean = sparseArrayC.get(i10);
            if (gameTransferBean != null && id2.equals(gameTransferBean.getId())) {
                return i10;
            }
        }
        return -1;
    }

    int getPlugTaskListIndex(String id2) {
        List<DownloadTask> list;
        if (id2 == null || (list = this.plugDownloadTasks) == null) {
            return -1;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            DownloadTask downloadTask = this.plugDownloadTasks.get(i10);
            if (downloadTask != null) {
                boolean zEquals = id2.equals(downloadTask.getCrc_link_type_val());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getPlugTaskListIndex: 是否存在");
                sb2.append(zEquals);
                if (zEquals) {
                    return i10;
                }
            }
        }
        return -1;
    }

    String getPlugVersionCode(int index) {
        List<DownloadTask> list = this.plugDownloadTasks;
        if (list == null || list.size() < index) {
            return null;
        }
        return this.plugDownloadTasks.get(index).getVer();
    }

    void init() {
        this.mContext = getApplicationContext();
        this.scManager = com.join.mgps.socket.b.d();
        File file = new File(com.join.mgps.Util.f2.g(this.mContext));
        this.cacheRoot = file;
        if (!file.exists()) {
            this.cacheRoot.mkdirs();
        }
        PowerManager.WakeLock wakeLockNewWakeLock = this.powerManager.newWakeLock(268435482, "wf:lock");
        this.wakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.acquire();
        bindService();
    }

    void initData() {
        this.gameDownloadTasks = q5.f.M().T(null);
        this.plugDownloadTasks = q5.f.M().O();
        this.transferGames = new ArrayList();
        this.plugTasks = new ArrayList();
        this.gameAndPlugTasks = new ArrayList();
        this.recevedDownloadTask = new HashMap();
        this.sendGameList = new ArrayList();
        this.game_array = new SparseArray<>();
        initGameTransferList();
        this.can_choose_count = this.gameDownloadTasks.size();
        this.accept_game_array = new SparseArray<>();
    }

    void initGameTransferList() {
        if (this.gameDownloadTasks != null) {
            for (int i10 = 0; i10 < this.gameDownloadTasks.size(); i10++) {
                this.game_array.put(i10, downloadTask2GameTransferBean(this.gameDownloadTasks.get(i10), -1));
            }
        }
    }

    void initRecyclerView() {
        this.game_transfer_list.addItemDecoration(new DrawableDividerItemDecoration(getResources().getDrawable(R.drawable.recyclerview_horizontal_divider), true, false));
        this.game_transfer_list.getItemAnimator().setChangeDuration(0L);
        this.game_transfer_list.setHasFixedSize(true);
        this.game_transfer_list.setOverScrollMode(2);
        PaPaLinearLayoutManager paPaLinearLayoutManager = new PaPaLinearLayoutManager(this);
        paPaLinearLayoutManager.setOrientation(1);
        this.game_transfer_list.setLayoutManager(paPaLinearLayoutManager);
        this.gameListAdapter.i(this.game_array);
        this.game_transfer_list.setAdapter(this.gameListAdapter);
        this.game_transfer_historyList.addItemDecoration(new DrawableDividerItemDecoration(getResources().getDrawable(R.drawable.recyclerview_horizontal_divider), true, false));
        this.game_transfer_historyList.getItemAnimator().setChangeDuration(0L);
        this.game_transfer_historyList.setHasFixedSize(true);
        this.game_transfer_historyList.setOverScrollMode(2);
        PaPaLinearLayoutManager paPaLinearLayoutManager2 = new PaPaLinearLayoutManager(this);
        paPaLinearLayoutManager2.setOrientation(1);
        this.game_transfer_historyList.setLayoutManager(paPaLinearLayoutManager2);
        this.histroyGameListAdapter.i(this.accept_game_array);
        this.game_transfer_historyList.setAdapter(this.histroyGameListAdapter);
    }

    void initServerAndClient() {
        if (this.mSocket == null) {
            return;
        }
        int i10 = this.Flag;
        if (i10 == 2) {
            this.socketService = new com.join.mgps.socket.server.a(this.mContext, this.mSocket);
        } else if (i10 == 1) {
            this.client = new com.join.mgps.socket.client.a(this.mContext, this.mSocket);
        }
        this.lastReceiverTime = System.currentTimeMillis();
        listenerSocketStatus();
    }

    void initView() {
        initRecyclerView();
        int i10 = this.Flag;
        if (i10 == 2) {
            nagivationBarTextSelectedStatusChange(2);
            registApWifiStatus();
            listApClients();
        } else if (i10 == 1) {
            nagivationBarTextSelectedStatusChange(1);
            registWifiConnected();
            this.scManager.f();
        }
    }

    void listApClients() {
        com.join.mgps.task.d dVar = new com.join.mgps.task.d(this.mContext, true, 2000L);
        this.apClientRunable = dVar;
        this.apClientFuture = this.mExecutor.submit(dVar);
    }

    void listenerSocketStatus() {
        e eVar = new e();
        this.mRunable = eVar;
        this.mFuture = this.mExecutor.submit(eVar);
    }

    void nagivationBarTextSelectedStatusChange(int which) {
        if (which == 1) {
            if (this.left_nagivation_bar_txt.isTextSelectable()) {
                return;
            }
            this.left_nagivation_bar_txt.setSelected(true);
            this.right_nagivation_bar_txt.setSelected(false);
            this.game_transfer_list.setVisibility(0);
            this.game_transfer_historyList.setVisibility(8);
            this.tansfer_ok_btn.setVisibility(0);
            this.select_all_txt.setVisibility(0);
            this.select_num_txt.setVisibility(0);
            this.histroy_hint_rl.setVisibility(8);
            return;
        }
        if (which != 2 || this.right_nagivation_bar_txt.isTextSelectable()) {
            return;
        }
        this.right_nagivation_bar_txt.setSelected(true);
        this.left_nagivation_bar_txt.setSelected(false);
        this.game_transfer_list.setVisibility(8);
        this.game_transfer_historyList.setVisibility(0);
        this.tansfer_ok_btn.setVisibility(8);
        this.select_all_txt.setVisibility(8);
        this.select_num_txt.setVisibility(8);
        if (this.prefDef.showHistroyHint().d().booleanValue()) {
            this.histroy_hint_rl.setVisibility(0);
        }
    }

    @Click({R.id.game_transfer_bottom_navigation_left_txt, R.id.game_transfer_bottom_navigation_right_txt, R.id.game_transfer_ok_btn, R.id.game_transfer_list_hint_close_img, R.id.game_transfer_list_choose_all_txt, R.id.game_transfer_back_img})
    void onClick(View view) {
        com.join.mgps.socket.client.a aVar;
        switch (view.getId()) {
            case R.id.game_transfer_back_img /* 2131363636 */:
                showExitDialog();
                break;
            case R.id.game_transfer_bottom_navigation_left_txt /* 2131363639 */:
                nagivationBarTextSelectedStatusChange(1);
                break;
            case R.id.game_transfer_bottom_navigation_right_txt /* 2131363640 */:
                nagivationBarTextSelectedStatusChange(2);
                break;
            case R.id.game_transfer_list_choose_all_txt /* 2131363649 */:
                if (!this.sending) {
                    boolean z10 = !this.is_select_all;
                    this.is_select_all = z10;
                    this.select_all_txt.setSelected(z10);
                    updateGameListCheckStatus(this.is_select_all);
                }
                break;
            case R.id.game_transfer_list_hint_close_img /* 2131363650 */:
                ((PrefDef_.a) this.prefDef.edit().L3().b(false)).a();
                this.histroy_hint_rl.setVisibility(8);
                break;
            case R.id.game_transfer_ok_btn /* 2131363654 */:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onClick: +时候可用");
                sb2.append(this.tansfer_ok_btn.isEnabled());
                if (!this.sending) {
                    if (this.Flag == 1 && (aVar = this.client) != null) {
                        aVar.f();
                    }
                    this.sending = true;
                    this.tansfer_ok_btn.setEnabled(false);
                    updateGameFileStatu2Waiting();
                } else {
                    toast("请等待当前传输完成");
                }
                break;
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.socket.server.a aVar = this.socketService;
        if (aVar != null) {
            aVar.b();
        }
        com.join.mgps.socket.client.a aVar2 = this.client;
        if (aVar2 != null) {
            aVar2.b();
        }
        stopService();
        this.scManager.b();
        org.greenrobot.eventbus.c.f().A(this);
        if (this.Flag == 2) {
            com.join.mgps.Util.k.i(this.mContext).f();
            WifiUtils.getInstance(this.mContext).openWifi(this.mContext);
        }
        stopListenerSocketStatus();
        stopListenerApClients();
        unRegistReceiver();
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock != null) {
            wakeLock.release();
        }
        ExecutorService executorService = this.mExecutor;
        if (executorService != null && !executorService.isShutdown()) {
            this.mExecutor.shutdownNow();
        }
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
        this.mDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskEvent.c() != 5) {
            return;
        }
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(9, downloadTaskA.getCrc_link_type_val()));
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return false;
        }
        showExitDialog();
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketReceiverEvent(com.join.mgps.socket.entity.a event) {
        com.join.mgps.socket.client.a aVar;
        if (event == null) {
            return;
        }
        this.lastReceiverTime = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSocketReceiverEvent: ");
        sb2.append(this.lastReceiverTime);
        if (event instanceof com.join.mgps.socket.entity.c) {
            com.join.mgps.socket.entity.c cVar = (com.join.mgps.socket.entity.c) event;
            int i10 = cVar.f73023w;
            if (i10 == 0) {
                doSomeAfterSendFile(cVar);
                return;
            } else {
                if (i10 == 1) {
                    doSomeAcceptFile(cVar);
                    return;
                }
                return;
            }
        }
        if (event instanceof com.join.mgps.socket.entity.g) {
            String str = ((com.join.mgps.socket.entity.g) event).f73036s;
            if (str.equals(com.join.mgps.socket.entity.a.f72985f)) {
                if (this.Flag == 2) {
                    this.scManager.k();
                    return;
                }
                return;
            }
            if (str.startsWith(com.join.mgps.socket.entity.a.f72986g)) {
                this.other_phone_modle_txt.setText(str.substring(5));
                int i11 = this.Flag;
                if (i11 == 2) {
                    this.scManager.f();
                    return;
                } else {
                    if (i11 == 1) {
                        this.client.e();
                        return;
                    }
                    return;
                }
            }
            if (str.startsWith(com.join.mgps.socket.entity.a.f72992m)) {
                if (this.Flag == 1) {
                    this.client.f();
                }
                int iIndexOf = str.indexOf(":");
                int i12 = Integer.parseInt(str.substring(5, iIndexOf));
                combinSendTask(str.substring(iIndexOf + 1));
                if (this.receiverList.size() == i12) {
                    getDownloadTaskList();
                    this.scManager.g();
                } else {
                    this.scManager.a();
                }
                this.tansfer_ok_btn.setEnabled(false);
                this.sending = true;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onSocketReceiverEvent: 是否可用");
                sb3.append(this.tansfer_ok_btn.isEnabled());
                return;
            }
            if (str.equals(com.join.mgps.socket.entity.a.f72994o)) {
                startSend();
                return;
            }
            if (str.startsWith(com.join.mgps.socket.entity.a.f72996q)) {
                updateReceiverSdCardSizeLimite(str.substring(8));
                return;
            }
            if (str.startsWith(com.join.mgps.socket.entity.a.f72997r)) {
                updateSendSdCardSizeLimite(str.substring(8));
                return;
            }
            if (str.startsWith(com.join.mgps.socket.entity.a.f72988i)) {
                checkeVersion(str.substring(5));
                return;
            }
            if (str.equals(com.join.mgps.socket.entity.a.f72989j)) {
                sendGame();
                return;
            }
            if (str.equals(com.join.mgps.socket.entity.a.f72990k)) {
                updateNoSenderItem();
                return;
            }
            if (str.equals(com.join.mgps.socket.entity.a.f72991l)) {
                updateNoAccepterItem();
                return;
            }
            if (str.equals(com.join.mgps.socket.entity.a.f72995p)) {
                if (this.Flag == 1 && (aVar = this.client) != null) {
                    aVar.e();
                }
                this.sending = false;
                this.tansfer_ok_btn.setEnabled(true);
                this.gameListAdapter.m(this.sending);
                this.gameListAdapter.notifyDataSetChanged();
            }
        }
    }

    void refreshEnableSendState() {
        if (this.sending) {
            return;
        }
        if (this.transferGames.size() > 0) {
            this.tansfer_ok_btn.setEnabled(true);
        } else {
            this.tansfer_ok_btn.setEnabled(false);
        }
    }

    void registApWifiStatus() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WifiAPBroadcastReceiver.f72281b);
        intentFilter.addAction("android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED");
        ApWifiConnectedReceiver apWifiConnectedReceiver = new ApWifiConnectedReceiver();
        this.apWifiConnectedReceiver = apWifiConnectedReceiver;
        registerReceiver(apWifiConnectedReceiver, intentFilter);
    }

    void registWifiConnected() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkConnectedReceiver netWorkConnectedReceiver = new NetWorkConnectedReceiver();
        this.netWorkConnectedReceiver = netWorkConnectedReceiver;
        registerReceiver(netWorkConnectedReceiver, intentFilter);
    }

    public void removeDownloadTaskFromTransferList(GameTransferBean bean) {
        if (bean == null || this.transferGames == null) {
            return;
        }
        String id2 = bean.getId();
        for (DownloadTask downloadTask : this.transferGames) {
            if (downloadTask.getCrc_link_type_val().equals(id2)) {
                downloadTask.set_from_type(0);
                this.transferGames.remove(downloadTask);
                return;
            }
        }
    }

    public void removeFromMiddleItem(int position) {
        if (position > this.game_array.size()) {
            return;
        }
        if (position == this.game_array.size() - 1) {
            this.game_array.remove(position);
            return;
        }
        SparseArray<GameTransferBean> sparseArray = this.game_array;
        while (position < sparseArray.size() - 1) {
            int i10 = position + 1;
            this.game_array.put(position, sparseArray.get(i10));
            position = i10;
        }
        this.game_array.remove(this.game_array.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendGame() {
        File file;
        DownloadTask downloadTask = this.currentSendTask;
        if (downloadTask == null) {
            return;
        }
        String fileType = downloadTask.getFileType();
        if (Dtype.android.name().equals(fileType)) {
            if (Dtype.androiddata.name().equals(this.currentSendTask.getRomType())) {
                String strZipAndroidData = zipAndroidData(this.currentSendTask);
                file = new File(strZipAndroidData);
                if (com.join.mgps.Util.t2.h(strZipAndroidData)) {
                    return;
                }
            } else if (Dtype.androidobb.name().equals(this.currentSendTask.getRomType())) {
                String strZipAndroidOBB = zipAndroidOBB(this.currentSendTask);
                file = new File(strZipAndroidOBB);
                if (com.join.mgps.Util.t2.h(strZipAndroidOBB)) {
                    return;
                }
            } else if (this.currentSendTask.getStatus() == 11) {
                file = new File(this.currentSendTask.getPath());
            } else {
                try {
                    file = new File(getPackageManager().getApplicationInfo(this.currentSendTask.getPackageName(), 0).sourceDir);
                } catch (PackageManager.NameNotFoundException e10) {
                    e10.printStackTrace();
                    file = null;
                }
            }
        } else if (Dtype.apk.name().equals(fileType)) {
            this.currentSendTask.getRomType();
            String strZipRom = zipRom(this.currentSendTask);
            if (com.join.mgps.Util.t2.h(strZipRom)) {
                return;
            } else {
                file = new File(strZipRom);
            }
        } else if (Dtype.chajian.name().equals(fileType)) {
            try {
                file = new File(getPackageManager().getApplicationInfo(this.currentSendTask.getPackageName(), 0).sourceDir);
            } catch (PackageManager.NameNotFoundException e11) {
                e11.printStackTrace();
                file = null;
            }
        } else {
            file = null;
        }
        if (file == null || !file.exists()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.e0(8, this.currentSendTask.getCrc_link_type_val()));
        } else {
            transferFile(file, this.currentSendTask);
        }
    }

    void sendTaskList() {
        findGamePlug();
        this.gameAndPlugTasks.addAll(this.transferGames);
        this.gameAndPlugTasks.addAll(this.plugTasks);
        this.scManager.n(this.gameAndPlugTasks);
        this.transferGames.clear();
        this.plugTasks.clear();
        this.iteratorDownloadTask = this.gameAndPlugTasks.iterator();
    }

    void setChooseGameNum(int num) {
        this.select_num_txt.setText(getResources().getString(R.string.choose_game_num, Integer.valueOf(num)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        this.mDialog = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.mDialog.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.mDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.mDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.mDialog.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.mDialog.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText("退出会中断连接及正在进行的传输，确认退出吗？");
        textView3.setVisibility(8);
        button.setText("确认");
        button2.setText("取消");
        button.setOnClickListener(new b());
        button2.setOnClickListener(new c());
        com.join.mgps.customview.t tVar2 = this.mDialog;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.mDialog.show();
    }

    void showExitDialog() {
        showDialog();
    }

    void sortState() {
        try {
            SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
            SparseArray<GameTransferBean> sparseArray = new SparseArray<>();
            if (sparseArrayC != null) {
                for (int i10 = 0; i10 < sparseArrayC.size(); i10++) {
                    GameTransferBean gameTransferBean = sparseArrayC.get(i10);
                    if (gameTransferBean.getTransferStatus() == 3) {
                        sparseArray.put(i10, gameTransferBean);
                        removeFromMiddleItem(i10);
                    }
                }
                addAll(sparseArray);
                this.gameListAdapter.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void startSend() {
        com.join.mgps.socket.client.a aVar;
        if (this.iteratorDownloadTask.hasNext()) {
            DownloadTask next = this.iteratorDownloadTask.next();
            this.currentSendTask = next;
            String crc_link_type_val = next.getCrc_link_type_val();
            String ver = this.currentSendTask.getVer();
            String fileType = this.currentSendTask.getFileType();
            if (checkStorage(this.currentSendTask)) {
                this.scManager.m(crc_link_type_val + ":" + ver + ":" + fileType);
            } else {
                this.scManager.l(crc_link_type_val);
                updateSendSdCardSizeLimite(crc_link_type_val);
            }
        } else {
            if (this.Flag == 1 && (aVar = this.client) != null) {
                aVar.e();
            }
            this.scManager.o();
            this.sending = false;
            this.gameListAdapter.m(false);
            this.gameListAdapter.notifyDataSetChanged();
            this.gameAndPlugTasks.clear();
        }
        updateTransferProgress();
    }

    void stopListenerApClients() {
        Future future;
        if (this.apClientRunable == null || (future = this.apClientFuture) == null || future.isCancelled()) {
            return;
        }
        this.apClientRunable.d(false);
        this.apClientFuture.cancel(true);
    }

    void stopListenerSocketStatus() {
        e eVar = this.mRunable;
        if (eVar == null || this.mFuture == null) {
            return;
        }
        eVar.a(false);
        this.mFuture.cancel(true);
    }

    void stopService() {
        Intent intent;
        unbindService(this.connection);
        int i10 = this.Flag;
        if (i10 == 2) {
            intent = new Intent(this, (Class<?>) SocketServerService.class);
        } else {
            intent = i10 == 1 ? new Intent(this, (Class<?>) SocketClientService.class) : null;
        }
        stopService(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String message) {
        com.join.mgps.Util.a3.b(this.mContext).d(message);
    }

    void unRegistReceiver() {
        NetWorkConnectedReceiver netWorkConnectedReceiver = this.netWorkConnectedReceiver;
        if (netWorkConnectedReceiver != null) {
            unregisterReceiver(netWorkConnectedReceiver);
        }
        ApWifiConnectedReceiver apWifiConnectedReceiver = this.apWifiConnectedReceiver;
        if (apWifiConnectedReceiver != null) {
            unregisterReceiver(apWifiConnectedReceiver);
        }
    }

    void updateGameFileStatu2Waiting() {
        if (this.game_array == null || this.transferGames == null) {
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        int size = this.transferGames.size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("updateGameFileStatu2Waiting: size");
        sb2.append(size);
        for (int i10 = 0; i10 < size; i10++) {
            int gameTransferListIndex = getGameTransferListIndex(this.transferGames.get(i10).getCrc_link_type_val());
            GameTransferBean gameTransferBean = sparseArrayC.get(gameTransferListIndex);
            gameTransferBean.setTransferStatus(1);
            gameTransferBean.setSelectedTransfer(false);
            sparseArrayC.setValueAt(gameTransferListIndex, gameTransferBean);
            this.sendGameList.add(gameTransferBean);
        }
        this.gameListAdapter.m(true);
        this.gameListAdapter.notifyDataSetChanged();
        sendTaskList();
        this.can_choose_count -= this.transferGames.size();
    }

    void updateGameListCheckStatus(boolean check) {
        com.join.mgps.adapter.x2 x2Var = this.gameListAdapter;
        if (x2Var == null) {
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = x2Var.c();
        int size = sparseArrayC.size();
        for (int i10 = 0; i10 < size; i10++) {
            GameTransferBean gameTransferBean = sparseArrayC.get(i10);
            if (!this.sendGameList.contains(gameTransferBean)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("updateGameListCheckStatus: index:::");
                sb2.append(i10);
                sb2.append(":::checked:::");
                sb2.append(check);
                gameTransferBean.setSelectedTransfer(check);
                sparseArrayC.setValueAt(i10, gameTransferBean);
                if (check) {
                    DownloadTask downloadTaskFromAlreadyDownloadedTask = getDownloadTaskFromAlreadyDownloadedTask(gameTransferBean.getId());
                    if (!this.transferGames.contains(downloadTaskFromAlreadyDownloadedTask)) {
                        this.transferGames.add(downloadTaskFromAlreadyDownloadedTask);
                    }
                } else {
                    removeDownloadTaskFromTransferList(gameTransferBean);
                }
            }
        }
        this.gameListAdapter.notifyDataSetChanged();
        List<DownloadTask> list = this.transferGames;
        if (list != null) {
            int size2 = list.size();
            setChooseGameNum(this.transferGames.size());
            if (size2 > 0) {
                this.tansfer_ok_btn.setEnabled(true);
            } else {
                this.tansfer_ok_btn.setEnabled(false);
            }
        }
    }

    void updateGameListFileStatu(String id2, int status) {
        if (id2 == null) {
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        int size = sparseArrayC.size();
        for (int i10 = 0; i10 < size; i10++) {
            GameTransferBean gameTransferBeanValueAt = sparseArrayC.valueAt(i10);
            if (gameTransferBeanValueAt.getId().equals(id2)) {
                gameTransferBeanValueAt.setTransferStatus(status);
                sparseArrayC.setValueAt(i10, gameTransferBeanValueAt);
                this.gameListAdapter.notifyItemChanged(i10);
                return;
            }
        }
    }

    void updateHistoryGameListStatu(String id2, int status) {
        if (id2 == null) {
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = this.histroyGameListAdapter.c();
        int size = sparseArrayC.size();
        for (int i10 = 0; i10 < size; i10++) {
            GameTransferBean gameTransferBeanValueAt = sparseArrayC.valueAt(i10);
            if (gameTransferBeanValueAt.getId().equals(id2)) {
                gameTransferBeanValueAt.setTransferStatus(status);
                sparseArrayC.setValueAt(i10, gameTransferBeanValueAt);
                this.histroyGameListAdapter.notifyItemChanged(i10);
                return;
            }
        }
    }

    void updateNoAccepterItem() {
        String str = this.currentAcceptId;
        if (str == null || com.join.mgps.Util.t2.h(str)) {
            return;
        }
        int historyGameTransferListIndex = getHistoryGameTransferListIndex(this.currentAcceptId);
        SparseArray<GameTransferBean> sparseArrayC = this.histroyGameListAdapter.c();
        if (historyGameTransferListIndex == -1 || historyGameTransferListIndex >= sparseArrayC.size()) {
            return;
        }
        GameTransferBean gameTransferBean = sparseArrayC.get(historyGameTransferListIndex);
        gameTransferBean.setProgerss(100);
        gameTransferBean.setTransferStatus(9);
        gameTransferBean.setSelectedTransfer(false);
        sparseArrayC.setValueAt(historyGameTransferListIndex, gameTransferBean);
        this.histroyGameListAdapter.notifyItemChanged(historyGameTransferListIndex);
    }

    void updateNoSenderItem() {
        DownloadTask downloadTask = this.currentSendTask;
        if (downloadTask == null || this.gameListAdapter == null) {
            return;
        }
        int gameTransferListIndex = getGameTransferListIndex(downloadTask.getCrc_link_type_val());
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        if (gameTransferListIndex == -1 || gameTransferListIndex >= sparseArrayC.size()) {
            this.scManager.q();
            startSend();
            return;
        }
        GameTransferBean gameTransferBean = sparseArrayC.get(gameTransferListIndex);
        com.papa.sim.statistic.t.l(this).r0(gameTransferBean.getId(), AccountUtil_.getInstance_(this).getUid());
        gameTransferBean.setProgerss(100);
        gameTransferBean.setTransferStatus(3);
        gameTransferBean.setSelectedTransfer(false);
        sparseArrayC.setValueAt(gameTransferListIndex, gameTransferBean);
        this.gameListAdapter.notifyItemChanged(gameTransferListIndex);
        this.scManager.q();
        startSend();
    }

    void updateReceiverSdCardSizeLimite(String id2) {
        if (id2 == null) {
            return;
        }
        int historyGameTransferListIndex = getHistoryGameTransferListIndex(id2);
        this.histroyGameListAdapter.c().valueAt(historyGameTransferListIndex).setTransferStatus(4);
        this.histroyGameListAdapter.notifyItemChanged(historyGameTransferListIndex);
    }

    void updateSendSdCardSizeLimite(String id2) {
        if (id2 == null) {
            return;
        }
        int gameTransferListIndex = getGameTransferListIndex(id2);
        if (gameTransferListIndex < 0) {
            startSend();
            return;
        }
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        GameTransferBean gameTransferBean = sparseArrayC.get(gameTransferListIndex);
        gameTransferBean.setTransferStatus(4);
        sparseArrayC.setValueAt(gameTransferListIndex, gameTransferBean);
        this.gameListAdapter.notifyItemChanged(gameTransferListIndex);
        startSend();
    }

    synchronized void updateTransferProgress() {
        SparseArray<GameTransferBean> sparseArrayC = this.gameListAdapter.c();
        if (this.sending) {
            List<GameTransferBean> list = this.sendGameList;
            int size = list != null ? list.size() : 0;
            int i10 = 0;
            for (int i11 = 0; sparseArrayC != null && i11 < sparseArrayC.size(); i11++) {
                GameTransferBean gameTransferBean = sparseArrayC.get(i11);
                if (gameTransferBean != null && gameTransferBean.getTransferStatus() == 3) {
                    i10++;
                }
            }
            if (size <= 0 || i10 >= size) {
                this.tansfer_ok_btn.setText(R.string.game_transfer_transfer_ok);
            } else {
                this.tansfer_ok_btn.setText(String.format("已完成 %s/%s", i10 + "", size + ""));
            }
        } else {
            refreshEnableSendState();
            this.tansfer_ok_btn.setText(R.string.game_transfer_transfer_ok);
        }
        sortState();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void zipEvent(com.join.mgps.event.e0 event) {
        if (event == null) {
        }
        String str = event.f68171b;
        this.lastReceiverTime = System.currentTimeMillis();
        switch (event.f68170a) {
            case 5:
                updateGameListFileStatu(str, 5);
                this.scManager.p();
                break;
            case 6:
                updateHistoryGameListStatu(str, 6);
                break;
            case 7:
                updateHistoryGameListStatu(str, 7);
                break;
            case 8:
                updateHistoryGameListStatu(str, 8);
                break;
            case 9:
                updateHistoryGameListStatu(str, 9);
                DownloadTask downloadTask = this.recevedDownloadTask.get(str);
                backAchivedData(downloadTask);
                deletFile(downloadTask.getPath());
                break;
        }
    }
}
