package com.join.mgps.customview;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.j2;
import com.join.mgps.Util.t2;
import com.join.mgps.enums.Dtype;

/* JADX INFO: loaded from: classes3.dex */
public class b0 extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f66283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f66285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    View f66286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f66287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f66288h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f66289i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    View f66290j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    View f66291k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    View f66292l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f66293m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    a f66294n;

    public interface a {
        void onAddShortCut(String id2);

        void onDeleteArchieve(String id2);

        void onDeleteGame(String id2);

        void onGameDetail(String id2);

        void onStandMode(String id2);
    }

    public b0(Context context) {
        super(context);
        init();
    }

    public a c() {
        return this.f66294n;
    }

    public void d(a onGameOperateListener) {
        this.f66294n = onGameOperateListener;
    }

    public void e(View parent, String gameId) {
        f(parent, gameId, false, false);
    }

    public void f(View parent, String gameId, boolean isArchieve, boolean isFav) {
        showAtLocation(parent, 80, 0, 0);
        this.f66293m = gameId;
        if (isArchieve) {
            this.f66284d.setVisibility(0);
            this.f66292l.setVisibility(0);
        } else {
            this.f66284d.setVisibility(8);
            this.f66292l.setVisibility(8);
        }
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null) {
            downloadTaskG = q5.f.M().L(gameId);
        }
        if (downloadTaskG == null) {
            this.f66283c.setVisibility(8);
            this.f66291k.setVisibility(8);
            return;
        }
        if (downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 9) {
            if (d2.g(downloadTaskG.getPackageName())) {
                this.f66282b.setVisibility(8);
            } else {
                this.f66282b.setVisibility(0);
            }
            boolean z10 = true;
            if (downloadTaskG.getUrl().endsWith(".apk") || "androidobb".equals(downloadTaskG.getRomType()) || "46".equals(downloadTaskG.getRomType())) {
                String url = downloadTaskG.getUrl();
                url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).replace(".apk", "").toCharArray();
                String packageName = downloadTaskG.getPackageName();
                if (!t2.h(packageName) && com.join.mgps.Util.l.e(this.mContext, packageName) && t2.i(downloadTaskG.getTips()) && !downloadTaskG.getTips().contains("网游")) {
                    this.f66287g.setVisibility(0);
                    this.f66286f.setVisibility(0);
                } else if ((!APKUtils.K(downloadTaskG) || j2.d(this.mContext, downloadTaskG.getRef_crc_sign_id())) && !downloadTaskG.isMiniGame()) {
                    this.f66287g.setVisibility(8);
                    this.f66286f.setVisibility(8);
                } else {
                    this.f66287g.setVisibility(0);
                    this.f66286f.setVisibility(0);
                }
            } else {
                this.f66287g.setVisibility(0);
                this.f66286f.setVisibility(0);
            }
            if (isFav && this.f66287g.getVisibility() == 0) {
                this.f66287g.setVisibility(8);
                this.f66286f.setVisibility(8);
            }
            if (downloadTaskG.isCloudTask() || Dtype.CLOUD.name().equals(downloadTaskG.getFileType())) {
                this.f66287g.setVisibility(8);
                this.f66286f.setVisibility(8);
            }
            if (APKUtils.P(downloadTaskG)) {
                if (com.join.android.app.common.utils.g.t0(this.mContext).f(this.mContext, downloadTaskG.getPackageName(), APKUtils.DEVICE_TYPE.REAL) || downloadTaskG.getCost_type() == 1) {
                    this.f66289i.setVisibility(8);
                    this.f66288h.setVisibility(8);
                } else {
                    if (!downloadTaskG.getRomType().equals(Dtype.androidobb.name()) && !downloadTaskG.getRomType().equals(Dtype.androiddata.name()) && !downloadTaskG.getRomType().equals(Dtype.androidobbdata.name())) {
                        z10 = false;
                    }
                    if (Build.VERSION.SDK_INT < 30 || !z10) {
                        this.f66289i.setVisibility(0);
                        this.f66288h.setVisibility(0);
                    } else {
                        this.f66289i.setVisibility(8);
                        this.f66288h.setVisibility(8);
                    }
                }
                this.f66288h.setOnClickListener(this);
            }
        }
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_operate, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66282b = this.parentView.findViewById(R.id.detail);
        this.f66283c = this.parentView.findViewById(R.id.delete);
        this.f66284d = this.parentView.findViewById(R.id.deleteArchieve);
        this.f66285e = this.parentView.findViewById(R.id.cancel);
        this.f66287g = this.parentView.findViewById(R.id.addShortcut);
        this.f66286f = this.parentView.findViewById(R.id.line);
        this.f66288h = this.parentView.findViewById(R.id.tv_stand_mode);
        this.f66289i = this.parentView.findViewById(R.id.v_line_1);
        this.f66290j = this.parentView.findViewById(R.id.lineDetail);
        this.f66291k = this.parentView.findViewById(R.id.lineDeleteGame);
        this.f66292l = this.parentView.findViewById(R.id.lineDeleteArchieve);
        this.f66282b.setOnClickListener(this);
        this.f66283c.setOnClickListener(this);
        this.f66284d.setOnClickListener(this);
        this.f66285e.setOnClickListener(this);
        this.f66287g.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.detail) {
            a aVar = this.f66294n;
            if (aVar != null) {
                aVar.onGameDetail(this.f66293m);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.delete) {
            a aVar2 = this.f66294n;
            if (aVar2 != null) {
                aVar2.onDeleteGame(this.f66293m);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.deleteArchieve) {
            a aVar3 = this.f66294n;
            if (aVar3 != null) {
                aVar3.onDeleteArchieve(this.f66293m);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.cancel) {
            dismiss();
            return;
        }
        if (id2 == R.id.addShortcut) {
            a aVar4 = this.f66294n;
            if (aVar4 != null) {
                aVar4.onAddShortCut(this.f66293m);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.tv_stand_mode) {
            dismiss();
            a aVar5 = this.f66294n;
            if (aVar5 != null) {
                aVar5.onStandMode(this.f66293m);
            }
        }
    }
}
