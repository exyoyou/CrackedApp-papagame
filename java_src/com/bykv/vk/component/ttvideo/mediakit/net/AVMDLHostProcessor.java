package com.bykv.vk.component.ttvideo.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.nr.m;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class AVMDLHostProcessor {
    private static final int BACKUP_DNS = 1;
    private static final int MAIN_DNS = 0;
    public static final int STATE_IS_IDLE = 0;
    public static final int STATE_IS_PARSE_END_ERROR = 2;
    public static final int STATE_IS_PARSE_END_SUC = 3;
    public static final int STATE_IS_WAIT_RESULT = 1;
    private static final String TAG = "AVMDLHostProcessor";
    private int mBackUpDelayedTime;
    private int mBackUpType;
    private int mEnableParallel;
    private Handler mHandler;
    public String mHost;
    public HashMap<AVMDLDNSParserListener, Integer> mListeners;
    private int mMainType;
    private int[] mStates = new int[2];
    private BaseDNS[] mParsers = new BaseDNS[2];

    public AVMDLHostProcessor(String str, Handler handler, int i10, int i11, int i12, int i13) {
        this.mMainType = i10;
        this.mBackUpType = i11;
        this.mHandler = handler;
        this.mHost = str;
        this.mBackUpDelayedTime = i12;
        this.mEnableParallel = i13;
        for (int i14 = 0; i14 < 2; i14++) {
            this.mParsers[i14] = null;
        }
        for (int i15 = 0; i15 < 2; i15++) {
            this.mStates[i15] = 0;
        }
        this.mListeners = new HashMap<>();
    }

    @SuppressLint({"CI_DefaultLocale"})
    private BaseDNS createDNSParser(String str, int i10, int i11) {
        CreateConstructor createConstructor;
        try {
            createConstructor = AVMDLDNSManager.getInstance().getCreateConstructor(i10);
        } catch (Exception e10) {
            m.c(e10);
            createConstructor = null;
        }
        if (createConstructor != null) {
            return createConstructor.createDns(str, null, i10, this.mHandler);
        }
        if (i10 != 4 || AVMDLDNSParser.mCustomHttpDNSParser == null) {
            String.format("create local dns parser for host:%s type:%d", str, Integer.valueOf(i10));
            return new LocalDNS(str, this.mHandler);
        }
        String.format("create custom httpdns parser for host:%s type:%d", str, Integer.valueOf(i10));
        return new CustomHTTPDNS(str, this.mHandler);
    }

    private void doParseInternal(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        String.format("----do parse internal what:%d info:%s", Integer.valueOf(i10), aVMDLDNSInfo);
        if (aVMDLDNSInfo == null) {
            return;
        }
        if (i10 == 5 && this.mParsers[0] == null) {
            String.format("create main dns type:%d host:%s", Integer.valueOf(this.mMainType), aVMDLDNSInfo.mHost);
            this.mStates[0] = 1;
            this.mParsers[0] = createDNSParser(aVMDLDNSInfo.mHost, this.mMainType, 0);
            this.mParsers[0].start();
            Message message = new Message();
            message.what = 6;
            message.obj = aVMDLDNSInfo;
            if (this.mBackUpDelayedTime > 0 || this.mEnableParallel > 0) {
                String.format("BackUpDelayedTime:%d enableparallel:%d send backup delay first", Integer.valueOf(this.mMainType), Integer.valueOf(this.mEnableParallel));
                this.mHandler.sendMessageDelayed(message, this.mBackUpDelayedTime * 1000);
            }
        } else if (i10 == 6 && this.mParsers[1] == null) {
            String.format("create backup dns type:%d host:%s", Integer.valueOf(this.mBackUpType), aVMDLDNSInfo.mHost);
            this.mStates[1] = 1;
            this.mParsers[1] = createDNSParser(aVMDLDNSInfo.mHost, this.mBackUpType, 1);
            this.mParsers[1].start();
        }
        String.format("****do parse internal end", new Object[0]);
    }

    public boolean isEnd() {
        int i10;
        for (int i11 = 0; i11 < 2; i11++) {
            if (this.mParsers[i11] != null && (i10 = this.mStates[i11]) != 3 && i10 != 2) {
                return false;
            }
        }
        return true;
    }

    public boolean isValidSourceId(String str) {
        if (TextUtils.isEmpty(str)) {
            String.format("id: %s is empty", str);
            return false;
        }
        for (int i10 = 0; i10 < 2; i10++) {
            BaseDNS baseDNS = this.mParsers[i10];
            if (baseDNS != null && str.equals(baseDNS.mId)) {
                String.format("id: %s is valid index: %d", str, Integer.valueOf(i10));
                return true;
            }
        }
        String.format("id: %s is valid", str);
        return false;
    }

    public void processMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        int[] iArr;
        int i11;
        String.format("----processor pro msg what:%d host:%s info:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost, aVMDLDNSInfo);
        if (i10 != 5) {
            if (i10 == 6 && (((i11 = (iArr = this.mStates)[0]) == 1 || i11 == 2 || i11 == 3 || this.mEnableParallel > 0) && iArr[1] == 0)) {
                String.format("main dns is not end or enable parrallel and backup dns is idle call backup dns", new Object[0]);
                doParseInternal(i10, aVMDLDNSInfo);
            }
        } else if (this.mStates[0] == 0) {
            String.format("main dns is idle call main dns", new Object[0]);
            doParseInternal(i10, aVMDLDNSInfo);
        }
        String.format("****end processor pro msg what:%d host:%s info:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost, aVMDLDNSInfo);
    }

    public void processResult(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        String.format("----process result what:%d id:%s host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost);
        String str = (i10 == 2 || i10 == 3) ? aVMDLDNSInfo.mId : null;
        if (TextUtils.isEmpty(str)) {
            String.format("****process result err id is empty", new Object[0]);
            return;
        }
        int i11 = 0;
        while (i11 < 2) {
            BaseDNS baseDNS = this.mParsers[i11];
            if (baseDNS != null && str.equals(baseDNS.mId)) {
                this.mParsers[i11].close();
                this.mParsers[i11] = null;
                if (i10 == 3) {
                    this.mStates[i11] = 3;
                } else if (i10 == 2) {
                    this.mStates[i11] = 2;
                }
                String.format("****process result parser index:%d is end, be close", Integer.valueOf(i11));
                break;
            }
            i11++;
        }
        if (i11 == 0 && i10 == 2) {
            String.format("mian dns parse error, try back up dns", new Object[0]);
            processMsg(6, new AVMDLDNSInfo(this.mBackUpType, aVMDLDNSInfo.mHost, (String) null, 0L, (String) null));
        }
        String.format("****end process result what:%d id:%s host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost);
    }
}
