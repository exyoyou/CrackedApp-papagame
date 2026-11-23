package com.czhj.sdk.common.mta;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import io.netty.util.internal.StringUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: loaded from: classes9.dex */
public class BuriedPointManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25477a = 500000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile BuriedPointManager f25478f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f25482e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile SQLiteDatabase f25484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f25485i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile RepeatingHandlerRunnable f25486j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReadWriteLock f25479b = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<Integer, String> f25480c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f25481d = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<Integer> f25483g = new HashSet();

    private BuriedPointManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            this.f25484h.execSQL("delete from point where item is null");
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private String c() {
        StringBuilder sb2 = new StringBuilder();
        List<String> list = this.f25481d;
        if (list != null && !list.isEmpty()) {
            this.f25485i = this.f25481d.size();
            Iterator<String> it2 = this.f25481d.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
                if (it2.hasNext()) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f25479b.writeLock().lock();
        HashMap<Integer, String> map = this.f25480c;
        if (map != null && !map.isEmpty()) {
            a(this.f25480c.keySet());
            this.f25482e = false;
            this.f25480c = null;
        }
        this.f25479b.writeLock().unlock();
    }

    public static String deflateAndBase64(String str) throws IOException {
        if (str == null || str.isEmpty()) {
            return str;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        deflaterOutputStream.write(str.getBytes(Charset.forName("UTF-8")));
        deflaterOutputStream.flush();
        deflaterOutputStream.close();
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    private void e() {
        List<String> list = this.f25481d;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f25481d.size();
        int i10 = this.f25485i;
        if (size > i10) {
            List<String> list2 = this.f25481d;
            this.f25481d = list2.subList(i10, list2.size() - 1);
        } else {
            this.f25481d.clear();
        }
        this.f25485i = 0;
    }

    public static BuriedPointManager getInstance() {
        if (f25478f == null) {
            synchronized (BuriedPointManager.class) {
                if (f25478f == null) {
                    f25478f = new BuriedPointManager();
                }
            }
        }
        return f25478f;
    }

    public void addWaitSend(String str) {
        if (this.f25481d == null) {
            this.f25481d = new LinkedList();
        }
        this.f25481d.add(str);
    }

    public void clearLogDB() {
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.2
            @Override // java.lang.Runnable
            public void run() {
                BuriedPointManager.this.b();
                BuriedPointManager.this.a();
            }
        });
    }

    public Set<Integer> getLogBlackList() {
        return this.f25483g;
    }

    public String sendPoint() {
        HashMap<Integer, String> map;
        String uRLEncoded = null;
        try {
            this.f25479b.readLock().lock();
            if (!this.f25482e && ((map = this.f25480c) == null || map.isEmpty())) {
                StringBuilder sb2 = new StringBuilder();
                HashMap<Integer, String> mapA = a(Config.sharedInstance().getMax_send_log_records());
                this.f25480c = mapA;
                if (!mapA.isEmpty()) {
                    sb2.append("[");
                    Iterator<String> it2 = this.f25480c.values().iterator();
                    while (it2.hasNext()) {
                        sb2.append(it2.next());
                        if (it2.hasNext()) {
                            sb2.append(",");
                        }
                    }
                    sb2.append("]");
                    String string = sb2.toString();
                    String str = "_batch_value=" + string;
                    try {
                        SigmobLog.d("_batch_value: " + string);
                        SigmobLog.d("BPLog_Count: " + this.f25480c.size());
                        uRLEncoded = PointEntitySuper.toURLEncoded(deflateAndBase64(str));
                        a(uRLEncoded, true);
                    } catch (IOException e10) {
                        SigmobLog.e(e10.getMessage());
                    }
                    return uRLEncoded;
                }
            }
            this.f25479b.readLock().unlock();
            return null;
        } catch (Throwable th) {
            try {
                SigmobLog.e("sendPoint fail ", th);
            } finally {
                this.f25479b.readLock().unlock();
            }
        }
    }

    public synchronized void start() {
        if (this.f25484h == null || this.f25486j == null) {
            this.f25484h = SQLiteMTAHelper.getInstance().getWritableDatabase();
            clearLogDB();
            HandlerThread handlerThread = new HandlerThread("sendLog");
            handlerThread.start();
            this.f25486j = new RepeatingHandlerRunnable(new Handler(handlerThread.getLooper())) { // from class: com.czhj.sdk.common.mta.BuriedPointManager.1
                @Override // com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable
                protected void doWork() {
                    try {
                        BuriedPointManager.this.sendPoint();
                        BuriedPointManager.this.f25486j.startRepeating(((long) Config.sharedInstance().getSend_log_interval()) * 1000);
                    } catch (Throwable th) {
                        SigmobLog.e("retryFaildTracking error " + th.getMessage());
                    }
                }
            };
            this.f25486j.startRepeating(((long) Config.sharedInstance().getSend_log_interval()) * 1000);
        }
    }

    private synchronized HashMap<Integer, String> a(int i10) {
        HashMap<Integer, String> map;
        map = new HashMap<>();
        try {
            Cursor cursorRawQuery = this.f25484h.rawQuery("select * from point where item not null order by point_id", null);
            if (cursorRawQuery != null) {
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        int columnIndex = cursorRawQuery.getColumnIndex("item");
                        int columnIndex2 = cursorRawQuery.getColumnIndex("point_id");
                        int columnIndex3 = cursorRawQuery.getColumnIndex("encryption");
                        for (int i11 = 0; i11 < i10; i11++) {
                            String string = cursorRawQuery.getString(columnIndex);
                            Integer numValueOf = Integer.valueOf(cursorRawQuery.getInt(columnIndex2));
                            int i12 = cursorRawQuery.getInt(columnIndex3);
                            if (!TextUtils.isEmpty(string)) {
                                if (i12 != 1) {
                                    map.put(numValueOf, string);
                                } else if (!TextUtils.isEmpty(AESUtil.DecryptString(string, Constants.AESKEY))) {
                                    string = AESUtil.DecryptString(string, Constants.AESKEY);
                                    map.put(numValueOf, string);
                                }
                            }
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                            }
                        }
                    }
                } catch (Throwable th) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Throwable th3) {
            SigmobLog.e("getlogs fail", th3);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            long jQueryNumEntries = DatabaseUtils.queryNumEntries(this.f25484h, SQLiteMTAHelper.TABLE_POINT);
            if (jQueryNumEntries <= 500000) {
                return;
            }
            a(jQueryNumEntries - 500000);
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private void a(long j10) {
        try {
            this.f25484h.execSQL("delete from point where point_id in (  select point_id from point order by point_id  limit " + j10 + " )");
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }

    private void a(String str, final boolean z10) {
        this.f25482e = true;
        BuriedPointRequest.BuriedPointSend(str, new BuriedPointRequest.RequestListener() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.3
            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onErrorResponse(VolleyError volleyError) {
                BuriedPointManager.this.f25482e = false;
                BuriedPointManager.this.f25480c = null;
                SigmobLog.e(volleyError.getMessage());
            }

            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onSuccess() {
                if (z10) {
                    ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.BuriedPointManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BuriedPointManager.this.d();
                        }
                    });
                }
            }
        });
    }

    private void a(Set<Integer> set) {
        try {
            Iterator<Integer> it2 = set.iterator();
            if (!it2.hasNext()) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("delete from ");
            sb2.append(SQLiteMTAHelper.TABLE_POINT);
            sb2.append(" where point_id in ( ");
            while (true) {
                sb2.append(it2.next());
                if (!it2.hasNext()) {
                    sb2.append(" )");
                    this.f25484h.execSQL(sb2.toString());
                    return;
                } else {
                    sb2.append(StringUtil.COMMA);
                    sb2.append(' ');
                }
            }
        } catch (Throwable th) {
            SigmobLog.e("clearLogDB fail", th);
        }
    }
}
