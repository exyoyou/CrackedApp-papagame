package com.join.mgps.activity.mygame.dialog;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.j0;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.List;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.plugdown_finish_dialog_layout)
public class PlugDownFinishDialogAcitivity extends BaseActivity {

    @ViewById
    TextView appSize;

    @ViewById
    ImageView cancle;
    DownloadTask downloadTask;
    List<DownloadTask> downloadTasks;

    @ViewById
    SimpleDraweeView icon;

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
            List<DownloadTask> listD = f.M().d();
            this.downloadTasks = listD;
            for (DownloadTask downloadTask2 : listD) {
                if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                    int i10 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask2;
                }
            }
            DownloadTask downloadTask3 = this.lastGame;
            if (downloadTask3 != null) {
                this.title.setText(downloadTask3.getShowName());
            }
            this.appSize.setText(downloadTask.getShowName() + "初始化完成");
            t.l(this).R1(Event.showEmuLoadFininsh, new Ext());
            this.lodingInfo.setText("");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyUi();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTaskG = j.f().g(this.downloadTask.getCrc_link_type_val());
        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
        if (this.downloadTask.getSize() == 0) {
            this.appSize.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
        } else {
            this.appSize.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
        }
        if (this.downloadTask.getStatus() == 12) {
            this.progressBarZip.setProgress((int) downloadTaskG.getProgress());
        } else {
            this.progressBar.setProgress((int) downloadTaskG.getProgress());
        }
        if (this.downloadTask.getStatus() == 2) {
            this.lodingInfo.setText(downloadTaskG.getSpeed() + "/S");
        }
    }

    @AfterViews
    void afterViews() {
        g1.d("PlugDownDialogAcitivity", "PlugDownDialogAcitivity oncreate");
        j0.a().d(this);
        this.downloadTask = f.M().c0(Integer.parseInt(this.plugNumber));
        this.downloadTasks = f.M().d();
        if (this.downloadTask == null) {
            finish();
            return;
        }
        this.title.setText("正在初始化" + this.downloadTask.getShowName());
        this.ok.setText("后台下载");
        if (this.downloadTask.getStatus() == 5) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                if (downloadTask.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                    int i10 = (downloadTask.getFinishTime() > 0L ? 1 : (downloadTask.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask;
                }
            }
            DownloadTask downloadTask2 = this.lastGame;
            if (downloadTask2 != null) {
                this.title.setText(downloadTask2.getShowName());
            }
            this.info.setText(this.downloadTask.getShowName() + "初始化完成");
            l.h(this.icon, this.lastGame.getPortraitURL());
            t.l(this).R1(Event.showEmuLoadFininsh, new Ext());
        } else {
            t.l(this).R1(Event.showEmuLoading, new Ext());
        }
        notifyUi();
    }

    @Click
    void cancle() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status == 5) {
            finish();
            return;
        }
        if (status == 11) {
            finish();
        }
        finish();
    }

    @UiThread
    void notifyUi() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        long j10 = (long) (Double.parseDouble(this.downloadTask.getShowSize()) * 1024.0d * 1024.0d);
        if (status == 2) {
            UtilsMy.U4(this.downloadTask);
            DownloadTask downloadTask2 = this.downloadTask;
            if (downloadTask2 != null) {
                if (downloadTask2.getSize() == 0) {
                    this.appSize.setText(UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
                } else {
                    this.appSize.setText(UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
                }
                this.progressBar.setProgress((int) this.downloadTask.getProgress());
                String speed = this.downloadTask.getSpeed();
                this.lodingInfo.setText(speed + "/S");
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
                                    this.appSize.setText(UtilsMy.c(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.c(j10));
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
                                this.ok.setText("安装");
                                break;
                            case 12:
                                this.appSize.setText(UtilsMy.c(j10) + e.F0 + UtilsMy.c(j10));
                                this.lodingInfo.setText("解压中..");
                                this.progressBarZip.setVisibility(0);
                                this.progressBar.setVisibility(8);
                                this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                break;
                            case 13:
                                this.appSize.setText(UtilsMy.c(j10) + e.F0 + UtilsMy.c(j10));
                                this.lodingInfo.setText("点击重新解压");
                                this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                break;
                        }
                        return;
                    }
                }
            }
            this.appSize.setText(this.downloadTask.getShowName() + "初始化完成");
            this.progressBar.setProgress(100);
            this.ok.setText("开始游戏");
            return;
        }
        DownloadTask downloadTask3 = this.downloadTask;
        if (downloadTask3 != null) {
            try {
                if (downloadTask3.getSize() == 0) {
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
        DownloadTask downloadTask2 = this.lastGame;
        if (downloadTask2 != null) {
            UtilsMy.k4(this, downloadTask2);
        }
        t.l(this).R1(Event.startAfterEmuLoad, new Ext());
        finish();
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
}
