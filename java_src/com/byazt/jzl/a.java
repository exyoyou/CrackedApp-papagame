package com.byazt.jzl;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.fk.u;
import com.haima.hmcp.beans.FileUploadBean;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1574, 34})
public class a implements u, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f16045a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f16046c;
    public int gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f16049m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.fk.n f16050n;
    public boolean nu;
    public boolean rh;
    public int rl;
    public String sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f16051t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f16052u;
    public com.byazt.fk.n uj;
    public List<String> yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f16054z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f16053x = FileUploadBean.FILE_SEGMENT_SIZE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16048i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f16047da = 0;
    public long my = -1;
    public final HashMap<String, Object> ve = new HashMap<>();
    public int qy = 10000;
    public int gu = 10000;
    public int gr = 10000;
    public int zm = 0;
    public JSONObject yv = new JSONObject();

    public a(String str, com.byazt.fk.n nVar, com.byazt.fk.n nVar2, int i10, int i11) {
        this.gt = 0;
        this.rl = 0;
        this.f16045a = str;
        this.uj = nVar;
        this.f16050n = nVar2;
        this.gt = i10;
        this.rl = i11;
    }

    @Override // com.byazt.fk.u
    public String getCacheParentDir() {
        return this.f16045a;
    }

    @Override // com.byazt.fk.u
    public String getCid() {
        return this.sl;
    }

    @Override // com.byazt.fk.u
    public String getCodeId() {
        return this.f16046c;
    }

    @Override // com.byazt.fk.u
    public int getConnectTimeOutMills() {
        return this.qy;
    }

    @Override // com.byazt.fk.u
    public long getCurrent() {
        return this.f16049m;
    }

    @Override // com.byazt.fk.u
    public com.byazt.fk.n getCurrentVideoInfo() {
        if (isH265()) {
            return this.f16050n;
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar;
        }
        return null;
    }

    @Override // com.byazt.fk.u
    public synchronized Object getExtra(String str) {
        return this.ve.get(str);
    }

    @Override // com.byazt.fk.u
    public String getFileNameKey() {
        if (isH265()) {
            return this.f16050n.getFileHash();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.getFileHash();
        }
        return null;
    }

    @Override // com.byazt.fk.u
    public int getHeight() {
        return this.f16052u;
    }

    @Override // com.byazt.fk.u
    public String getLogExtra() {
        return this.f16054z;
    }

    @Override // com.byazt.fk.u
    public JSONObject getPassThroughJson() {
        return this.yv;
    }

    @Override // com.byazt.fk.u
    public int getPitayaCacheSize() {
        return this.yv.optInt("pitaya_cache_size", 0);
    }

    @Override // com.byazt.fk.u
    public int getPitayaCode() {
        return this.yv.optInt("pitaya_code", 0);
    }

    @Override // com.byazt.fk.u
    public String getPitayaErrorMsg() {
        return this.yv.optString("pitaya_msg");
    }

    @Override // com.byazt.fk.u
    public float getPlaySpeedRatio() {
        if (isH265()) {
            return this.f16050n.getPlay_speed_ratio();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.getPlay_speed_ratio();
        }
        return -1.0f;
    }

    @Override // com.byazt.fk.u
    public List<String> getPlayTrackUrls() {
        return this.yp;
    }

    @Override // com.byazt.fk.u
    public int getPlayerType() {
        return this.gt;
    }

    @Override // com.byazt.fk.u
    public int getPreloadSize() {
        if (isH265()) {
            return this.f16050n.getVideoPreloadSize();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.getVideoPreloadSize();
        }
        return 0;
    }

    @Override // com.byazt.fk.u
    public int getReadTimeOutMills() {
        return this.gu;
    }

    @Override // com.byazt.fk.u
    public int getScene() {
        return this.tt;
    }

    @Override // com.byazt.fk.u
    public int getSourceType() {
        return this.zm;
    }

    @Override // com.byazt.fk.u
    public String getUrl() {
        if (isH265()) {
            return this.f16050n.getVideo_url();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.getVideo_url();
        }
        return null;
    }

    @Override // com.byazt.fk.u
    public int getVideoEncodeType() {
        return this.rl;
    }

    @Override // com.byazt.fk.u
    public com.byazt.fk.n getVideoH264() {
        return this.uj;
    }

    @Override // com.byazt.fk.u
    public com.byazt.fk.n getVideoH265() {
        return this.f16050n;
    }

    @Override // com.byazt.fk.u
    public long getVideoSize() {
        if (isH265()) {
            return this.f16050n.getSize();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.getSize();
        }
        return 0L;
    }

    @Override // com.byazt.fk.u
    public int getVideoSkipResult() {
        return this.sp;
    }

    @Override // com.byazt.fk.u
    public int getWidth() {
        return this.f16051t;
    }

    @Override // com.byazt.fk.u
    public int getWriteTimeOutMills() {
        return this.gr;
    }

    @Override // com.byazt.fk.u
    public boolean isAudio() {
        return this.rh;
    }

    @Override // com.byazt.fk.u
    public boolean isH265() {
        com.byazt.fk.n nVar;
        if (this.rl == 1 && (nVar = this.f16050n) != null && !TextUtils.isEmpty(nVar.getVideo_url())) {
            if (com.byazt.oy.tt.n() == 2) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return true;
                }
            } else if (this.gt == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.fk.u
    public boolean isPreloadAll() {
        if (isH265()) {
            return this.f16050n.isCacheAllVideo();
        }
        com.byazt.fk.n nVar = this.uj;
        if (nVar != null) {
            return nVar.isCacheAllVideo();
        }
        return true;
    }

    @Override // com.byazt.fk.u
    public boolean isQuiet() {
        return this.nu;
    }

    @Override // com.byazt.fk.u
    public synchronized void putExtra(String str, Object obj) {
        this.ve.put(str, obj);
    }

    @Override // com.byazt.fk.u
    public Object removeExtra(String str) {
        return this.ve.remove(str);
    }

    @Override // com.byazt.fk.u
    public void setAudio(boolean z10) {
        this.rh = z10;
    }

    @Override // com.byazt.fk.u
    public void setCacheParentDir(String str) {
        this.f16045a = str;
    }

    @Override // com.byazt.fk.u
    public void setCid(String str) {
        this.sl = str;
    }

    @Override // com.byazt.fk.u
    public void setCodeId(String str) {
        this.f16046c = str;
    }

    @Override // com.byazt.fk.u
    public void setConnectTimeOutMills(int i10) {
        this.qy = i10;
    }

    @Override // com.byazt.fk.u
    public void setCurrent(long j10) {
        this.f16049m = j10;
    }

    @Override // com.byazt.fk.u
    public void setHeight(int i10) {
        this.f16052u = i10;
    }

    @Override // com.byazt.fk.u
    public void setLogExtra(String str) {
        this.f16054z = str;
    }

    @Override // com.byazt.fk.u
    public void setPlayTrackUrls(List<String> list) {
        this.yp = list;
    }

    @Override // com.byazt.fk.u
    public void setPlayerType(int i10) {
        this.gt = i10;
    }

    @Override // com.byazt.fk.u
    public void setQuiet(boolean z10) {
        this.nu = z10;
    }

    @Override // com.byazt.fk.u
    public void setReadTimeOutMills(int i10) {
        this.gu = i10;
    }

    @Override // com.byazt.fk.u
    public void setScene(int i10) {
        this.tt = i10;
    }

    @Override // com.byazt.fk.u
    public void setSourceType(int i10) {
        this.zm = i10;
    }

    @Override // com.byazt.fk.u
    public void setVideoEncodeType(int i10) {
        this.rl = i10;
    }

    @Override // com.byazt.fk.u
    public void setVideoH264(com.byazt.fk.n nVar) {
        this.uj = nVar;
    }

    @Override // com.byazt.fk.u
    public void setVideoH265(com.byazt.fk.n nVar) {
        this.f16050n = nVar;
    }

    @Override // com.byazt.fk.u
    public void setVideoSkipResult(int i10) {
        this.sp = i10;
    }

    @Override // com.byazt.fk.u
    public void setWidth(int i10) {
        this.f16051t = i10;
    }

    @Override // com.byazt.fk.u
    public void setWriteTimeOutMills(int i10) {
        this.gr = i10;
    }
}
