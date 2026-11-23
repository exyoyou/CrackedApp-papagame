package com.sigmob.sdk.downloader.core.breakpoint;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class m implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f80427a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f80428b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f80429c = -2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f80430d = -3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f80431e = "RemitSyncExecutor";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f80432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<Integer> f80433g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f80434h;

    interface a {
        void a(List<Integer> idList) throws IOException;

        void h(int id2) throws IOException;

        void i(int id2);
    }

    m(a agent) {
        this.f80434h = agent;
        this.f80433g = new HashSet();
        HandlerThread handlerThread = new HandlerThread("FileDownload RemitHandoverToDB");
        handlerThread.start();
        this.f80432f = new Handler(handlerThread.getLooper(), this);
    }

    void a() {
        this.f80432f.getLooper().quit();
    }

    public void b(int id2) {
        this.f80432f.sendEmptyMessage(id2);
    }

    public void c(int id2) {
        Message messageObtainMessage = this.f80432f.obtainMessage(-3);
        messageObtainMessage.arg1 = id2;
        this.f80432f.sendMessage(messageObtainMessage);
    }

    public void d(int id2) {
        Message messageObtainMessage = this.f80432f.obtainMessage(-2);
        messageObtainMessage.arg1 = id2;
        this.f80432f.sendMessage(messageObtainMessage);
    }

    void e(int id2) {
        this.f80432f.removeMessages(id2);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        int i10;
        StringBuilder sb2;
        String str;
        String str2;
        int i11 = msg.what;
        if (i11 != -3) {
            if (i11 == -2) {
                i10 = msg.arg1;
                this.f80433g.remove(Integer.valueOf(i10));
                sb2 = new StringBuilder();
                str = "remove free bunch id ";
            } else {
                if (i11 != -1) {
                    if (i11 != 0) {
                        try {
                            this.f80434h.h(i11);
                            this.f80433g.add(Integer.valueOf(i11));
                            com.sigmob.sdk.downloader.core.c.b(f80431e, "sync info with id: " + i11);
                            return true;
                        } catch (IOException unused) {
                            str2 = "sync cache to db failed for id: " + i11;
                        }
                    } else {
                        List<Integer> list = (List) msg.obj;
                        try {
                            this.f80434h.a(list);
                            this.f80433g.addAll(list);
                            com.sigmob.sdk.downloader.core.c.b(f80431e, "sync bunch info with ids: " + list);
                            return true;
                        } catch (IOException unused2) {
                            str2 = "sync info to db failed for ids: " + list;
                        }
                    }
                    com.sigmob.sdk.downloader.core.c.a(f80431e, str2);
                    return true;
                }
                List list2 = (List) msg.obj;
                this.f80433g.removeAll(list2);
                sb2 = new StringBuilder();
                sb2.append("remove free bunch ids ");
                sb2.append(list2);
            }
            com.sigmob.sdk.downloader.core.c.b(f80431e, sb2.toString());
            return true;
        }
        i10 = msg.arg1;
        this.f80433g.remove(Integer.valueOf(i10));
        this.f80434h.i(i10);
        sb2 = new StringBuilder();
        str = "remove info ";
        sb2.append(str);
        sb2.append(i10);
        com.sigmob.sdk.downloader.core.c.b(f80431e, sb2.toString());
        return true;
    }

    m(a agent, Handler handler, Set<Integer> freeToDBIdList) {
        this.f80434h = agent;
        this.f80432f = handler;
        this.f80433g = freeToDBIdList;
    }

    public void a(int id2, long delayMillis) {
        this.f80432f.sendEmptyMessageDelayed(id2, delayMillis);
    }

    public void b(List<Integer> idList) {
        Message messageObtainMessage = this.f80432f.obtainMessage(-1);
        messageObtainMessage.obj = idList;
        this.f80432f.sendMessage(messageObtainMessage);
    }

    public void a(List<Integer> idList) {
        Message messageObtainMessage = this.f80432f.obtainMessage(0);
        messageObtainMessage.obj = idList;
        this.f80432f.sendMessage(messageObtainMessage);
    }

    void a(int[] ids) {
        for (int i10 : ids) {
            this.f80432f.removeMessages(i10);
        }
    }

    boolean a(int id2) {
        return this.f80433g.contains(Integer.valueOf(id2));
    }
}
