package com.join.mgps.activity.mygame.dialog;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.github.snowdream.android.app.downloader.c;
import com.haima.hmcp.proto.GSSDK;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.s3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.r;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.plugdown_dialog_layout)
public class PlugDownDialogAcitivity extends BaseActivity {
    private static b factory;
    static b.InterfaceC0591b listener;
    private static Map<String, c> tasks = new ConcurrentHashMap(0);

    @ViewById
    TextView appSize;
    IStartEmuGameCallback callback;

    @ViewById
    TextView cancle;
    DownloadTask downloadTask;
    List<DownloadTask> downloadTasks;

    @Extra
    int downloadType = 1;
    DownloadTask gameTask;

    @Extra
    String gameid;

    @ViewById
    TextView info;
    DownloadTask lastGame;

    @ViewById
    TextView lodingInfo;

    @ViewById
    TextView ok;

    @Extra
    String plugNumber;

    @ViewById
    ProgressBar progressBar;

    @ViewById
    ProgressBar progressBarZip;

    @ViewById
    TextView title;

    interface IStartEmuGameCallback {
        void onStartEmuGame();
    }

    public class UNZIPResThread extends Thread {
        private DownloadTask mDownloadTask;
        ProgressMonitor progressMonitor = null;
        long initSize = 0;

        class ProgressMonitor extends Thread {
            File mFile;
            private boolean monitor = true;

            public ProgressMonitor(File file) {
                this.mFile = file;
                UNZIPResThread.this.initSize = UtilsMy.N1(file);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                while (this.monitor && UNZIPResThread.this.mDownloadTask != null) {
                    try {
                        File file = this.mFile;
                        if (file != null) {
                            long jN1 = UtilsMy.N1(file);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("zip currentSize =");
                            sb2.append(jN1);
                            long res_actual_size = UNZIPResThread.this.mDownloadTask.getRes_actual_size() * 2;
                            if (res_actual_size <= 0) {
                                res_actual_size = 1;
                            }
                            UNZIPResThread uNZIPResThread = UNZIPResThread.this;
                            PlugDownDialogAcitivity plugDownDialogAcitivity = PlugDownDialogAcitivity.this;
                            long j10 = uNZIPResThread.initSize;
                            plugDownDialogAcitivity.updateUnzipRes(jN1 - j10, res_actual_size, (int) (((jN1 - j10) * 100) / res_actual_size));
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("totalSize=");
                            sb3.append(res_actual_size);
                            sb3.append(";zip progress =");
                            sb3.append(UNZIPResThread.this.mDownloadTask.getProgress());
                            Thread.sleep(1000L);
                        }
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                        this.monitor = false;
                        return;
                    }
                }
            }

            public void setMonitor(boolean monitor) {
                this.monitor = monitor;
            }
        }

        public UNZIPResThread(DownloadTask downloadTask, Context context) {
            this.mDownloadTask = downloadTask;
        }

        boolean hasResource() {
            try {
                DownloadTask downloadTask = this.mDownloadTask;
                if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getResource_url_remote()) && !TextUtils.isEmpty(this.mDownloadTask.getResource_path()) && (this.mDownloadTask.getResource_path().endsWith(".zip") || this.mDownloadTask.getResource_path().endsWith(".zip/"))) {
                    File file = new File(this.mDownloadTask.getResource_path());
                    return file.exists() && file.isFile();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return false;
        }

        @Override // java.lang.Thread
        public void interrupt() {
            super.interrupt();
            DownloadTask downloadTask = this.mDownloadTask;
            if (downloadTask != null) {
                downloadTask.set_from_type(0);
            }
        }

        /* JADX WARN: Code duplicated, block: B:46:0x00d9 A[Catch: Exception -> 0x00e2, all -> 0x00f5, TryCatch #6 {Exception -> 0x00e2, blocks: (B:34:0x00b9, B:36:0x00bd, B:38:0x00c2, B:44:0x00d5, B:46:0x00d9, B:48:0x00de, B:49:0x00e1, B:10:0x0036, B:12:0x003a, B:14:0x003f, B:15:0x0042, B:17:0x0071, B:19:0x0077, B:20:0x0082, B:23:0x0097), top: B:61:0x0005, outer: #2 }] */
        /* JADX WARN: Code duplicated, block: B:48:0x00de A[Catch: Exception -> 0x00e2, all -> 0x00f5, TryCatch #6 {Exception -> 0x00e2, blocks: (B:34:0x00b9, B:36:0x00bd, B:38:0x00c2, B:44:0x00d5, B:46:0x00d9, B:48:0x00de, B:49:0x00e1, B:10:0x0036, B:12:0x003a, B:14:0x003f, B:15:0x0042, B:17:0x0071, B:19:0x0077, B:20:0x0082, B:23:0x0097), top: B:61:0x0005, outer: #2 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Throwable th;
            File file;
            Exception e10;
            IStartEmuGameCallback iStartEmuGameCallback;
            ProgressMonitor progressMonitor;
            super.run();
            File file2 = null;
            try {
                try {
                    try {
                        try {
                            if (hasResource()) {
                                file = new File(this.mDownloadTask.getResource_path());
                                try {
                                    ProgressMonitor progressMonitor2 = new ProgressMonitor(file.getParentFile());
                                    this.progressMonitor = progressMonitor2;
                                    progressMonitor2.start();
                                    s3.e(file, file.getParent(), this.mDownloadTask.getPackageName());
                                    file2 = file;
                                } catch (Exception e11) {
                                    e10 = e11;
                                    e10.printStackTrace();
                                    ProgressMonitor progressMonitor3 = this.progressMonitor;
                                    if (progressMonitor3 != null) {
                                        progressMonitor3.setMonitor(false);
                                    }
                                    ProgressMonitor progressMonitor4 = this.progressMonitor;
                                    if (progressMonitor4 != null) {
                                        progressMonitor4.setMonitor(false);
                                    }
                                    if (file != null) {
                                        UtilsMy.delete(file);
                                    }
                                    this.mDownloadTask.set_from_type(0);
                                    IStartEmuGameCallback iStartEmuGameCallback2 = PlugDownDialogAcitivity.this.callback;
                                    if (iStartEmuGameCallback2 != null) {
                                        iStartEmuGameCallback2.onStartEmuGame();
                                        return;
                                    }
                                    return;
                                }
                            }
                            ProgressMonitor progressMonitor5 = this.progressMonitor;
                            if (progressMonitor5 != null) {
                                progressMonitor5.setMonitor(false);
                            }
                            if (file2 != null) {
                                UtilsMy.delete(file2);
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("romsPath6-");
                            sb2.append(this.mDownloadTask.getGameZipPath());
                            this.mDownloadTask.setStatus(5);
                            f.M().m(PlugDownDialogAcitivity.this.downloadTask);
                            DlTaskManager.INSTANCE.onTaskChanged(this.mDownloadTask);
                            DownloadTask downloadTask = this.mDownloadTask;
                            if (downloadTask != null && downloadTask.getResource_path() != null) {
                                try {
                                    o3.E(".downloadTask", new File(this.mDownloadTask.getResource_path()).getParent(), JsonMapper.getInstance().toJson(this.mDownloadTask));
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            this.mDownloadTask.set_from_type(0);
                            iStartEmuGameCallback = PlugDownDialogAcitivity.this.callback;
                            if (iStartEmuGameCallback == null) {
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            progressMonitor = this.progressMonitor;
                            if (progressMonitor != null) {
                                progressMonitor.setMonitor(false);
                            }
                            if (0 != 0) {
                                UtilsMy.delete(null);
                            }
                            throw th;
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        this.mDownloadTask.set_from_type(0);
                        iStartEmuGameCallback = PlugDownDialogAcitivity.this.callback;
                        if (iStartEmuGameCallback == null) {
                            return;
                        }
                    }
                    iStartEmuGameCallback.onStartEmuGame();
                } catch (Exception e14) {
                    file = null;
                    e10 = e14;
                } catch (Throwable th3) {
                    th = th3;
                    progressMonitor = this.progressMonitor;
                    if (progressMonitor != null) {
                        progressMonitor.setMonitor(false);
                    }
                    if (0 != 0) {
                        UtilsMy.delete(null);
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                this.mDownloadTask.set_from_type(0);
                IStartEmuGameCallback iStartEmuGameCallback3 = PlugDownDialogAcitivity.this.callback;
                if (iStartEmuGameCallback3 != null) {
                    iStartEmuGameCallback3.onStartEmuGame();
                }
                throw th4;
            }
        }
    }

    private void checkAndDownRes() {
        DownloadTask downloadTask = this.gameTask;
        if (downloadTask == null || downloadTask.isUncheckSelfSupport() || this.gameTask.getSp_tag_info() == null || this.gameTask.getSp_tag_info().getSelf_support() != null) {
            startDownloadRes(this.gameTask.getResource_url_remote());
        } else {
            downloadGameNotSelfSupport(this.gameid, this.gameTask);
        }
    }

    private String getResFileName(String urlString) {
        String strSubstring = urlString.substring(urlString.lastIndexOf(e.F0) + 1, urlString.length());
        if (strSubstring.length() > 50) {
            return strSubstring.contains("?") ? strSubstring.substring(0, strSubstring.indexOf("?")) : strSubstring.substring(0, 45);
        }
        return strSubstring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void normalStartGame() {
        DownloadTask downloadTask = this.lastGame;
        if (downloadTask != null && downloadTask.getStatus() == 5) {
            this.gameTask.setCheckRes(false);
            UtilsMy.m4(this, this.gameTask, 0, "");
            t.l(this).R1(Event.StartgameLoadFininsh, new Ext());
        }
        finish();
    }

    private void receiveDelete(DownloadTask downloadTask) {
        notifyUi();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            notifyUi();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        notifyUi();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        try {
            this.downloadTasks = f.M().d();
            if (t2.i(this.gameid)) {
                this.lastGame = f.M().G(this.gameid);
            } else {
                for (DownloadTask downloadTask2 : this.downloadTasks) {
                    if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                        int i10 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                        this.lastGame = downloadTask2;
                    }
                }
            }
            DownloadTask downloadTask3 = this.lastGame;
            if (downloadTask3 != null) {
                this.title.setText(downloadTask3.getShowName());
            }
            this.appSize.setText(downloadTask.getShowName() + "初始化完成");
            this.lodingInfo.setText("");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyUi();
    }

    private void startDownloadRes(String resource_url_remote) {
        DownloadTask downloadTask = this.gameTask;
        if (downloadTask == null) {
            IStartEmuGameCallback iStartEmuGameCallback = this.callback;
            if (iStartEmuGameCallback != null) {
                iStartEmuGameCallback.onStartEmuGame();
                return;
            } else {
                finish();
                return;
            }
        }
        String name = downloadTask.getName();
        if (t2.h(name)) {
            name = getResFileName(resource_url_remote);
        }
        c cVar = new c(resource_url_remote, name, z.f50168g + this.gameTask.getRomType() + "/roms", 0L);
        factory.b(cVar);
        if (tasks == null) {
            IStartEmuGameCallback iStartEmuGameCallback2 = this.callback;
            if (iStartEmuGameCallback2 != null) {
                iStartEmuGameCallback2.onStartEmuGame();
                return;
            }
            return;
        }
        if (cVar.i() == null || cVar.i().equals("")) {
            IStartEmuGameCallback iStartEmuGameCallback3 = this.callback;
            if (iStartEmuGameCallback3 != null) {
                iStartEmuGameCallback3.onStartEmuGame();
                return;
            }
            return;
        }
        String strI = cVar.i();
        if (tasks.get(cVar.i()) == null) {
            synchronized (tasks) {
                tasks.put(strI, cVar);
            }
        } else {
            IStartEmuGameCallback iStartEmuGameCallback4 = this.callback;
            if (iStartEmuGameCallback4 != null) {
                iStartEmuGameCallback4.onStartEmuGame();
            }
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTaskG = j.f().g(this.downloadTask.getCrc_link_type_val());
        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
        if (this.downloadTask.getSize() == 0) {
            this.appSize.setText("正在下载（" + UtilsMy.c(downloadTaskG.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
        } else {
            this.appSize.setText("正在下载（" + UtilsMy.c(downloadTaskG.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
        }
        if (this.downloadTask.getStatus() == 12) {
            this.progressBarZip.setProgress((int) downloadTaskG.getProgress());
        } else {
            this.progressBar.setProgress((int) downloadTaskG.getProgress());
        }
        if (this.downloadTask.getStatus() == 2) {
            this.lodingInfo.setText(downloadTaskG.getProgress() + "%");
        }
    }

    @AfterViews
    void afterViews() {
        MApplication.X = true;
        g1.d("PlugDownDialogAcitivity", "PlugDownDialogAcitivity oncreate");
        j0.a().d(this);
        this.downloadTask = f.M().c0(Integer.parseInt(this.plugNumber));
        this.downloadTasks = f.M().d();
        if (this.downloadTask == null) {
            finish();
            return;
        }
        this.gameTask = f.M().G(this.gameid);
        int i10 = this.downloadType;
        if (i10 == 2 || i10 == 3) {
            initPreDownloadFactory();
            if (this.downloadType == 2) {
                this.callback = new IStartEmuGameCallback() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.1
                    @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.IStartEmuGameCallback
                    public void onStartEmuGame() {
                        PlugDownDialogAcitivity.this.normalStartGame();
                    }
                };
                checkAndDownRes();
            }
        }
        this.title.setText(this.downloadTask.getShowName());
        this.info.setText("初次加载游戏需初始化" + UtilsMy.d2(Integer.parseInt(this.downloadTask.getPlugin_num())) + "资源文件，请稍后…");
        if (this.downloadTask.getStatus() == 5) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                if (downloadTask.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                    int i11 = (downloadTask.getFinishTime() > 0L ? 1 : (downloadTask.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask;
                }
            }
            if (t2.i(this.gameid)) {
                this.lastGame = f.M().G(this.gameid);
            }
            DownloadTask downloadTask2 = this.lastGame;
            if (downloadTask2 != null) {
                this.title.setText(downloadTask2.getShowName());
            }
            this.appSize.setText(this.downloadTask.getShowName() + "初始化完成");
            t.l(this).R1(Event.showEmuLoadFininsh, new Ext());
        } else {
            t.l(this).R1(Event.showEmuLoading, new Ext());
        }
        notifyUi();
        getWindow().getDecorView().setSystemUiVisibility(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
    }

    @Click
    void cancle() {
        finish();
        t.l(this).R1(Event.EmuLoadingBackground, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downloadGameNotSelfSupport(String gameId, DownloadTask downloadTask) {
        if (!m.j(this)) {
            showTost(getString(R.string.net_connect_failed));
            IStartEmuGameCallback iStartEmuGameCallback = this.callback;
            if (iStartEmuGameCallback != null) {
                iStartEmuGameCallback.onStartEmuGame();
                return;
            }
            return;
        }
        try {
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            queryDownloadInfoRequestArgs.setGameId(gameId);
            queryDownloadInfoRequestArgs.setUid(uid);
            queryDownloadInfoRequestArgs.setToken(token);
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            ResponseModel<QueryDownloadInfoResponseData> responseModelF0 = i.P0().f0(requestModel);
            if (responseModelF0 == null || responseModelF0.getCode() != 600) {
                showTost("获取资源失败，请重新再试。");
                IStartEmuGameCallback iStartEmuGameCallback2 = this.callback;
                if (iStartEmuGameCallback2 != null) {
                    iStartEmuGameCallback2.onStartEmuGame();
                    return;
                }
                return;
            }
            if (responseModelF0.getData() == null) {
                showTost("获取资源失败，请重新再试。");
                IStartEmuGameCallback iStartEmuGameCallback3 = this.callback;
                if (iStartEmuGameCallback3 != null) {
                    iStartEmuGameCallback3.onStartEmuGame();
                    return;
                }
                return;
            }
            QueryDownloadInfoResponseData data = responseModelF0.getData();
            downloadTask.setVer(data.getVer());
            downloadTask.setVer_name(data.getVer_name());
            downloadTask.setUrl(data.getDownloadURL());
            downloadTask.setResource_url_remote(data.getResourceURL());
            downloadTask.setActual_size(data.getActualSize());
            downloadTask.setRes_actual_size(data.getResourceSize());
            downloadTask.setFromRecomDown(false);
            startDownloadRes(downloadTask.getResource_url_remote());
        } catch (Exception e10) {
            e10.printStackTrace();
            showTost("获取资源失败，请重新再试。");
            IStartEmuGameCallback iStartEmuGameCallback4 = this.callback;
            if (iStartEmuGameCallback4 != null) {
                iStartEmuGameCallback4.onStartEmuGame();
            }
        }
    }

    public void initPreDownloadFactory() {
        factory = b.e();
        b.InterfaceC0591b interfaceC0591b = new b.InterfaceC0591b() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.4
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onError(String url) {
                IStartEmuGameCallback iStartEmuGameCallback = PlugDownDialogAcitivity.this.callback;
                if (iStartEmuGameCallback != null) {
                    iStartEmuGameCallback.onStartEmuGame();
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onFinish(String url) {
                h1.a("onFinish onStart - " + url, new Object[0]);
                c cVar = (c) PlugDownDialogAcitivity.tasks.get(url);
                if (cVar != null) {
                    PlugDownDialogAcitivity.this.gameTask.setResource_path(cVar.g().getAbsolutePath());
                    f.M().m(PlugDownDialogAcitivity.this.gameTask);
                    DlTaskManager.INSTANCE.onTaskChanged(PlugDownDialogAcitivity.this.gameTask);
                }
                PlugDownDialogAcitivity plugDownDialogAcitivity = PlugDownDialogAcitivity.this;
                plugDownDialogAcitivity.new UNZIPResThread(plugDownDialogAcitivity.gameTask, plugDownDialogAcitivity).start();
                PlugDownDialogAcitivity.tasks.remove(url);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onProgress(final String url, final int progress, String speed) {
                h1.a("PreDownloadPlug", "PreDownloadPlug onProgress - " + url + " progress=" + progress + " speed" + speed);
                PlugDownDialogAcitivity.this.runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVar = (c) PlugDownDialogAcitivity.tasks.get(url);
                        if (cVar != null) {
                            PlugDownDialogAcitivity.this.appSize.setText("正在下载（" + UtilsMy.c(cVar.c()) + e.F0 + UtilsMy.c(cVar.e()) + ")");
                            PlugDownDialogAcitivity.this.progressBar.setProgress(progress);
                        }
                    }
                });
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStart(String url) {
                h1.a("PreDownloadPlug onStart - " + url, new Object[0]);
                PlugDownDialogAcitivity.this.runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PlugDownDialogAcitivity.this.progressBar.setProgress(0);
                        PlugDownDialogAcitivity.this.info.setText("加载游戏需初始化" + UtilsMy.d2(Integer.parseInt(PlugDownDialogAcitivity.this.gameTask.getPlugin_num())) + "资源文件，请稍后…");
                        PlugDownDialogAcitivity.this.appSize.setText("正在下载（" + UtilsMy.c(PlugDownDialogAcitivity.this.gameTask.getRes_currentSize()) + e.F0 + UtilsMy.c(PlugDownDialogAcitivity.this.gameTask.getRes_actual_size()) + ")");
                    }
                });
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStop(String url) {
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onWait(String url) {
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void updateSize(String url, long actualSize) {
                DownloadTask downloadTask = PlugDownDialogAcitivity.this.gameTask;
                if (downloadTask != null) {
                    downloadTask.setRes_actual_size(actualSize);
                }
            }
        };
        listener = interfaceC0591b;
        factory.m(interfaceC0591b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyUi() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        long j10 = (long) (Double.parseDouble(this.downloadTask.getShowSize()) * 1024.0d * 1024.0d);
        g1.d("plugDownDialog", "statues=" + status + "");
        if (status == 2) {
            UtilsMy.U4(this.downloadTask);
            DownloadTask downloadTask2 = this.downloadTask;
            if (downloadTask2 != null) {
                if (downloadTask2.getSize() == 0) {
                    this.appSize.setText("正在下载（" + UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
                } else {
                    this.appSize.setText("正在下载（" + UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
                }
                this.progressBar.setProgress((int) this.downloadTask.getProgress());
                this.downloadTask.getSpeed();
                this.lodingInfo.setText(this.downloadTask.getProgress() + "%");
                return;
            }
            return;
        }
        if (status != 3) {
            if (status != 5) {
                if (status != 6) {
                    if (status != 42) {
                        switch (status) {
                            case 10:
                                if (this.downloadTask != null) {
                                    this.appSize.setText("正在下载（" + UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
                                    try {
                                        this.progressBar.setProgress((int) this.downloadTask.getProgress());
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                this.lodingInfo.setText("等待中");
                                break;
                            case 11:
                                this.appSize.setText("下载完成");
                                this.progressBar.setProgress(100);
                                this.cancle.setText("去查看");
                                this.ok.setText("安装");
                                break;
                            case 12:
                                this.appSize.setText("正在下载（" + UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
                                this.lodingInfo.setText("解压中..");
                                this.progressBarZip.setVisibility(0);
                                this.progressBar.setVisibility(8);
                                this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                break;
                            case 13:
                                this.appSize.setText("正在下载（" + UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10) + ")");
                                this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                break;
                        }
                        return;
                    }
                }
            }
            this.appSize.setText(this.downloadTask.getShowName() + "初始化完成");
            this.progressBar.setProgress(100);
            this.downloadTasks = f.M().d();
            if (t2.i(this.gameid)) {
                this.lastGame = f.M().G(this.gameid);
            } else {
                for (DownloadTask downloadTask3 : this.downloadTasks) {
                    if (downloadTask3.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask3.getCrc_link_type_val()) && downloadTask3.getStatus() == 5) {
                        int i10 = (downloadTask3.getFinishTime() > 0L ? 1 : (downloadTask3.getFinishTime() == 0L ? 0 : -1));
                        this.lastGame = downloadTask3;
                    }
                }
            }
            IStartEmuGameCallback iStartEmuGameCallback = new IStartEmuGameCallback() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.3
                @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.IStartEmuGameCallback
                public void onStartEmuGame() {
                    PlugDownDialogAcitivity.this.normalStartGame();
                }
            };
            this.callback = iStartEmuGameCallback;
            if (this.downloadType == 1) {
                iStartEmuGameCallback.onStartEmuGame();
                return;
            } else {
                checkAndDownRes();
                return;
            }
        }
        DownloadTask downloadTask4 = this.downloadTask;
        if (downloadTask4 != null) {
            try {
                if (downloadTask4.getSize() == 0) {
                    this.appSize.setText(UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
                } else {
                    this.appSize.setText(UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
                }
                this.progressBar.setProgress((int) this.downloadTask.getProgress());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        this.lodingInfo.setText("暂停中");
    }

    @Click
    void ok() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 5) {
            if (status != 11) {
                finish();
                return;
            } else {
                g.t0(this).A(this, this.downloadTask.getGameZipPath());
                return;
            }
        }
        IStartEmuGameCallback iStartEmuGameCallback = new IStartEmuGameCallback() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.2
            @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity.IStartEmuGameCallback
            public void onStartEmuGame() {
                DownloadTask downloadTask2 = PlugDownDialogAcitivity.this.lastGame;
                if (downloadTask2 != null) {
                    downloadTask2.setCheckRes(false);
                    PlugDownDialogAcitivity plugDownDialogAcitivity = PlugDownDialogAcitivity.this;
                    UtilsMy.k4(plugDownDialogAcitivity, plugDownDialogAcitivity.lastGame);
                }
                t.l(PlugDownDialogAcitivity.this).R1(Event.startAfterEmuLoad, new Ext());
                PlugDownDialogAcitivity.this.finish();
            }
        };
        this.callback = iStartEmuGameCallback;
        if (this.downloadType == 1) {
            iStartEmuGameCallback.onStartEmuGame();
        } else {
            checkAndDownRes();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        if (downloadTaskEvent.c() == 8) {
            updateProgressPartly();
            return;
        }
        if (this.plugNumber.equals(downloadTaskEvent.a().getCrc_link_type_val())) {
            this.downloadTask = downloadTaskEvent.a();
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                updateUI(this.downloadTask, 1);
                return;
            }
            if (iC == 3) {
                updateUI(this.downloadTask, 2);
                return;
            }
            if (iC == 5) {
                updateUI(this.downloadTask, 5);
                return;
            }
            if (iC == 6) {
                updateUI(this.downloadTask, 6);
                return;
            }
            if (iC == 7) {
                this.downloadTask.setStatus(7);
                updateUI(this.downloadTask, 3);
                return;
            }
            if (iC == 10) {
                DownloadTask downloadTask = this.downloadTask;
                if (downloadTask == null) {
                    return;
                }
                updateUI(downloadTask, 7);
                return;
            }
            if (iC == 12) {
                updateUI(this.downloadTask, 8);
            } else {
                if (iC != 13) {
                    return;
                }
                updateUI(this.downloadTask, 9);
            }
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        MApplication.X = false;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MApplication.X = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        ToastManager.show(message);
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUnzipRes(long size, long unzipSize, int progress) {
        this.appSize.setText("正在解压（" + UtilsMy.c(size) + e.F0 + UtilsMy.c(unzipSize) + ")");
        this.lodingInfo.setText("解压中..");
        this.progressBarZip.setVisibility(0);
        this.progressBar.setVisibility(8);
        this.progressBarZip.setProgress(progress);
    }
}
