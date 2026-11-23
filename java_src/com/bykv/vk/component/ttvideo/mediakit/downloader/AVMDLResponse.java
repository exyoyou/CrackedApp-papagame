package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.byazt.gqp.m;
import com.byazt.gqp.tt;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import java.io.IOException;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
public class AVMDLResponse {
    private static final String TAG = "AVMDLResponse";
    public tt call;
    public long readOff;
    public AVMDLRequest request;
    public m response;
    public long contentlength = -1;
    public int statusCode = -1;
    public boolean isReadErr = false;

    public AVMDLResponse(AVMDLRequest aVMDLRequest, m mVar, tt ttVar) {
        this.request = aVMDLRequest;
        this.response = mVar;
        this.call = ttVar;
        this.readOff = aVMDLRequest.reqOff;
        parseResponse();
    }

    private void parseResponse() {
        int iLastIndexOf;
        m mVar = this.response;
        if (mVar == null) {
            return;
        }
        int iVe = mVar.ve();
        this.statusCode = iVe;
        if (iVe == 200) {
            this.contentlength = toInt(this.response.c("Content-Length"));
            return;
        }
        if (iVe == 206) {
            String strC = this.response.c("Content-Range");
            if (TextUtils.isEmpty(strC) || (iLastIndexOf = strC.lastIndexOf(e.F0)) < 0 || iLastIndexOf >= strC.length() - 1) {
                return;
            }
            this.contentlength = toInt(strC.substring(iLastIndexOf + 1), -1);
        }
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public void cancel() {
        tt ttVar = this.call;
        if (ttVar != null) {
            ttVar.ve();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public boolean isFinish() {
        AVMDLRequest aVMDLRequest = this.request;
        long j10 = aVMDLRequest.size;
        long j11 = j10 >= 0 ? aVMDLRequest.reqOff + j10 : this.contentlength;
        long j12 = this.contentlength;
        if (j11 > j12) {
            j11 = j12;
        }
        String.format("check readoff:%d reqoff:%d reqsize:%d contentlen:%d endoff:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size), Long.valueOf(this.contentlength), Long.valueOf(j11));
        return this.readOff >= j11;
    }

    public boolean isOpenSuccessful() {
        int i10 = this.statusCode;
        return i10 >= 200 && i10 < 300;
    }

    public boolean isReadSuccessful() {
        return !this.isReadErr;
    }

    @SuppressLint({"CI_DefaultLocale"})
    public int readData(byte[] bArr) {
        if (this.response.a() == null) {
            return 0;
        }
        try {
            int i10 = this.response.a().ve().read(bArr);
            if (i10 <= 0) {
                return -1;
            }
            String.format("before read off:%d reqoff:%d req size:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            long j10 = i10;
            this.readOff += j10;
            AVMDLRequest aVMDLRequest = this.request;
            aVMDLRequest.reqOff += j10;
            long j11 = aVMDLRequest.size;
            if (j11 > 0) {
                aVMDLRequest.size = j11 - j10;
            }
            String.format("after read,ret:%d off:%d reqoff:%d req size:%d", Integer.valueOf(i10), Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            return i10;
        } catch (IOException e10) {
            this.isReadErr = true;
            AVMDLLog.e(TAG, "read data exception:" + e10.getLocalizedMessage());
            return -1;
        }
    }

    public void reset() {
        this.response = null;
        this.call = null;
        this.contentlength = -1L;
        this.statusCode = -1;
        this.isReadErr = false;
    }

    public static int toInt(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }
}
