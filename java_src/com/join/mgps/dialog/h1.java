package com.join.mgps.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.UtilsMy;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;

/* JADX INFO: loaded from: classes3.dex */
public class h1 extends p implements View.OnClickListener, DialogInterface.OnShowListener {
    public static final int A = 2;
    public static final int B = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f67568y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f67569z = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f67570k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    TextView f67571l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    TextView f67572m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    TextView f67573n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    TextView f67574o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ProgressBar f67575p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    LinearLayout f67576q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ImageView f67577r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    a f67578s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f67579t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f67580u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f67581v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f67582w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    ModGameArchivePathData f67583x;

    public interface a {
        void a(h1 dialog);

        void b(h1 dialog);
    }

    public h1(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.f67579t = 0;
        this.f67581v = 1;
        this.f67582w = false;
    }

    private void A() {
        this.f67576q.setVisibility(8);
        this.f67572m.setVisibility(0);
        this.f67572m.setText("发现新版本，是否更新");
        this.f67570k.setText("忽略");
        this.f67571l.setText("立即更新");
        this.f67571l.setBackgroundResource(R.drawable.btn_mod_install);
    }

    private void B() {
        this.f67576q.setVisibility(0);
        this.f67572m.setVisibility(8);
        this.f67574o.setText("等待中");
        this.f67570k.setText("后台下载");
        this.f67571l.setText("等待中");
        this.f67571l.setBackgroundResource(R.drawable.btn_mod_stop);
    }

    private void m() {
        this.f67570k = (TextView) findViewById(R.id.tv_mod_opt_left);
        this.f67571l = (TextView) findViewById(R.id.tv_mod_opt_right);
        this.f67572m = (TextView) findViewById(R.id.tv_mod_title);
        this.f67573n = (TextView) findViewById(R.id.tv_mod_progress);
        this.f67575p = (ProgressBar) findViewById(R.id.pb_mod_progress);
        this.f67576q = (LinearLayout) findViewById(R.id.ll_mod_download);
        this.f67574o = (TextView) findViewById(R.id.tv_mod_status);
        this.f67570k.setOnClickListener(this);
        this.f67571l.setOnClickListener(this);
    }

    private void n() {
        this.f67571l = (TextView) findViewById(R.id.tv_mod_opt_right);
        this.f67577r = (ImageView) findViewById(R.id.iv_close);
        this.f67571l.setOnClickListener(this);
        this.f67577r.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.centerText);
        ImageView imageView = (ImageView) findViewById(R.id.centerImage);
        if (this.f67583x == null) {
            textView.setText("稳定流畅");
            imageView.setImageResource(R.drawable.ic_mod_stable);
        } else {
            textView.setText("云存档");
            imageView.setImageResource(R.drawable.ic_mod_cloud);
        }
    }

    private void y() {
        this.f67576q.setVisibility(0);
        this.f67572m.setVisibility(8);
        this.f67574o.setText("下载中");
        this.f67570k.setText("后台下载");
        this.f67571l.setText("暂停");
        this.f67571l.setBackgroundResource(R.drawable.btn_mod_stop);
    }

    private void z(boolean isModMainGame) {
        this.f67576q.setVisibility(8);
        this.f67572m.setVisibility(0);
        if (isModMainGame) {
            this.f67572m.setText("启动标准版需安装游戏至本地");
        } else {
            this.f67572m.setText("启动增强版需\n安装游戏至虚拟机");
        }
        this.f67570k.setText("取消");
        if (this.f67582w) {
            this.f67571l.setText("一键导入");
        } else {
            this.f67571l.setText("立即安装");
        }
        this.f67571l.setBackgroundResource(R.drawable.btn_mod_install);
    }

    public void C(int type, boolean isModMainGame, boolean hasVersion) {
        this.f67579t = type;
        if (type != 0) {
            if (type == 1) {
                setContentView(R.layout.dialog_mod_download_install);
                m();
                A();
                return;
            } else if (type == 2) {
                setContentView(R.layout.dialog_mod_download);
                m();
                y();
                return;
            } else {
                if (type != 3) {
                    return;
                }
                setContentView(R.layout.dialog_mod_download);
                m();
                B();
                return;
            }
        }
        this.f67582w = hasVersion;
        if (isModMainGame) {
            setContentView(R.layout.dialog_mod_download_install);
            m();
            z(isModMainGame);
            return;
        }
        setContentView(R.layout.dialog_mod_download_new);
        n();
        if (hasVersion) {
            this.f67571l.setText("一键导入");
        } else {
            this.f67571l.setText("立即安装");
        }
        com.papa.sim.statistic.t.l(getContext()).R1(Event.modDownloadTip, new Ext().setGameId(this.f67580u).setPosition(this.f67581v + ""));
    }

    public void D(DownloadTask task) {
        if (task != null) {
            this.f67575p.setProgress((int) task.getProgress());
            long j10 = (long) (Double.parseDouble(task.getShowSize()) * 1000.0d * 1000.0d);
            com.join.mgps.Util.h1.e("updateStatus: " + UtilsMy.c(j10));
            this.f67573n.setText(UtilsMy.c(task.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
            int status = task.getStatus();
            if (status == 2) {
                this.f67574o.setText("下载中");
                this.f67571l.setText("暂停");
                this.f67571l.setBackgroundResource(R.drawable.btn_mod_stop);
                return;
            }
            if (status != 3) {
                if (status == 10) {
                    this.f67574o.setText("等待中");
                    this.f67571l.setText("等待中");
                    this.f67571l.setBackgroundResource(R.drawable.btn_mod_stop);
                    return;
                } else if (status != 27) {
                    return;
                }
            }
            this.f67574o.setText("暂停");
            this.f67571l.setText("继续");
            this.f67571l.setBackgroundResource(R.drawable.btn_mod_install);
        }
    }

    public int o() {
        return this.f67581v;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        a aVar;
        int id2 = v10.getId();
        if (id2 == R.id.tv_mod_opt_left) {
            a aVar2 = this.f67578s;
            if (aVar2 != null) {
                aVar2.b(this);
                return;
            }
            return;
        }
        if (id2 == R.id.tv_mod_opt_right) {
            a aVar3 = this.f67578s;
            if (aVar3 != null) {
                aVar3.a(this);
                return;
            }
            return;
        }
        if (id2 != R.id.iv_close || (aVar = this.f67578s) == null) {
            return;
        }
        aVar.b(this);
    }

    @Override // com.join.mgps.dialog.p, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setOnShowListener(this);
    }

    public void onShow(DialogInterface dialog) {
    }

    public void p(ModGameArchivePathData cloud_archive_local_path) {
        this.f67583x = cloud_archive_local_path;
    }

    public void q(String content) {
        this.f67572m.setText(content);
    }

    public void r(String gameId) {
        this.f67580u = gameId;
    }

    public void s(@DrawableRes int background) {
        this.f67570k.setBackgroundResource(background);
    }

    public void t(String text) {
        this.f67570k.setText(text);
    }

    public void u(a iOptsClickListener) {
        this.f67578s = iOptsClickListener;
    }

    public void v(int position) {
        this.f67581v = position;
    }

    public void w(@DrawableRes int background) {
        this.f67571l.setBackgroundResource(background);
    }

    public void x(String text) {
        this.f67571l.setText(text);
    }
}
