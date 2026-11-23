package com.github.snowdream.android.app.downloader;

import android.os.Process;
import android.text.TextUtils;
import com.MApplication;
import com.byazt.tk.AdBaseConstants;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.r;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.dto.GameMD5ResultInfo;
import com.join.mgps.dto.GameMd5Data;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.p;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.s;
import com.papa.sim.statistic.t;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes9.dex */
public class a extends Thread {
    private static final int A = 1;
    private static final int B = 2;
    private static String C = z.f50168g;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f29276z = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f29278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f29279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DownloadTask f29280e;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    File f29292q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    File f29293r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f29294s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f29295t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f29296u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    long f29297v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f29277b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f29281f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f29282g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f29283h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    InputStream f29284i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    RandomAccessFile f29285j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    InputStream f29286k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    RandomAccessFile f29287l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    HttpURLConnection f29288m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    HttpURLConnection f29289n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    HttpURLConnection f29290o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    HttpURLConnection f29291p = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    String f29298w = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f29299x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f29300y = false;

    public a(String _url, String _id, DownloadTask downloadTask) {
        this.f29278c = _url;
        this.f29279d = _id;
        this.f29280e = downloadTask;
    }

    private void a(String reason) {
        this.f29280e.setSpeed("0");
        if (this.f29277b == -1) {
            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
            return;
        }
        if (this.f29282g) {
            q(this.f29280e, System.currentTimeMillis() - this.f29277b, 2);
        } else {
            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
        }
        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
        t.l(MApplication.f3182z).R1(Event.commonReport, new Ext().setTypeCode("downloadStartError").setReMarks(reason));
    }

    private void b(DownloadTask task, long duration, int interrupt) {
        task.setDuration(task.getDuration() + duration);
        task.setInterrupt(interrupt);
        if (task.getStatus() == 5) {
            task.setProgress(100L);
        }
        try {
            q5.f.M().update(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            InputStream inputStream = this.f29286k;
            if (inputStream != null) {
                inputStream.close();
                this.f29286k = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f29287l;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
                this.f29287l = null;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection = this.f29290o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.f29290o = null;
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    private void d() {
        try {
            InputStream inputStream = this.f29284i;
            if (inputStream != null) {
                inputStream.close();
                this.f29284i = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f29285j;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
                this.f29285j = null;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection = this.f29291p;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.f29291p = null;
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    private long h(HttpURLConnection conn) {
        int i10 = 0;
        while (true) {
            String headerFieldKey = conn.getHeaderFieldKey(i10);
            if (headerFieldKey == null) {
                return 0L;
            }
            if (headerFieldKey.equals("Content-Length")) {
                return Long.parseLong(conn.getHeaderField(i10));
            }
            i10++;
        }
    }

    private String l(GameMd5Data data) {
        try {
            RequestModel<GameMd5Data> requestModel = new RequestModel<>();
            requestModel.setDefault(MApplication.f3182z);
            requestModel.setArgs(data);
            ResponseModel<GameMD5ResultInfo> responseModelBody = i.P0().N0().r1(requestModel).execute().body();
            return (responseModelBody == null || responseModelBody.getData() == null || responseModelBody.getData().getInfo() == null) ? "skip" : responseModelBody.getData().getInfo().getState();
        } catch (IOException e10) {
            e10.printStackTrace();
            return "skip";
        }
    }

    private boolean m(DownloadTask task) {
        if (task.getStatus() != 7) {
            return task.getStatus() == 40;
        }
        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 34));
        return true;
    }

    private boolean n(DownloadTask task) {
        if (task.getStatus() == 27) {
            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 35));
            return true;
        }
        if (task.getMobleNetNeedStop() != 1) {
            return false;
        }
        a("[014]:gid=" + task.getCrc_link_type_val());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:235:0x0601 A[Catch: Exception -> 0x0605, all -> 0x0632, TRY_LEAVE, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:245:0x0610 A[Catch: Exception -> 0x062c, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:248:0x061a A[Catch: Exception -> 0x062c, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:251:0x0624 A[Catch: Exception -> 0x062c, TRY_LEAVE, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:264:0x0667 A[Catch: Exception -> 0x062c, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:267:0x0671 A[Catch: Exception -> 0x062c, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:270:0x067b A[Catch: Exception -> 0x062c, TRY_LEAVE, TryCatch #0 {Exception -> 0x062c, blocks: (B:243:0x060c, B:245:0x0610, B:246:0x0616, B:248:0x061a, B:249:0x0620, B:251:0x0624, B:262:0x0663, B:264:0x0667, B:265:0x066d, B:267:0x0671, B:268:0x0677, B:270:0x067b), top: B:292:0x060c }] */
    /* JADX WARN: Code duplicated, block: B:272:0x0681 A[PHI: r16
      0x0681: PHI (r16v5 int) = (r16v3 int), (r16v9 int), (r16v9 int) binds: [B:269:0x0679, B:254:0x062d, B:250:0x0622] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x00fe A[Catch: Exception -> 0x0607, all -> 0x0632, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x010a A[Catch: Exception -> 0x00fa, all -> 0x0632, TRY_ENTER, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0112 A[Catch: Exception -> 0x00fa, all -> 0x0632, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x011e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0182 A[Catch: Exception -> 0x00fa, all -> 0x0632, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x018e  */
    /* JADX WARN: Code duplicated, block: B:57:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:59:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:71:0x0217 A[PHI: r8
      0x0217: PHI (r8v28 java.lang.String) = (r8v27 java.lang.String), (r8v32 java.lang.String) binds: [B:73:0x0265, B:70:0x0205] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x021b A[Catch: Exception -> 0x00fa, all -> 0x0632, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0267 A[Catch: Exception -> 0x00fa, all -> 0x0632, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0273  */
    /* JADX WARN: Code duplicated, block: B:79:0x027f A[Catch: Exception -> 0x00fa, all -> 0x0632, TryCatch #5 {all -> 0x0632, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x004d, B:13:0x0056, B:19:0x009d, B:23:0x00a6, B:26:0x00df, B:28:0x00e7, B:31:0x00f1, B:98:0x02ca, B:101:0x02d3, B:104:0x02dc, B:213:0x053c, B:215:0x0540, B:219:0x0547, B:221:0x054b, B:223:0x05d9, B:225:0x05e2, B:231:0x05f0, B:233:0x05f8, B:235:0x0601, B:230:0x05ed, B:261:0x063a, B:106:0x02e3, B:108:0x02ef, B:110:0x02f7, B:112:0x0304, B:114:0x033e, B:116:0x0348, B:118:0x0356, B:121:0x0368, B:123:0x0377, B:126:0x0384, B:128:0x038e, B:130:0x0394, B:132:0x039a, B:134:0x03a0, B:138:0x03b2, B:143:0x03bd, B:142:0x03ba, B:157:0x03fb, B:205:0x052b, B:209:0x0533, B:165:0x0415, B:167:0x0431, B:169:0x0437, B:170:0x044b, B:172:0x0497, B:175:0x04a4, B:177:0x04ae, B:179:0x04b4, B:181:0x04ba, B:183:0x04c0, B:186:0x04d2, B:188:0x04ec, B:190:0x04f2, B:204:0x0520, B:119:0x0361, B:111:0x0300, B:212:0x053a, B:35:0x00fe, B:37:0x010a, B:39:0x0112, B:41:0x0121, B:43:0x0182, B:46:0x018f, B:48:0x0199, B:50:0x019f, B:52:0x01a5, B:54:0x01ab, B:58:0x01c1, B:90:0x02b7, B:94:0x02bf, B:66:0x01e2, B:68:0x01fe, B:70:0x0205, B:72:0x021b, B:74:0x0267, B:77:0x0275, B:79:0x027f, B:81:0x0285, B:83:0x028b, B:85:0x0291, B:89:0x02a7, B:97:0x02c8, B:18:0x0064), top: B:298:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:96:0x02c3  */
    private void o() {
        int i10;
        Exception exc;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        int i11;
        HttpURLConnection httpURLConnection3;
        HttpURLConnection httpURLConnection4;
        String resource_path;
        String str;
        String str2;
        int responseCode;
        String str3;
        int responseCode2;
        String headerField;
        String lowerCase;
        String headerField2;
        String lowerCase2;
        int i12 = 3;
        while (i12 > 0 && !this.f29281f) {
            try {
                try {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f29280e.getShowName());
                    sb2.append("readFileSize: ");
                    sb2.append(i12);
                    try {
                        if (this.f29280e != null) {
                            System.out.println("downStatus:" + this.f29280e.getStatus());
                            String resource_url_remote = this.f29280e.getResource_url_remote();
                            if (this.f29280e.isMod()) {
                                resource_path = C + "mod/" + this.f29280e.getPackageName() + net.lingala.zip4j.util.e.F0 + (i1.d(resource_url_remote) + ".mod");
                            } else {
                                try {
                                    if (APKUtils.P(this.f29280e)) {
                                        resource_path = C + "mod/" + this.f29280e.getPackageName() + net.lingala.zip4j.util.e.F0 + (i1.d(resource_url_remote) + ".mod");
                                    } else {
                                        resource_path = this.f29280e.getResource_path();
                                    }
                                } catch (Exception e10) {
                                    exc = e10;
                                    i10 = i12;
                                    a("[004]:gid=" + this.f29280e.getCrc_link_type_val() + "err:" + exc.getMessage());
                                    exc.printStackTrace();
                                    httpURLConnection = this.f29289n;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                        this.f29289n = null;
                                    }
                                    httpURLConnection2 = this.f29288m;
                                    if (httpURLConnection2 != null) {
                                        httpURLConnection2.disconnect();
                                        this.f29288m = null;
                                    }
                                    if (this.f29281f) {
                                        i11 = i10;
                                    } else {
                                        Thread.sleep(1200L);
                                        i11 = i10 - 1;
                                    }
                                    i12 = i11;
                                }
                            }
                            if (TextUtils.isEmpty(resource_path)) {
                                resource_path = "";
                            }
                            this.f29293r = new File(resource_path);
                            this.f29292q = new File(this.f29280e.getPath());
                            this.f29277b = System.currentTimeMillis();
                            String str4 = ",err:";
                            i10 = i12;
                            if (this.f29280e.getTask_down_type() != 0) {
                                try {
                                    if (this.f29280e.getTask_down_type() != 1 && this.f29280e.getTask_down_type() != 3) {
                                        this.f29299x = true;
                                        str = "";
                                        str4 = ",err:";
                                    } else if (TextUtils.isEmpty(this.f29280e.getResource_url_remote())) {
                                        str = "";
                                        str4 = ",err:";
                                        this.f29299x = true;
                                    } else {
                                        if (this.f29293r.exists()) {
                                            this.f29295t = this.f29293r.length();
                                        }
                                        this.f29280e.setRes_currentSize(this.f29295t);
                                        URL url = new URL(resource_url_remote);
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("openConnection first... ");
                                        sb3.append(url);
                                        this.f29289n = (HttpURLConnection) url.openConnection();
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                        this.f29289n.setConnectTimeout(1000);
                                        this.f29289n.setReadTimeout(1000);
                                        this.f29289n.setRequestProperty("Connection", "Keep-Alive");
                                        this.f29289n.setRequestMethod("GET");
                                        responseCode = this.f29289n.getResponseCode();
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("openConnection ... status=");
                                        sb4.append(responseCode);
                                        this.f29289n.getHeaderFields();
                                        if (responseCode == 200) {
                                            headerField2 = this.f29289n.getHeaderField("Content-Type");
                                            if (t2.h(headerField2)) {
                                                headerField2 = "";
                                            }
                                            lowerCase2 = headerField2.toLowerCase();
                                            if (!lowerCase2.equals("application/octet-stream") || lowerCase2.equals(AdBaseConstants.MIME_APK) || lowerCase2.equals("application/zip") || lowerCase2.equals("audio/x-mod")) {
                                                str = r10;
                                            } else {
                                                str = r10;
                                                if (this.f29280e.getActual_size() == this.f29289n.getContentLength()) {
                                                }
                                            }
                                            long jH = h(this.f29289n);
                                            this.f29297v = jH;
                                            this.f29280e.setRes_actual_size(jH);
                                            this.f29299x = true;
                                        } else {
                                            str = r10;
                                            if (responseCode != 302 || responseCode == 301 || responseCode == 303) {
                                                str3 = str4;
                                                this.f29289n = (HttpURLConnection) new URL(this.f29289n.getHeaderField("Location")).openConnection();
                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                                this.f29289n.setConnectTimeout(1000);
                                                this.f29289n.setReadTimeout(1000);
                                                this.f29289n.setRequestProperty("Connection", "Keep-Alive");
                                                this.f29289n.setRequestMethod("GET");
                                                responseCode2 = this.f29289n.getResponseCode();
                                                this.f29289n.getHeaderFields();
                                                if (responseCode2 == 200) {
                                                    headerField = this.f29289n.getHeaderField("Content-Type");
                                                    if (t2.h(headerField)) {
                                                        headerField = str;
                                                    }
                                                    lowerCase = headerField.toLowerCase();
                                                    if (!lowerCase.equals("application/octet-stream") || lowerCase.equals(AdBaseConstants.MIME_APK) || lowerCase.equals("application/zip") || lowerCase.equals("audio/x-mod")) {
                                                        str4 = str3;
                                                    } else {
                                                        str4 = str3;
                                                        if (this.f29280e.getActual_size() == this.f29289n.getContentLength()) {
                                                        }
                                                    }
                                                    long jH2 = h(this.f29289n);
                                                    this.f29297v = jH2;
                                                    this.f29280e.setRes_actual_size(jH2);
                                                    this.f29299x = true;
                                                }
                                            } else {
                                                StringBuilder sb5 = new StringBuilder();
                                                sb5.append("[016]:gid=");
                                                sb5.append(this.f29280e.getCrc_link_type_val());
                                                str3 = str4;
                                                sb5.append(str3);
                                                HttpURLConnection httpURLConnection5 = this.f29289n;
                                                sb5.append(httpURLConnection5 != null ? httpURLConnection5.getResponseMessage() : str);
                                                sb5.append(",status:");
                                                sb5.append(responseCode);
                                                a(sb5.toString());
                                            }
                                            str4 = str3;
                                        }
                                        try {
                                            this.f29289n.disconnect();
                                        } catch (Exception e11) {
                                            e11.printStackTrace();
                                        }
                                    }
                                } catch (Exception e12) {
                                    exc = e12;
                                    a("[004]:gid=" + this.f29280e.getCrc_link_type_val() + "err:" + exc.getMessage());
                                    exc.printStackTrace();
                                    httpURLConnection = this.f29289n;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                        this.f29289n = null;
                                    }
                                    httpURLConnection2 = this.f29288m;
                                    if (httpURLConnection2 != null) {
                                        httpURLConnection2.disconnect();
                                        this.f29288m = null;
                                    }
                                    if (this.f29281f) {
                                        Thread.sleep(1200L);
                                    } else {
                                        i11 = i10;
                                    }
                                    i12 = i11;
                                }
                            } else if (TextUtils.isEmpty(this.f29280e.getResource_url_remote())) {
                                if (this.f29293r.exists()) {
                                    this.f29295t = this.f29293r.length();
                                }
                                this.f29280e.setRes_currentSize(this.f29295t);
                                URL url2 = new URL(resource_url_remote);
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("openConnection first... ");
                                sb6.append(url2);
                                this.f29289n = (HttpURLConnection) url2.openConnection();
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                this.f29289n.setConnectTimeout(1000);
                                this.f29289n.setReadTimeout(1000);
                                this.f29289n.setRequestProperty("Connection", "Keep-Alive");
                                this.f29289n.setRequestMethod("GET");
                                responseCode = this.f29289n.getResponseCode();
                                StringBuilder sb7 = new StringBuilder();
                                sb7.append("openConnection ... status=");
                                sb7.append(responseCode);
                                this.f29289n.getHeaderFields();
                                if (responseCode == 200) {
                                    headerField2 = this.f29289n.getHeaderField("Content-Type");
                                    if (t2.h(headerField2)) {
                                        headerField2 = "";
                                    }
                                    lowerCase2 = headerField2.toLowerCase();
                                    if (lowerCase2.equals("application/octet-stream")) {
                                        str = r10;
                                        long jH3 = h(this.f29289n);
                                        this.f29297v = jH3;
                                        this.f29280e.setRes_actual_size(jH3);
                                        this.f29299x = true;
                                    } else {
                                        str = r10;
                                        long jH4 = h(this.f29289n);
                                        this.f29297v = jH4;
                                        this.f29280e.setRes_actual_size(jH4);
                                        this.f29299x = true;
                                    }
                                } else {
                                    str = r10;
                                    if (responseCode != 302) {
                                        str3 = str4;
                                        this.f29289n = (HttpURLConnection) new URL(this.f29289n.getHeaderField("Location")).openConnection();
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                        this.f29289n.setConnectTimeout(1000);
                                        this.f29289n.setReadTimeout(1000);
                                        this.f29289n.setRequestProperty("Connection", "Keep-Alive");
                                        this.f29289n.setRequestMethod("GET");
                                        responseCode2 = this.f29289n.getResponseCode();
                                        this.f29289n.getHeaderFields();
                                        if (responseCode2 == 200) {
                                            headerField = this.f29289n.getHeaderField("Content-Type");
                                            if (t2.h(headerField)) {
                                                headerField = str;
                                            }
                                            lowerCase = headerField.toLowerCase();
                                            if (lowerCase.equals("application/octet-stream")) {
                                                str4 = str3;
                                                long jH5 = h(this.f29289n);
                                                this.f29297v = jH5;
                                                this.f29280e.setRes_actual_size(jH5);
                                                this.f29299x = true;
                                            } else {
                                                str4 = str3;
                                                long jH6 = h(this.f29289n);
                                                this.f29297v = jH6;
                                                this.f29280e.setRes_actual_size(jH6);
                                                this.f29299x = true;
                                            }
                                        } else {
                                            str4 = str3;
                                        }
                                    } else {
                                        str3 = str4;
                                        this.f29289n = (HttpURLConnection) new URL(this.f29289n.getHeaderField("Location")).openConnection();
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                        this.f29289n.setConnectTimeout(1000);
                                        this.f29289n.setReadTimeout(1000);
                                        this.f29289n.setRequestProperty("Connection", "Keep-Alive");
                                        this.f29289n.setRequestMethod("GET");
                                        responseCode2 = this.f29289n.getResponseCode();
                                        this.f29289n.getHeaderFields();
                                        if (responseCode2 == 200) {
                                            headerField = this.f29289n.getHeaderField("Content-Type");
                                            if (t2.h(headerField)) {
                                                headerField = str;
                                            }
                                            lowerCase = headerField.toLowerCase();
                                            if (lowerCase.equals("application/octet-stream")) {
                                                str4 = str3;
                                                long jH7 = h(this.f29289n);
                                                this.f29297v = jH7;
                                                this.f29280e.setRes_actual_size(jH7);
                                                this.f29299x = true;
                                            } else {
                                                str4 = str3;
                                                long jH8 = h(this.f29289n);
                                                this.f29297v = jH8;
                                                this.f29280e.setRes_actual_size(jH8);
                                                this.f29299x = true;
                                            }
                                        } else {
                                            str4 = str3;
                                        }
                                    }
                                }
                                this.f29289n.disconnect();
                            } else {
                                str = "";
                                str4 = ",err:";
                                this.f29299x = true;
                            }
                            try {
                                if (this.f29280e.getTask_down_type() != 0 && this.f29280e.getTask_down_type() != 2) {
                                    this.f29300y = true;
                                    str2 = str;
                                } else if (TextUtils.isEmpty(this.f29280e.getUrl())) {
                                    str2 = str;
                                    this.f29300y = true;
                                } else {
                                    if (this.f29292q.exists()) {
                                        this.f29294s = this.f29292q.length();
                                    } else {
                                        this.f29294s = 0L;
                                    }
                                    URL url3 = new URL(this.f29280e.getUrl());
                                    StringBuilder sb8 = new StringBuilder();
                                    sb8.append("openConnection first... ");
                                    sb8.append(url3);
                                    HttpURLConnection httpURLConnection6 = (HttpURLConnection) url3.openConnection();
                                    this.f29288m = httpURLConnection6;
                                    httpURLConnection6.setConnectTimeout(1000);
                                    this.f29288m.setReadTimeout(1000);
                                    this.f29288m.setRequestProperty("Connection", "Keep-Alive");
                                    this.f29288m.setRequestMethod("GET");
                                    String str5 = z.f50181t;
                                    if (!t2.i(str5)) {
                                        str2 = str;
                                        break;
                                    }
                                    String[] strArrSplit = str5.split(",");
                                    int length = strArrSplit.length;
                                    int i13 = 0;
                                    while (true) {
                                        if (i13 >= length) {
                                            str2 = str;
                                            break;
                                        }
                                        String headerField3 = this.f29288m.getHeaderField(strArrSplit[i13]);
                                        if (t2.i(headerField3)) {
                                            str2 = str;
                                            this.f29298w = headerField3.replace(x.a.f97579g, str2);
                                            break;
                                        }
                                        i13++;
                                    }
                                    int responseCode3 = this.f29288m.getResponseCode();
                                    this.f29288m.getHeaderFields();
                                    if (responseCode3 == 200) {
                                        String headerField4 = this.f29288m.getHeaderField("Content-Type");
                                        if (t2.h(headerField4)) {
                                            headerField4 = str2;
                                        }
                                        String lowerCase3 = headerField4.toLowerCase();
                                        if (!lowerCase3.equals("application/octet-stream") && !lowerCase3.equals(AdBaseConstants.MIME_APK) && !lowerCase3.equals("application/zip") && !lowerCase3.equals("audio/x-mod") && this.f29280e.getActual_size() != this.f29288m.getContentLength()) {
                                            try {
                                                this.f29288m.disconnect();
                                            } catch (Exception e13) {
                                                e13.printStackTrace();
                                            }
                                            a("[002]:gid=" + this.f29280e.getCrc_link_type_val());
                                            try {
                                                HttpURLConnection httpURLConnection7 = this.f29289n;
                                                if (httpURLConnection7 != null) {
                                                    httpURLConnection7.disconnect();
                                                    this.f29289n = null;
                                                }
                                                HttpURLConnection httpURLConnection8 = this.f29288m;
                                                if (httpURLConnection8 != null) {
                                                    httpURLConnection8.disconnect();
                                                    this.f29288m = null;
                                                }
                                                if (this.f29281f) {
                                                    return;
                                                }
                                                Thread.sleep(1200L);
                                                return;
                                            } catch (Exception e14) {
                                                e14.printStackTrace();
                                                return;
                                            }
                                        }
                                        this.f29296u = h(this.f29288m);
                                        this.f29300y = true;
                                    } else if (responseCode3 == 302 || responseCode3 == 301 || responseCode3 == 303) {
                                        String str6 = str4;
                                        this.f29288m = (HttpURLConnection) new URL(this.f29288m.getHeaderField("Location")).openConnection();
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 21));
                                        this.f29288m.setConnectTimeout(1000);
                                        this.f29288m.setReadTimeout(1000);
                                        this.f29288m.setRequestProperty("Connection", "Keep-Alive");
                                        this.f29288m.setRequestMethod("GET");
                                        int responseCode4 = this.f29288m.getResponseCode();
                                        this.f29288m.getHeaderFields();
                                        if (responseCode4 == 200) {
                                            String headerField5 = this.f29288m.getHeaderField("Content-Type");
                                            if (t2.h(headerField5)) {
                                                headerField5 = str2;
                                            }
                                            String lowerCase4 = headerField5.toLowerCase();
                                            if (!lowerCase4.equals("application/octet-stream") && !lowerCase4.equals(AdBaseConstants.MIME_APK) && !lowerCase4.equals("application/zip") && !lowerCase4.equals("audio/x-mod") && this.f29280e.getActual_size() != this.f29288m.getContentLength()) {
                                                StringBuilder sb9 = new StringBuilder();
                                                sb9.append("[003]:gid=");
                                                sb9.append(this.f29280e.getCrc_link_type_val());
                                                sb9.append(str6);
                                                HttpURLConnection httpURLConnection9 = this.f29288m;
                                                sb9.append(httpURLConnection9 != null ? httpURLConnection9.getResponseMessage() : str2);
                                                a(sb9.toString());
                                                try {
                                                    HttpURLConnection httpURLConnection10 = this.f29289n;
                                                    if (httpURLConnection10 != null) {
                                                        httpURLConnection10.disconnect();
                                                        this.f29289n = null;
                                                    }
                                                    HttpURLConnection httpURLConnection11 = this.f29288m;
                                                    if (httpURLConnection11 != null) {
                                                        httpURLConnection11.disconnect();
                                                        this.f29288m = null;
                                                    }
                                                    if (this.f29281f) {
                                                        return;
                                                    }
                                                    Thread.sleep(1200L);
                                                    return;
                                                } catch (Exception e15) {
                                                    e15.printStackTrace();
                                                    return;
                                                }
                                            }
                                            this.f29296u = h(this.f29288m);
                                            this.f29300y = true;
                                        }
                                    } else {
                                        StringBuilder sb10 = new StringBuilder();
                                        sb10.append("[015]:gid=");
                                        sb10.append(this.f29280e.getCrc_link_type_val());
                                        sb10.append(str4);
                                        HttpURLConnection httpURLConnection12 = this.f29288m;
                                        sb10.append(httpURLConnection12 != null ? httpURLConnection12.getResponseMessage() : str2);
                                        sb10.append(",status:");
                                        sb10.append(responseCode3);
                                        a(sb10.toString());
                                    }
                                    try {
                                        this.f29288m.disconnect();
                                    } catch (Exception e16) {
                                        e16.printStackTrace();
                                    }
                                }
                                boolean z10 = this.f29299x && this.f29300y;
                                this.f29281f = z10;
                                if (z10) {
                                    StringBuilder sb11 = new StringBuilder();
                                    sb11.append("readFileSize22222: ");
                                    sb11.append(this.f29296u);
                                    sb11.append("----readResSize:");
                                    sb11.append(this.f29297v);
                                    this.f29280e.setSize(this.f29296u + this.f29297v);
                                    this.f29280e.setShowSize(((((this.f29296u + this.f29297v) * 1.0f) / 1024.0f) / 1024.0f) + str2);
                                    StringBuilder sb12 = new StringBuilder();
                                    sb12.append("setShowSize:");
                                    sb12.append(this.f29280e.getShowSize());
                                    sb12.append("curResSize:");
                                    sb12.append(this.f29295t);
                                    sb12.append("curFileSize:");
                                    sb12.append(this.f29294s);
                                    sb12.append("currentTotal:");
                                    sb12.append(this.f29295t + this.f29294s);
                                    sb12.append("totalFile:");
                                    sb12.append(this.f29297v + this.f29296u);
                                    try {
                                        if (this.f29280e.getTask_down_type() != 0 && this.f29280e.getTask_down_type() != 1) {
                                            if (this.f29280e.getTask_down_type() == 3) {
                                            }
                                            if (this.f29280e.getTask_down_type() != 0 || this.f29280e.getTask_down_type() == 2) {
                                                e();
                                            }
                                        }
                                        if (this.f29280e.getTask_down_type() != 0) {
                                            e();
                                        } else {
                                            e();
                                        }
                                    } catch (Exception e17) {
                                        e = e17;
                                        exc = e;
                                        a("[004]:gid=" + this.f29280e.getCrc_link_type_val() + "err:" + exc.getMessage());
                                        exc.printStackTrace();
                                        httpURLConnection = this.f29289n;
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                            this.f29289n = null;
                                        }
                                        httpURLConnection2 = this.f29288m;
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                            this.f29288m = null;
                                        }
                                        if (this.f29281f) {
                                            Thread.sleep(1200L);
                                        } else {
                                            i11 = i10;
                                        }
                                        i12 = i11;
                                    }
                                    g();
                                }
                                httpURLConnection3 = this.f29289n;
                                if (httpURLConnection3 != null) {
                                    httpURLConnection3.disconnect();
                                    this.f29289n = null;
                                }
                                httpURLConnection4 = this.f29288m;
                                if (httpURLConnection4 != null) {
                                    httpURLConnection4.disconnect();
                                    this.f29288m = null;
                                }
                                if (this.f29281f) {
                                    i11 = i10;
                                } else {
                                    Thread.sleep(1200L);
                                    i11 = i10 - 1;
                                }
                            } catch (Exception e18) {
                                e = e18;
                                exc = e;
                                a("[004]:gid=" + this.f29280e.getCrc_link_type_val() + "err:" + exc.getMessage());
                                exc.printStackTrace();
                                httpURLConnection = this.f29289n;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    this.f29289n = null;
                                }
                                httpURLConnection2 = this.f29288m;
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                    this.f29288m = null;
                                }
                                if (this.f29281f) {
                                    Thread.sleep(1200L);
                                    i11 = i10 - 1;
                                } else {
                                    i11 = i10;
                                }
                                i12 = i11;
                            }
                            i12 = i11;
                        } else {
                            i10 = i12;
                        }
                        httpURLConnection3 = this.f29289n;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                            this.f29289n = null;
                        }
                        httpURLConnection4 = this.f29288m;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                            this.f29288m = null;
                        }
                        if (this.f29281f) {
                            Thread.sleep(1200L);
                            i11 = i10 - 1;
                        } else {
                            i11 = i10;
                        }
                    } catch (Exception e19) {
                        e19.printStackTrace();
                    }
                } catch (Exception e20) {
                    e = e20;
                    i10 = i12;
                }
                i12 = i11;
            } catch (Throwable th) {
                try {
                    HttpURLConnection httpURLConnection13 = this.f29289n;
                    if (httpURLConnection13 != null) {
                        httpURLConnection13.disconnect();
                        this.f29289n = null;
                    }
                    HttpURLConnection httpURLConnection14 = this.f29288m;
                    if (httpURLConnection14 != null) {
                        httpURLConnection14.disconnect();
                        this.f29288m = null;
                    }
                    if (this.f29281f) {
                        throw th;
                    }
                    Thread.sleep(1200L);
                    throw th;
                } catch (Exception e21) {
                    e21.printStackTrace();
                    throw th;
                }
            }
        }
        int i14 = i12;
        if (this.f29281f || i14 > 0) {
            return;
        }
        a("[005]:gid=" + this.f29280e.getCrc_link_type_val());
    }

    private void p(DownloadTask task, long duration) {
        task.setDuration(task.getDuration() + duration);
        if (task.getStatus() == 5) {
            task.setProgress(100L);
        }
        try {
            q5.f.M().update(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q(DownloadTask task, long duration, int interrupt) {
        task.setDuration(task.getDuration() + duration);
        task.setInterrupt(interrupt);
        if (task.getStatus() == 5) {
            task.setProgress(100L);
        }
        try {
            q5.f.M().update(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:309:0x08bc A[Catch: Exception -> 0x0a47, all -> 0x0a6e, TryCatch #8 {all -> 0x0a6e, blocks: (B:9:0x0028, B:11:0x0049, B:14:0x0053, B:17:0x005d, B:19:0x0065, B:20:0x006a, B:24:0x0086, B:27:0x0091, B:29:0x0097, B:31:0x00bc, B:34:0x00cd, B:36:0x00e0, B:39:0x00ea, B:42:0x0128, B:44:0x0134, B:51:0x0168, B:121:0x02cb, B:124:0x0304, B:127:0x0326, B:129:0x0332, B:131:0x033a, B:133:0x0342, B:135:0x034a, B:139:0x0357, B:144:0x036f, B:146:0x038b, B:147:0x038f, B:143:0x036c, B:150:0x039d, B:152:0x03a7, B:154:0x03af, B:155:0x03ba, B:157:0x03c0, B:159:0x03ca, B:163:0x03df, B:165:0x03eb, B:167:0x0402, B:169:0x0408, B:172:0x0420, B:174:0x0428, B:176:0x0430, B:177:0x043c, B:178:0x0441, B:180:0x0448, B:182:0x044e, B:184:0x0460, B:187:0x0469, B:189:0x049f, B:191:0x04b0, B:193:0x04b6, B:196:0x04cd, B:198:0x04d5, B:199:0x04da, B:201:0x04e2, B:203:0x04f7, B:205:0x051f, B:209:0x0532, B:211:0x053e, B:213:0x0544, B:218:0x055e, B:219:0x056a, B:231:0x05b5, B:233:0x0602, B:237:0x060e, B:240:0x061b, B:242:0x0623, B:243:0x0626, B:245:0x063d, B:248:0x0647, B:250:0x066c, B:252:0x068c, B:256:0x06a1, B:258:0x06bf, B:257:0x06b5, B:259:0x06d8, B:262:0x06e1, B:264:0x06e9, B:267:0x0714, B:269:0x0719, B:271:0x0722, B:273:0x0734, B:275:0x0763, B:277:0x076b, B:307:0x08b4, B:309:0x08bc, B:311:0x08c2, B:313:0x08f4, B:315:0x0913, B:317:0x0934, B:319:0x0940, B:327:0x09a7, B:316:0x0924, B:320:0x094e, B:322:0x096d, B:324:0x098e, B:326:0x099a, B:323:0x097e, B:328:0x09ac, B:330:0x09b5, B:331:0x09ba, B:333:0x09c2, B:339:0x0a14, B:335:0x09ce, B:337:0x09d2, B:283:0x078a, B:288:0x07a6, B:293:0x07d3, B:367:0x0a7a, B:281:0x0785, B:287:0x07a3, B:295:0x081e, B:300:0x083a, B:305:0x0867, B:299:0x0837, B:344:0x0a4e, B:223:0x057d, B:225:0x058c, B:227:0x0594, B:229:0x059c, B:230:0x05a5, B:188:0x0489, B:171:0x0410, B:162:0x03db, B:166:0x03f2, B:58:0x0190, B:59:0x01a0, B:64:0x01ab, B:67:0x01cd, B:68:0x01d4, B:71:0x01e2, B:73:0x01fc, B:81:0x0218, B:84:0x0231, B:87:0x023b, B:89:0x0245, B:93:0x0250, B:95:0x025e, B:63:0x01a8, B:105:0x0278, B:107:0x028a, B:110:0x0294, B:112:0x029d, B:114:0x02a7, B:115:0x02ac), top: B:389:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:328:0x09ac A[Catch: Exception -> 0x0a47, all -> 0x0a6e, TryCatch #8 {all -> 0x0a6e, blocks: (B:9:0x0028, B:11:0x0049, B:14:0x0053, B:17:0x005d, B:19:0x0065, B:20:0x006a, B:24:0x0086, B:27:0x0091, B:29:0x0097, B:31:0x00bc, B:34:0x00cd, B:36:0x00e0, B:39:0x00ea, B:42:0x0128, B:44:0x0134, B:51:0x0168, B:121:0x02cb, B:124:0x0304, B:127:0x0326, B:129:0x0332, B:131:0x033a, B:133:0x0342, B:135:0x034a, B:139:0x0357, B:144:0x036f, B:146:0x038b, B:147:0x038f, B:143:0x036c, B:150:0x039d, B:152:0x03a7, B:154:0x03af, B:155:0x03ba, B:157:0x03c0, B:159:0x03ca, B:163:0x03df, B:165:0x03eb, B:167:0x0402, B:169:0x0408, B:172:0x0420, B:174:0x0428, B:176:0x0430, B:177:0x043c, B:178:0x0441, B:180:0x0448, B:182:0x044e, B:184:0x0460, B:187:0x0469, B:189:0x049f, B:191:0x04b0, B:193:0x04b6, B:196:0x04cd, B:198:0x04d5, B:199:0x04da, B:201:0x04e2, B:203:0x04f7, B:205:0x051f, B:209:0x0532, B:211:0x053e, B:213:0x0544, B:218:0x055e, B:219:0x056a, B:231:0x05b5, B:233:0x0602, B:237:0x060e, B:240:0x061b, B:242:0x0623, B:243:0x0626, B:245:0x063d, B:248:0x0647, B:250:0x066c, B:252:0x068c, B:256:0x06a1, B:258:0x06bf, B:257:0x06b5, B:259:0x06d8, B:262:0x06e1, B:264:0x06e9, B:267:0x0714, B:269:0x0719, B:271:0x0722, B:273:0x0734, B:275:0x0763, B:277:0x076b, B:307:0x08b4, B:309:0x08bc, B:311:0x08c2, B:313:0x08f4, B:315:0x0913, B:317:0x0934, B:319:0x0940, B:327:0x09a7, B:316:0x0924, B:320:0x094e, B:322:0x096d, B:324:0x098e, B:326:0x099a, B:323:0x097e, B:328:0x09ac, B:330:0x09b5, B:331:0x09ba, B:333:0x09c2, B:339:0x0a14, B:335:0x09ce, B:337:0x09d2, B:283:0x078a, B:288:0x07a6, B:293:0x07d3, B:367:0x0a7a, B:281:0x0785, B:287:0x07a3, B:295:0x081e, B:300:0x083a, B:305:0x0867, B:299:0x0837, B:344:0x0a4e, B:223:0x057d, B:225:0x058c, B:227:0x0594, B:229:0x059c, B:230:0x05a5, B:188:0x0489, B:171:0x0410, B:162:0x03db, B:166:0x03f2, B:58:0x0190, B:59:0x01a0, B:64:0x01ab, B:67:0x01cd, B:68:0x01d4, B:71:0x01e2, B:73:0x01fc, B:81:0x0218, B:84:0x0231, B:87:0x023b, B:89:0x0245, B:93:0x0250, B:95:0x025e, B:63:0x01a8, B:105:0x0278, B:107:0x028a, B:110:0x0294, B:112:0x029d, B:114:0x02a7, B:115:0x02ac), top: B:389:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:331:0x09ba A[Catch: Exception -> 0x0a47, all -> 0x0a6e, TryCatch #8 {all -> 0x0a6e, blocks: (B:9:0x0028, B:11:0x0049, B:14:0x0053, B:17:0x005d, B:19:0x0065, B:20:0x006a, B:24:0x0086, B:27:0x0091, B:29:0x0097, B:31:0x00bc, B:34:0x00cd, B:36:0x00e0, B:39:0x00ea, B:42:0x0128, B:44:0x0134, B:51:0x0168, B:121:0x02cb, B:124:0x0304, B:127:0x0326, B:129:0x0332, B:131:0x033a, B:133:0x0342, B:135:0x034a, B:139:0x0357, B:144:0x036f, B:146:0x038b, B:147:0x038f, B:143:0x036c, B:150:0x039d, B:152:0x03a7, B:154:0x03af, B:155:0x03ba, B:157:0x03c0, B:159:0x03ca, B:163:0x03df, B:165:0x03eb, B:167:0x0402, B:169:0x0408, B:172:0x0420, B:174:0x0428, B:176:0x0430, B:177:0x043c, B:178:0x0441, B:180:0x0448, B:182:0x044e, B:184:0x0460, B:187:0x0469, B:189:0x049f, B:191:0x04b0, B:193:0x04b6, B:196:0x04cd, B:198:0x04d5, B:199:0x04da, B:201:0x04e2, B:203:0x04f7, B:205:0x051f, B:209:0x0532, B:211:0x053e, B:213:0x0544, B:218:0x055e, B:219:0x056a, B:231:0x05b5, B:233:0x0602, B:237:0x060e, B:240:0x061b, B:242:0x0623, B:243:0x0626, B:245:0x063d, B:248:0x0647, B:250:0x066c, B:252:0x068c, B:256:0x06a1, B:258:0x06bf, B:257:0x06b5, B:259:0x06d8, B:262:0x06e1, B:264:0x06e9, B:267:0x0714, B:269:0x0719, B:271:0x0722, B:273:0x0734, B:275:0x0763, B:277:0x076b, B:307:0x08b4, B:309:0x08bc, B:311:0x08c2, B:313:0x08f4, B:315:0x0913, B:317:0x0934, B:319:0x0940, B:327:0x09a7, B:316:0x0924, B:320:0x094e, B:322:0x096d, B:324:0x098e, B:326:0x099a, B:323:0x097e, B:328:0x09ac, B:330:0x09b5, B:331:0x09ba, B:333:0x09c2, B:339:0x0a14, B:335:0x09ce, B:337:0x09d2, B:283:0x078a, B:288:0x07a6, B:293:0x07d3, B:367:0x0a7a, B:281:0x0785, B:287:0x07a3, B:295:0x081e, B:300:0x083a, B:305:0x0867, B:299:0x0837, B:344:0x0a4e, B:223:0x057d, B:225:0x058c, B:227:0x0594, B:229:0x059c, B:230:0x05a5, B:188:0x0489, B:171:0x0410, B:162:0x03db, B:166:0x03f2, B:58:0x0190, B:59:0x01a0, B:64:0x01ab, B:67:0x01cd, B:68:0x01d4, B:71:0x01e2, B:73:0x01fc, B:81:0x0218, B:84:0x0231, B:87:0x023b, B:89:0x0245, B:93:0x0250, B:95:0x025e, B:63:0x01a8, B:105:0x0278, B:107:0x028a, B:110:0x0294, B:112:0x029d, B:114:0x02a7, B:115:0x02ac), top: B:389:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:333:0x09c2 A[Catch: Exception -> 0x0a47, all -> 0x0a6e, TryCatch #8 {all -> 0x0a6e, blocks: (B:9:0x0028, B:11:0x0049, B:14:0x0053, B:17:0x005d, B:19:0x0065, B:20:0x006a, B:24:0x0086, B:27:0x0091, B:29:0x0097, B:31:0x00bc, B:34:0x00cd, B:36:0x00e0, B:39:0x00ea, B:42:0x0128, B:44:0x0134, B:51:0x0168, B:121:0x02cb, B:124:0x0304, B:127:0x0326, B:129:0x0332, B:131:0x033a, B:133:0x0342, B:135:0x034a, B:139:0x0357, B:144:0x036f, B:146:0x038b, B:147:0x038f, B:143:0x036c, B:150:0x039d, B:152:0x03a7, B:154:0x03af, B:155:0x03ba, B:157:0x03c0, B:159:0x03ca, B:163:0x03df, B:165:0x03eb, B:167:0x0402, B:169:0x0408, B:172:0x0420, B:174:0x0428, B:176:0x0430, B:177:0x043c, B:178:0x0441, B:180:0x0448, B:182:0x044e, B:184:0x0460, B:187:0x0469, B:189:0x049f, B:191:0x04b0, B:193:0x04b6, B:196:0x04cd, B:198:0x04d5, B:199:0x04da, B:201:0x04e2, B:203:0x04f7, B:205:0x051f, B:209:0x0532, B:211:0x053e, B:213:0x0544, B:218:0x055e, B:219:0x056a, B:231:0x05b5, B:233:0x0602, B:237:0x060e, B:240:0x061b, B:242:0x0623, B:243:0x0626, B:245:0x063d, B:248:0x0647, B:250:0x066c, B:252:0x068c, B:256:0x06a1, B:258:0x06bf, B:257:0x06b5, B:259:0x06d8, B:262:0x06e1, B:264:0x06e9, B:267:0x0714, B:269:0x0719, B:271:0x0722, B:273:0x0734, B:275:0x0763, B:277:0x076b, B:307:0x08b4, B:309:0x08bc, B:311:0x08c2, B:313:0x08f4, B:315:0x0913, B:317:0x0934, B:319:0x0940, B:327:0x09a7, B:316:0x0924, B:320:0x094e, B:322:0x096d, B:324:0x098e, B:326:0x099a, B:323:0x097e, B:328:0x09ac, B:330:0x09b5, B:331:0x09ba, B:333:0x09c2, B:339:0x0a14, B:335:0x09ce, B:337:0x09d2, B:283:0x078a, B:288:0x07a6, B:293:0x07d3, B:367:0x0a7a, B:281:0x0785, B:287:0x07a3, B:295:0x081e, B:300:0x083a, B:305:0x0867, B:299:0x0837, B:344:0x0a4e, B:223:0x057d, B:225:0x058c, B:227:0x0594, B:229:0x059c, B:230:0x05a5, B:188:0x0489, B:171:0x0410, B:162:0x03db, B:166:0x03f2, B:58:0x0190, B:59:0x01a0, B:64:0x01ab, B:67:0x01cd, B:68:0x01d4, B:71:0x01e2, B:73:0x01fc, B:81:0x0218, B:84:0x0231, B:87:0x023b, B:89:0x0245, B:93:0x0250, B:95:0x025e, B:63:0x01a8, B:105:0x0278, B:107:0x028a, B:110:0x0294, B:112:0x029d, B:114:0x02a7, B:115:0x02ac), top: B:389:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:335:0x09ce A[Catch: Exception -> 0x0a47, all -> 0x0a6e, TryCatch #8 {all -> 0x0a6e, blocks: (B:9:0x0028, B:11:0x0049, B:14:0x0053, B:17:0x005d, B:19:0x0065, B:20:0x006a, B:24:0x0086, B:27:0x0091, B:29:0x0097, B:31:0x00bc, B:34:0x00cd, B:36:0x00e0, B:39:0x00ea, B:42:0x0128, B:44:0x0134, B:51:0x0168, B:121:0x02cb, B:124:0x0304, B:127:0x0326, B:129:0x0332, B:131:0x033a, B:133:0x0342, B:135:0x034a, B:139:0x0357, B:144:0x036f, B:146:0x038b, B:147:0x038f, B:143:0x036c, B:150:0x039d, B:152:0x03a7, B:154:0x03af, B:155:0x03ba, B:157:0x03c0, B:159:0x03ca, B:163:0x03df, B:165:0x03eb, B:167:0x0402, B:169:0x0408, B:172:0x0420, B:174:0x0428, B:176:0x0430, B:177:0x043c, B:178:0x0441, B:180:0x0448, B:182:0x044e, B:184:0x0460, B:187:0x0469, B:189:0x049f, B:191:0x04b0, B:193:0x04b6, B:196:0x04cd, B:198:0x04d5, B:199:0x04da, B:201:0x04e2, B:203:0x04f7, B:205:0x051f, B:209:0x0532, B:211:0x053e, B:213:0x0544, B:218:0x055e, B:219:0x056a, B:231:0x05b5, B:233:0x0602, B:237:0x060e, B:240:0x061b, B:242:0x0623, B:243:0x0626, B:245:0x063d, B:248:0x0647, B:250:0x066c, B:252:0x068c, B:256:0x06a1, B:258:0x06bf, B:257:0x06b5, B:259:0x06d8, B:262:0x06e1, B:264:0x06e9, B:267:0x0714, B:269:0x0719, B:271:0x0722, B:273:0x0734, B:275:0x0763, B:277:0x076b, B:307:0x08b4, B:309:0x08bc, B:311:0x08c2, B:313:0x08f4, B:315:0x0913, B:317:0x0934, B:319:0x0940, B:327:0x09a7, B:316:0x0924, B:320:0x094e, B:322:0x096d, B:324:0x098e, B:326:0x099a, B:323:0x097e, B:328:0x09ac, B:330:0x09b5, B:331:0x09ba, B:333:0x09c2, B:339:0x0a14, B:335:0x09ce, B:337:0x09d2, B:283:0x078a, B:288:0x07a6, B:293:0x07d3, B:367:0x0a7a, B:281:0x0785, B:287:0x07a3, B:295:0x081e, B:300:0x083a, B:305:0x0867, B:299:0x0837, B:344:0x0a4e, B:223:0x057d, B:225:0x058c, B:227:0x0594, B:229:0x059c, B:230:0x05a5, B:188:0x0489, B:171:0x0410, B:162:0x03db, B:166:0x03f2, B:58:0x0190, B:59:0x01a0, B:64:0x01ab, B:67:0x01cd, B:68:0x01d4, B:71:0x01e2, B:73:0x01fc, B:81:0x0218, B:84:0x0231, B:87:0x023b, B:89:0x0245, B:93:0x0250, B:95:0x025e, B:63:0x01a8, B:105:0x0278, B:107:0x028a, B:110:0x0294, B:112:0x029d, B:114:0x02a7, B:115:0x02ac), top: B:389:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:428:0x09b5 A[SYNTHETIC] */
    void e() {
        Exception exc;
        String str;
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        Exception e10;
        String str2;
        boolean z12;
        long j10;
        String strSubstring;
        int i12;
        String str3 = "GET";
        String str4 = "Keep-Alive";
        String str5 = "Connection";
        DownloadTask downloadTask = this.f29280e;
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getUrl())) {
            return;
        }
        String path = this.f29280e.getPath();
        this.f29292q = new File(path);
        int i13 = 3;
        while (true) {
            if (i13 > 0) {
                try {
                    try {
                        String name = this.f29280e.getName();
                        String mimeType = this.f29280e.getMimeType();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("tryCount=");
                        sb2.append(i13);
                        if (!n(this.f29280e) && !m(this.f29280e)) {
                            if (this.f29294s > this.f29296u) {
                                try {
                                    if (this.f29292q.exists()) {
                                        UtilsMy.delete(this.f29292q);
                                    }
                                    this.f29294s = 0L;
                                    this.f29280e.setCurrentSize(this.f29295t);
                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                } catch (Exception e11) {
                                    e = e11;
                                    exc = e;
                                    a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                    exc.printStackTrace();
                                    i13--;
                                    c();
                                    str3 = str3;
                                    str4 = str4;
                                    str5 = str5;
                                }
                            }
                            long j11 = this.f29294s;
                            if (j11 > 0 && j11 == this.f29296u) {
                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                if (MApplication.f3177q1) {
                                    j.f().n(this.f29280e.getCrc_link_type_val());
                                }
                                c();
                                return;
                            }
                            String url = this.f29280e.getUrl();
                            URL url2 = new URL(url);
                            if (!n(this.f29280e) && !m(this.f29280e)) {
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 22));
                                HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
                                this.f29290o = httpURLConnection;
                                httpURLConnection.setConnectTimeout(5000);
                                this.f29290o.setReadTimeout(10000);
                                this.f29290o.setRequestProperty(str5, str4);
                                this.f29290o.setRequestMethod(str3);
                                if (this.f29294s > 0) {
                                    try {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("set connection property:range=");
                                        str = path;
                                        i10 = i13;
                                        try {
                                            sb3.append(this.f29294s);
                                            this.f29290o.setRequestProperty("Range", "bytes=" + this.f29294s + "-");
                                        } catch (Exception e12) {
                                            e = e12;
                                            path = str;
                                            i13 = i10;
                                            exc = e;
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                    }
                                } else {
                                    str = path;
                                    i10 = i13;
                                }
                                try {
                                    int responseCode = this.f29290o.getResponseCode();
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("HTTP STATUS CODE: ");
                                    sb4.append(responseCode);
                                    if (responseCode != 200 && responseCode != 206) {
                                        switch (responseCode) {
                                            case 301:
                                            case 302:
                                            case 303:
                                                url = this.f29290o.getHeaderField("Location");
                                                String headerField = this.f29290o.getHeaderField(HttpHeaders.Names.SET_COOKIE);
                                                try {
                                                    this.f29290o.disconnect();
                                                } catch (Exception e14) {
                                                    e14.printStackTrace();
                                                }
                                                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(url).openConnection();
                                                this.f29290o = httpURLConnection2;
                                                httpURLConnection2.setConnectTimeout(5000);
                                                this.f29290o.setReadTimeout(10000);
                                                this.f29290o.setRequestProperty(str5, str4);
                                                if (headerField != null && headerField != "") {
                                                    this.f29290o.setRequestProperty("Cookie", headerField);
                                                }
                                                this.f29290o.setRequestMethod(str3);
                                                if (this.f29294s > 0) {
                                                    try {
                                                        StringBuilder sb5 = new StringBuilder();
                                                        sb5.append("set connection property:range=");
                                                        sb5.append(this.f29294s);
                                                        HttpURLConnection httpURLConnection3 = this.f29290o;
                                                        StringBuilder sb6 = new StringBuilder();
                                                        sb6.append("bytes=");
                                                        str3 = str3;
                                                        str4 = str4;
                                                        try {
                                                            sb6.append(this.f29294s);
                                                            sb6.append("-");
                                                            httpURLConnection3.setRequestProperty("Range", sb6.toString());
                                                        } catch (Exception e15) {
                                                            e = e15;
                                                            exc = e;
                                                            str5 = str5;
                                                            path = str;
                                                            i13 = i10;
                                                            a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                            exc.printStackTrace();
                                                            i13--;
                                                            c();
                                                            str3 = str3;
                                                            str4 = str4;
                                                            str5 = str5;
                                                        }
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        str3 = str3;
                                                        str4 = str4;
                                                    }
                                                } else {
                                                    str4 = str4;
                                                    str3 = str3;
                                                }
                                                try {
                                                    responseCode = this.f29290o.getResponseCode();
                                                    StringBuilder sb7 = new StringBuilder();
                                                    sb7.append("Redirect Url : ");
                                                    sb7.append(url);
                                                    if (responseCode == 200) {
                                                        if (responseCode == 200) {
                                                            String str6 = str5;
                                                            i12 = responseCode;
                                                            if (this.f29294s > 0) {
                                                                try {
                                                                    this.f29294s = 0L;
                                                                    if (this.f29292q.exists()) {
                                                                        try {
                                                                            UtilsMy.delete(this.f29292q);
                                                                        } catch (Exception e17) {
                                                                            exc = e17;
                                                                            str5 = str6;
                                                                            path = str;
                                                                            i13 = i10;
                                                                            a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                                            exc.printStackTrace();
                                                                            i13--;
                                                                            c();
                                                                            str3 = str3;
                                                                            str4 = str4;
                                                                            str5 = str5;
                                                                        }
                                                                    }
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    str5 = str6;
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                } catch (Exception e18) {
                                                                    e = e18;
                                                                    str5 = str6;
                                                                    exc = e;
                                                                    path = str;
                                                                    i13 = i10;
                                                                    a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                                    exc.printStackTrace();
                                                                    i13--;
                                                                    c();
                                                                    str3 = str3;
                                                                    str4 = str4;
                                                                    str5 = str5;
                                                                }
                                                            } else {
                                                                str5 = str6;
                                                            }
                                                        } else {
                                                            str5 = str5;
                                                            i12 = responseCode;
                                                        }
                                                        responseCode = i12;
                                                        z10 = true;
                                                    } else {
                                                        str5 = str5;
                                                        z10 = false;
                                                    }
                                                    z11 = true;
                                                } catch (Exception e19) {
                                                    e = e19;
                                                    str5 = str5;
                                                    exc = e;
                                                    path = str;
                                                    i13 = i10;
                                                    a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                    exc.printStackTrace();
                                                    i13--;
                                                    c();
                                                    str3 = str3;
                                                    str4 = str4;
                                                    str5 = str5;
                                                }
                                                break;
                                            default:
                                                str4 = str4;
                                                str5 = str5;
                                                name = name;
                                                z11 = false;
                                                str3 = str3;
                                                z10 = false;
                                                break;
                                        }
                                    } else {
                                        str4 = str4;
                                        str5 = str5;
                                        name = name;
                                        str3 = str3;
                                        String headerField2 = this.f29290o.getHeaderField("Transfer-Encoding");
                                        if (!TextUtils.isEmpty(headerField2)) {
                                            headerField2.equalsIgnoreCase("chunked");
                                        }
                                        if (responseCode != 200 || this.f29294s <= 0) {
                                            i11 = responseCode;
                                        } else {
                                            this.f29294s = 0L;
                                            if (this.f29292q.exists()) {
                                                UtilsMy.delete(this.f29292q);
                                            }
                                            this.f29280e.setCurrentSize(this.f29295t);
                                            i11 = responseCode;
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                        }
                                        responseCode = i11;
                                        z10 = true;
                                        z11 = false;
                                    }
                                    if (!z11 && !z10) {
                                        a("[010]:gid" + this.f29280e.getCrc_link_type_val() + ",err:status[" + responseCode + "],e[" + this.f29290o.getResponseMessage() + "]");
                                        c();
                                        return;
                                    }
                                    try {
                                        s.q0(this.f29280e.getCrc_link_type_val(), this.f29290o.getHeaderFields().toString());
                                        String headerField3 = this.f29290o.getHeaderField("Content-Type");
                                        if (t2.h(headerField3)) {
                                            headerField3 = "";
                                        }
                                        String lowerCase = headerField3.toLowerCase();
                                        if (!lowerCase.equals("application/octet-stream") && !lowerCase.equals(AdBaseConstants.MIME_APK) && !lowerCase.equals("application/zip") && !lowerCase.equals("audio/x-mod") && this.f29280e.getActual_size() != this.f29296u) {
                                            try {
                                                StringBuilder sb8 = new StringBuilder();
                                                sb8.append("contentTypeConnection error. ");
                                                sb8.append(lowerCase);
                                                this.f29290o.disconnect();
                                            } catch (Exception e20) {
                                                e20.printStackTrace();
                                            }
                                            StringBuilder sb9 = new StringBuilder();
                                            sb9.append("[011]:gid=");
                                            sb9.append(this.f29280e.getCrc_link_type_val());
                                            sb9.append("err:");
                                            HttpURLConnection httpURLConnection4 = this.f29290o;
                                            sb9.append(httpURLConnection4 != null ? httpURLConnection4.getResponseMessage() : "");
                                            a(sb9.toString());
                                            c();
                                            return;
                                        }
                                        if (this.f29294s == 0) {
                                            if (mimeType != this.f29290o.getContentType()) {
                                                this.f29280e.setMimeType(this.f29290o.getContentType());
                                            }
                                            if (TextUtils.isEmpty(name)) {
                                                String headerField4 = this.f29290o.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
                                                if (headerField4 != null) {
                                                    int iIndexOf = headerField4.indexOf("filename=");
                                                    int iIndexOf2 = headerField4.indexOf(59, iIndexOf);
                                                    int i14 = iIndexOf + 9;
                                                    if (iIndexOf2 <= 0) {
                                                        iIndexOf2 = headerField4.length();
                                                    }
                                                    strSubstring = headerField4.substring(i14, iIndexOf2);
                                                    if (strSubstring.contains(x.a.f97579g)) {
                                                        strSubstring = strSubstring.replace(x.a.f97579g, "");
                                                    }
                                                } else {
                                                    strSubstring = url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1, url.length());
                                                }
                                                if (strSubstring.equals("") || strSubstring.equals("nt")) {
                                                    strSubstring = url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1, url.length());
                                                }
                                                if (strSubstring.length() > 50) {
                                                    strSubstring = strSubstring.contains("?") ? strSubstring.substring(0, strSubstring.indexOf("?")) : strSubstring.substring(0, 45);
                                                }
                                                this.f29280e.setName(strSubstring);
                                            } else {
                                                strSubstring = name;
                                            }
                                            if (TextUtils.isEmpty(str)) {
                                                path = (Dtype.MOD.name().equals(this.f29280e.getFileType()) || APKUtils.P(this.f29280e)) ? C + "apk/" + strSubstring : C + this.f29280e.getPlugin_num() + "/roms/" + strSubstring;
                                                try {
                                                    File file = new File(path);
                                                    this.f29292q = file;
                                                    File parentFile = file.getParentFile();
                                                    if (!parentFile.exists() && !parentFile.mkdirs()) {
                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
                                                        c();
                                                        c();
                                                        return;
                                                    } else {
                                                        if (!this.f29292q.exists()) {
                                                            this.f29292q.createNewFile();
                                                        }
                                                        this.f29280e.setPath(path);
                                                    }
                                                } catch (Exception e21) {
                                                    e10 = e21;
                                                    exc = e10;
                                                    i13 = i10;
                                                    a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                    exc.printStackTrace();
                                                    i13--;
                                                    c();
                                                    str3 = str3;
                                                    str4 = str4;
                                                    str5 = str5;
                                                }
                                            } else {
                                                path = str;
                                            }
                                            this.f29280e.setStartTime(System.currentTimeMillis());
                                            if (this.f29296u == this.f29292q.length()) {
                                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                                UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                if (MApplication.f3177q1) {
                                                    j.f().n(this.f29280e.getCrc_link_type_val());
                                                }
                                                c();
                                                return;
                                            }
                                        } else {
                                            path = str;
                                        }
                                        try {
                                            File parentFile2 = this.f29292q.getParentFile();
                                            if (!parentFile2.exists() && !parentFile2.mkdirs()) {
                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
                                                c();
                                                c();
                                                return;
                                            }
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                            try {
                                                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f29292q, net.lingala.zip4j.util.e.f94694e0);
                                                this.f29287l = randomAccessFile;
                                                randomAccessFile.seek(this.f29294s);
                                            } catch (FileNotFoundException e22) {
                                                e22.printStackTrace();
                                                if (e22.getMessage().contains("EISDIR")) {
                                                    if (this.f29292q.exists() && this.f29292q.isDirectory()) {
                                                        UtilsMy.delete(this.f29292q);
                                                        this.f29294s = 0L;
                                                    }
                                                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f29292q, net.lingala.zip4j.util.e.f94694e0);
                                                    this.f29287l = randomAccessFile2;
                                                    randomAccessFile2.seek(this.f29294s);
                                                }
                                            }
                                            this.f29286k = new BufferedInputStream(this.f29290o.getInputStream());
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 23));
                                            byte[] bArr = new byte[4096];
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 24));
                                            if (!n(this.f29280e) && !m(this.f29280e)) {
                                                long j12 = -1;
                                                while (true) {
                                                    int i15 = this.f29286k.read(bArr, 0, 4096);
                                                    str2 = path;
                                                    if (i15 > 0) {
                                                        if (this.f29294s == 0) {
                                                            this.f29282g = true;
                                                        }
                                                        this.f29287l.write(bArr, 0, i15);
                                                        this.f29294s += (long) i15;
                                                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                                        if (jCurrentTimeMillis2 < 0) {
                                                            jCurrentTimeMillis = System.currentTimeMillis();
                                                        }
                                                        if (jCurrentTimeMillis2 > 1000) {
                                                            StringBuilder sb10 = new StringBuilder();
                                                            sb10.append(this.f29280e.getShowName());
                                                            sb10.append(" Downloading ");
                                                            if ((this.f29294s + this.f29295t) - this.f29280e.getCurrentSize() > 0) {
                                                                DownloadTask downloadTask2 = this.f29280e;
                                                                downloadTask2.setSpeed(UtilsMy.e((((this.f29294s + this.f29295t) - downloadTask2.getCurrentSize()) * 1000) / jCurrentTimeMillis2));
                                                                long j13 = this.f29296u;
                                                                if (j13 != 0) {
                                                                    j12 = ((this.f29294s + this.f29295t) * 100) / (j13 + this.f29297v);
                                                                }
                                                                if (j12 < 1) {
                                                                    j12 = 1;
                                                                }
                                                                this.f29280e.setProgress(j12);
                                                                this.f29280e.setCurrentSize(this.f29295t + this.f29294s);
                                                                jCurrentTimeMillis = System.currentTimeMillis();
                                                            } else {
                                                                this.f29280e.setCurrentSize(this.f29295t + this.f29294s);
                                                            }
                                                            UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                        }
                                                        if (!m(this.f29280e)) {
                                                            if (n(this.f29280e)) {
                                                                this.f29280e.setSpeed("0");
                                                                UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                                z12 = false;
                                                            } else {
                                                                path = str2;
                                                            }
                                                        }
                                                    }
                                                    z12 = true;
                                                }
                                                c();
                                                if (z12) {
                                                    this.f29294s = this.f29292q.length();
                                                    StringBuilder sb11 = new StringBuilder();
                                                    sb11.append("range: ");
                                                    sb11.append(this.f29294s);
                                                    sb11.append(" size: ");
                                                    sb11.append(this.f29296u);
                                                    String strC = i1.c(this.f29292q);
                                                    if (t2.i(this.f29298w)) {
                                                        try {
                                                            if (this.f29298w.equals(strC)) {
                                                                try {
                                                                    t.l(MApplication.f3182z).R1(Event.downlooadmd5Complete, new Ext().setGameId(this.f29279d));
                                                                } catch (Exception e23) {
                                                                    e23.printStackTrace();
                                                                }
                                                            } else {
                                                                try {
                                                                    t.l(MApplication.f3182z).R1(Event.downlooadmd5Incomplete, new Ext().setGameId(this.f29279d));
                                                                } catch (Exception e24) {
                                                                    e24.printStackTrace();
                                                                }
                                                                GameMd5Data gameMd5Data = new GameMd5Data();
                                                                gameMd5Data.setGameId(this.f29279d);
                                                                gameMd5Data.setServerGameFileMd5(this.f29298w);
                                                                gameMd5Data.setAppGameFileMd5(strC);
                                                                gameMd5Data.setGameDownLoadUrl(this.f29280e.getUrl());
                                                                if ("retry".equals(l(gameMd5Data))) {
                                                                    i13 = i10 - 1;
                                                                    if (i13 > 0) {
                                                                        this.f29294s = 0L;
                                                                        c();
                                                                        UtilsMy.delete(this.f29292q);
                                                                        this.f29280e.setProgress(1L);
                                                                        this.f29280e.setCurrentSize(this.f29295t);
                                                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 45));
                                                                        Thread.sleep(4000L);
                                                                    }
                                                                }
                                                                j10 = this.f29294s;
                                                                if (j10 == 0 && j10 == this.f29296u) {
                                                                    this.f29280e.setFinishTime(System.currentTimeMillis());
                                                                    DownloadTask downloadTask3 = this.f29280e;
                                                                    downloadTask3.setCurrentSize(downloadTask3.getRes_currentSize() + this.f29296u);
                                                                    UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                                    if (this.f29282g) {
                                                                        q(this.f29280e, System.currentTimeMillis() - this.f29277b, 0);
                                                                        if (this.f29280e.getFileType().equals(Dtype.apk.name())) {
                                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 36));
                                                                        } else {
                                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                                                        }
                                                                        UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                                        if (MApplication.f3177q1) {
                                                                            j.f().n(this.f29280e.getCrc_link_type_val());
                                                                        }
                                                                    } else {
                                                                        q(this.f29280e, System.currentTimeMillis() - this.f29277b, 1);
                                                                        if (this.f29280e.getFileType().equals(Dtype.apk.name())) {
                                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 36));
                                                                        } else {
                                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                                                        }
                                                                        UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                                        if (MApplication.f3177q1) {
                                                                            j.f().n(this.f29280e.getCrc_link_type_val());
                                                                        }
                                                                    }
                                                                    c();
                                                                } else if (this.f29280e.getStatus() == 7) {
                                                                    c();
                                                                } else if ((this.f29292q.exists() || this.f29292q.length() != this.f29296u) && (i13 = i13 - 1) > 0) {
                                                                    this.f29294s = 0L;
                                                                    UtilsMy.delete(this.f29292q);
                                                                    this.f29280e.setProgress(1L);
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                    c();
                                                                } else {
                                                                    a("[012]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29294s + " size: " + this.f29296u);
                                                                    c();
                                                                }
                                                            }
                                                            j10 = this.f29294s;
                                                            if (j10 == 0) {
                                                                if (this.f29280e.getStatus() == 7) {
                                                                    c();
                                                                } else {
                                                                    if (this.f29292q.exists()) {
                                                                        this.f29294s = 0L;
                                                                        UtilsMy.delete(this.f29292q);
                                                                        this.f29280e.setProgress(1L);
                                                                        this.f29280e.setCurrentSize(this.f29295t);
                                                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                        c();
                                                                    } else {
                                                                        this.f29294s = 0L;
                                                                        UtilsMy.delete(this.f29292q);
                                                                        this.f29280e.setProgress(1L);
                                                                        this.f29280e.setCurrentSize(this.f29295t);
                                                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                        c();
                                                                    }
                                                                    a("[012]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29294s + " size: " + this.f29296u);
                                                                    c();
                                                                }
                                                            } else if (this.f29280e.getStatus() == 7) {
                                                                c();
                                                            } else {
                                                                if (this.f29292q.exists()) {
                                                                    this.f29294s = 0L;
                                                                    UtilsMy.delete(this.f29292q);
                                                                    this.f29280e.setProgress(1L);
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                    c();
                                                                } else {
                                                                    this.f29294s = 0L;
                                                                    UtilsMy.delete(this.f29292q);
                                                                    this.f29280e.setProgress(1L);
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                    c();
                                                                }
                                                                a("[012]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29294s + " size: " + this.f29296u);
                                                                c();
                                                            }
                                                        } catch (Exception e25) {
                                                            exc = e25;
                                                            path = str2;
                                                            a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                            exc.printStackTrace();
                                                            i13--;
                                                            c();
                                                            str3 = str3;
                                                            str4 = str4;
                                                            str5 = str5;
                                                        }
                                                        i13 = i10;
                                                    } else {
                                                        try {
                                                            t.l(MApplication.f3182z).R1(Event.Md5FailureAchieve, new Ext().setGameId(this.f29279d));
                                                        } catch (Exception e26) {
                                                            e26.printStackTrace();
                                                        }
                                                        GameMd5Data gameMd5Data2 = new GameMd5Data();
                                                        gameMd5Data2.setGameId(this.f29279d);
                                                        gameMd5Data2.setServerGameFileMd5(this.f29298w);
                                                        gameMd5Data2.setAppGameFileMd5(strC);
                                                        gameMd5Data2.setGameDownLoadUrl(this.f29280e.getUrl());
                                                        if ("retry".equals(l(gameMd5Data2))) {
                                                            i13 = i10 - 1;
                                                            if (i13 > 0) {
                                                                this.f29294s = 0L;
                                                                c();
                                                                UtilsMy.delete(this.f29292q);
                                                                this.f29280e.setCurrentSize(this.f29295t);
                                                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                this.f29280e.setProgress(0L);
                                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 45));
                                                                Thread.sleep(4000L);
                                                            }
                                                        } else {
                                                            i13 = i10;
                                                        }
                                                        j10 = this.f29294s;
                                                        if (j10 == 0) {
                                                            if (this.f29280e.getStatus() == 7) {
                                                                c();
                                                            } else {
                                                                if (this.f29292q.exists()) {
                                                                    this.f29294s = 0L;
                                                                    UtilsMy.delete(this.f29292q);
                                                                    this.f29280e.setProgress(1L);
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                    c();
                                                                } else {
                                                                    this.f29294s = 0L;
                                                                    UtilsMy.delete(this.f29292q);
                                                                    this.f29280e.setProgress(1L);
                                                                    this.f29280e.setCurrentSize(this.f29295t);
                                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                    c();
                                                                }
                                                                a("[012]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29294s + " size: " + this.f29296u);
                                                                c();
                                                            }
                                                        } else if (this.f29280e.getStatus() == 7) {
                                                            c();
                                                        } else {
                                                            if (this.f29292q.exists()) {
                                                                this.f29294s = 0L;
                                                                UtilsMy.delete(this.f29292q);
                                                                this.f29280e.setProgress(1L);
                                                                this.f29280e.setCurrentSize(this.f29295t);
                                                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                c();
                                                            } else {
                                                                this.f29294s = 0L;
                                                                UtilsMy.delete(this.f29292q);
                                                                this.f29280e.setProgress(1L);
                                                                this.f29280e.setCurrentSize(this.f29295t);
                                                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                                c();
                                                            }
                                                            a("[012]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29294s + " size: " + this.f29296u);
                                                            c();
                                                        }
                                                    }
                                                    i13--;
                                                    c();
                                                    str3 = str3;
                                                    str4 = str4;
                                                    str5 = str5;
                                                    path = str2;
                                                } else if (this.f29280e.getStatus() != 7) {
                                                    b(this.f29280e, System.currentTimeMillis() - this.f29277b, 1);
                                                }
                                            }
                                            c();
                                            c();
                                            return;
                                        } catch (Exception e27) {
                                            e10 = e27;
                                            exc = e10;
                                            i13 = i10;
                                        }
                                    } catch (Exception e28) {
                                        e = e28;
                                        exc = e;
                                        path = str;
                                        i13 = i10;
                                        a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                        exc.printStackTrace();
                                        i13--;
                                        c();
                                        str3 = str3;
                                        str4 = str4;
                                        str5 = str5;
                                    }
                                } catch (Exception e29) {
                                    e = e29;
                                    str3 = str3;
                                    str4 = str4;
                                }
                            }
                            c();
                            return;
                            exc = e;
                            a("[013]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                            exc.printStackTrace();
                            i13--;
                            c();
                            str3 = str3;
                            str4 = str4;
                            str5 = str5;
                        }
                        c();
                        return;
                    } catch (Throwable th) {
                        c();
                        throw th;
                    }
                } catch (Exception e30) {
                    e = e30;
                }
            }
            c();
        }
        c();
        c();
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0388  */
    /* JADX WARN: Code duplicated, block: B:158:0x0406 A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_ENTER, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:160:0x0410 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0420  */
    /* JADX WARN: Code duplicated, block: B:163:0x0421 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:166:0x0431 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:168:0x043b A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:175:0x045c A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0473 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:180:0x047b A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0487 A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_LEAVE, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:183:0x048f  */
    /* JADX WARN: Code duplicated, block: B:187:0x0499 A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_ENTER, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:189:0x04a3 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:192:0x04ae A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:198:0x04ee A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:208:0x0546 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:216:0x057e A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:218:0x059e A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_LEAVE, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:248:0x0687 A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_ENTER, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:250:0x068f A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:253:0x06ab A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:256:0x06b5 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:258:0x06c5 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:260:0x06e3 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:266:0x0705 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:270:0x0727  */
    /* JADX WARN: Code duplicated, block: B:272:0x0745 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:277:0x0765 A[Catch: Exception -> 0x00e2, all -> 0x0958, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:281:0x078f A[LOOP:1: B:246:0x067c->B:281:0x078f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:287:0x07a2 A[Catch: Exception -> 0x00e2, all -> 0x0958, TRY_LEAVE, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:289:0x07b4 A[Catch: Exception -> 0x0952, all -> 0x0958, TRY_ENTER, TryCatch #7 {all -> 0x0958, blocks: (B:9:0x001d, B:12:0x0035, B:15:0x003e, B:21:0x0087, B:23:0x008d, B:24:0x0094, B:26:0x00a1, B:30:0x00ad, B:33:0x00bf, B:35:0x00c3, B:37:0x00c9, B:38:0x00ce, B:42:0x00e6, B:45:0x00ef, B:47:0x00f5, B:49:0x0109, B:51:0x0112, B:53:0x012e, B:56:0x013f, B:58:0x0147, B:61:0x0151, B:64:0x0190, B:67:0x01bf, B:127:0x032e, B:130:0x0367, B:133:0x0389, B:135:0x0395, B:137:0x039d, B:139:0x03a5, B:141:0x03ad, B:145:0x03ba, B:150:0x03d2, B:152:0x03ee, B:153:0x03f2, B:149:0x03cf, B:156:0x0400, B:158:0x0406, B:160:0x0410, B:164:0x0425, B:166:0x0431, B:169:0x044b, B:171:0x0451, B:176:0x046b, B:178:0x0473, B:180:0x047b, B:181:0x0487, B:184:0x0491, B:187:0x0499, B:189:0x04a3, B:190:0x04a8, B:192:0x04ae, B:194:0x04c0, B:197:0x04c9, B:199:0x0510, B:201:0x0521, B:203:0x0527, B:206:0x053e, B:208:0x0546, B:209:0x054b, B:198:0x04ee, B:210:0x0550, B:212:0x0561, B:214:0x0575, B:216:0x057e, B:218:0x059e, B:221:0x05b7, B:223:0x05c3, B:225:0x05c9, B:228:0x05e0, B:240:0x0623, B:242:0x0670, B:246:0x067c, B:248:0x0687, B:250:0x068f, B:251:0x0692, B:253:0x06ab, B:256:0x06b5, B:258:0x06c5, B:260:0x06e3, B:262:0x06f8, B:265:0x0702, B:267:0x070a, B:266:0x0705, B:271:0x072a, B:273:0x074c, B:272:0x0745, B:274:0x075c, B:277:0x0765, B:279:0x076d, B:283:0x0794, B:285:0x0799, B:287:0x07a2, B:289:0x07b4, B:291:0x07dd, B:293:0x07e3, B:295:0x0807, B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:351:0x0960, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:324:0x08ce, B:334:0x0945, B:232:0x05f1, B:234:0x0600, B:236:0x0608, B:238:0x0610, B:239:0x0615, B:175:0x045c, B:163:0x0421, B:168:0x043b, B:75:0x01e5, B:76:0x01f5, B:81:0x0200, B:84:0x0222, B:85:0x0229, B:87:0x0236, B:88:0x025c, B:90:0x0266, B:92:0x026e, B:94:0x0274, B:96:0x027a, B:97:0x027f, B:98:0x0292, B:101:0x02ab, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c4, B:80:0x01fd, B:111:0x02e1, B:113:0x02ef, B:116:0x02f9, B:118:0x0301, B:120:0x0307, B:122:0x030d, B:123:0x0312, B:20:0x0052), top: B:367:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:317:0x08b6 A[Catch: Exception -> 0x094c, all -> 0x0958, TRY_ENTER, TryCatch #2 {Exception -> 0x094c, blocks: (B:299:0x0811, B:304:0x0861, B:306:0x0865, B:308:0x089e, B:307:0x0882, B:301:0x082c, B:303:0x0854, B:312:0x08a6, B:314:0x08af, B:317:0x08b6, B:319:0x08be, B:330:0x090f, B:334:0x0945), top: B:362:0x08a6 }] */
    /* JADX WARN: Code duplicated, block: B:382:0x0561 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:386:0x0799 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:389:0x08af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:392:0x0764 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:393:0x076d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:394:0x0793 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:198:0x04ee, please report this as an issue */
    void g() {
        int i10;
        Exception exc;
        int i11;
        String name;
        String resource_path;
        boolean z10;
        boolean z11;
        String headerField;
        String lowerCase;
        String str;
        File parentFile;
        byte[] bArr;
        long jCurrentTimeMillis;
        long j10;
        int i12;
        boolean z12;
        long j11;
        int i13;
        byte[] bArr2;
        long jCurrentTimeMillis2;
        long j12;
        String str2;
        File parentFile2;
        String headerField2;
        String strSubstring;
        int iIndexOf;
        String strSubstring2;
        DownloadTask downloadTask = this.f29280e;
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getResource_url_remote())) {
            return;
        }
        int i14 = 3;
        while (true) {
            if (i14 > 0) {
                try {
                    try {
                        String mimeType = this.f29280e.getMimeType();
                        String resource_url_remote = this.f29280e.getResource_url_remote();
                        if (this.f29280e.isMod()) {
                            name = i1.d(resource_url_remote) + ".mod";
                            resource_path = C + "mod/" + this.f29280e.getPackageName() + net.lingala.zip4j.util.e.F0 + name;
                        } else {
                            try {
                                if (APKUtils.P(this.f29280e)) {
                                    name = i1.d(resource_url_remote) + ".mod";
                                    resource_path = C + "mod/" + this.f29280e.getPackageName() + net.lingala.zip4j.util.e.F0 + name;
                                } else {
                                    name = this.f29280e.getName();
                                    resource_path = this.f29280e.getResource_path();
                                }
                            } catch (Exception e10) {
                                exc = e10;
                                i10 = i14;
                                a("[009]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                exc.printStackTrace();
                                i11 = i10 - 1;
                                d();
                                i14 = i11;
                            }
                        }
                        if (!TextUtils.isEmpty(resource_path)) {
                            this.f29293r = new File(resource_path);
                        }
                        URL url = new URL(resource_url_remote);
                        if (n(this.f29280e) || m(this.f29280e)) {
                            d();
                            return;
                        }
                        i10 = i14;
                        try {
                            String str3 = resource_url_remote;
                            if (this.f29295t > this.f29297v) {
                                try {
                                    File file = this.f29293r;
                                    if (file != null && file.exists()) {
                                        UtilsMy.delete(this.f29293r);
                                    }
                                    this.f29295t = 0L;
                                    this.f29280e.setRes_currentSize(0L);
                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                } catch (Exception e11) {
                                    exc = e11;
                                    a("[009]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                    exc.printStackTrace();
                                    i11 = i10 - 1;
                                }
                            }
                            long j13 = this.f29295t;
                            if (j13 > 0 && j13 == this.f29297v) {
                                p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                if (this.f29280e.getTask_down_type() == 1 || this.f29280e.getTask_down_type() == 3) {
                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                    UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                    if (MApplication.f3177q1) {
                                        j.f().n(this.f29280e.getCrc_link_type_val());
                                    }
                                }
                                d();
                                return;
                            }
                            if (!n(this.f29280e) && !m(this.f29280e)) {
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 22));
                                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                                this.f29291p = httpURLConnection;
                                httpURLConnection.setConnectTimeout(5000);
                                this.f29291p.setReadTimeout(10000);
                                this.f29291p.setRequestProperty("Connection", "Keep-Alive");
                                this.f29291p.setRequestMethod("GET");
                                String str4 = resource_path;
                                if (this.f29295t > 0) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("set connection property:range=");
                                    sb2.append(this.f29295t);
                                    this.f29291p.setRequestProperty("Range", "bytes=" + this.f29295t + "-");
                                }
                                int responseCode = this.f29291p.getResponseCode();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("HTTP STATUS CODE: ");
                                sb3.append(responseCode);
                                try {
                                    if (responseCode != 200 && responseCode != 206) {
                                        switch (responseCode) {
                                            case 301:
                                            case 302:
                                            case 303:
                                                String headerField3 = this.f29291p.getHeaderField("Location");
                                                String headerField4 = this.f29291p.getHeaderField(HttpHeaders.Names.SET_COOKIE);
                                                try {
                                                    this.f29291p.disconnect();
                                                } catch (Exception e12) {
                                                    e12.printStackTrace();
                                                }
                                                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(headerField3).openConnection();
                                                this.f29291p = httpURLConnection2;
                                                httpURLConnection2.setConnectTimeout(5000);
                                                this.f29291p.setReadTimeout(10000);
                                                this.f29291p.setRequestProperty("Connection", "Keep-Alive");
                                                if (headerField4 != null && headerField4 != "") {
                                                    this.f29291p.setRequestProperty("Cookie", headerField4);
                                                }
                                                this.f29291p.setRequestMethod("GET");
                                                if (this.f29295t > 0) {
                                                    StringBuilder sb4 = new StringBuilder();
                                                    sb4.append("set connection property:range=");
                                                    sb4.append(this.f29295t);
                                                    this.f29291p.setRequestProperty("Range", "bytes=" + this.f29295t + "-");
                                                }
                                                if (this.f29291p.getResponseCode() == 200 && this.f29295t > 0) {
                                                    this.f29295t = 0L;
                                                    File file2 = this.f29293r;
                                                    if (file2 != null && file2.exists()) {
                                                        UtilsMy.delete(this.f29293r);
                                                    }
                                                    this.f29280e.setRes_currentSize(this.f29295t);
                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                }
                                                int responseCode2 = this.f29291p.getResponseCode();
                                                StringBuilder sb5 = new StringBuilder();
                                                sb5.append("Redirect Url : ");
                                                sb5.append(headerField3);
                                                if (responseCode2 != 200) {
                                                    str3 = headerField3;
                                                    z11 = true;
                                                    responseCode = responseCode2;
                                                    z10 = false;
                                                } else {
                                                    if (responseCode2 == 200 && this.f29295t > 0) {
                                                        this.f29295t = 0L;
                                                        File file3 = this.f29293r;
                                                        if (file3 != null && file3.exists()) {
                                                            UtilsMy.delete(this.f29293r);
                                                        }
                                                        this.f29280e.setRes_currentSize(this.f29295t);
                                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                    }
                                                    str3 = headerField3;
                                                    z11 = true;
                                                    responseCode = responseCode2;
                                                    z10 = true;
                                                }
                                                break;
                                            default:
                                                z10 = false;
                                                break;
                                        }
                                        if (z11 && !z10) {
                                            a("[006]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:status[" + responseCode + "],e[" + this.f29291p.getResponseMessage() + "]");
                                            d();
                                            return;
                                        }
                                        s.q0(this.f29280e.getCrc_link_type_val(), this.f29291p.getHeaderFields().toString());
                                        headerField = this.f29291p.getHeaderField("Content-Type");
                                        if (t2.h(headerField)) {
                                            headerField = "";
                                        }
                                        lowerCase = headerField.toLowerCase();
                                        if (lowerCase.equals("application/octet-stream") && !lowerCase.equals(AdBaseConstants.MIME_APK) && !lowerCase.equals("application/zip") && !lowerCase.equals("audio/x-mod") && this.f29280e.getActual_size() != this.f29297v) {
                                            try {
                                                StringBuilder sb6 = new StringBuilder();
                                                sb6.append("contentTypeConnection error. ");
                                                sb6.append(lowerCase);
                                                this.f29291p.disconnect();
                                            } catch (Exception e13) {
                                                e13.printStackTrace();
                                            }
                                            StringBuilder sb7 = new StringBuilder();
                                            sb7.append("[007]:gid=");
                                            sb7.append(this.f29280e.getCrc_link_type_val());
                                            sb7.append("err:");
                                            HttpURLConnection httpURLConnection3 = this.f29291p;
                                            sb7.append(httpURLConnection3 != null ? httpURLConnection3.getResponseMessage() : "");
                                            a(sb7.toString());
                                            d();
                                            return;
                                        }
                                        if (TextUtils.isEmpty(name)) {
                                            headerField2 = this.f29291p.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
                                            if (headerField2 != null) {
                                                int iIndexOf2 = headerField2.indexOf("filename=");
                                                iIndexOf = headerField2.indexOf(59, iIndexOf2);
                                                int i15 = iIndexOf2 + 9;
                                                if (iIndexOf > 0) {
                                                    iIndexOf = headerField2.length();
                                                }
                                                strSubstring2 = headerField2.substring(i15, iIndexOf);
                                                if (strSubstring2.contains(x.a.f97579g)) {
                                                    strSubstring2 = strSubstring2.replace(x.a.f97579g, "");
                                                }
                                                strSubstring = strSubstring2;
                                                str = net.lingala.zip4j.util.e.F0;
                                            } else {
                                                str = net.lingala.zip4j.util.e.F0;
                                                strSubstring = str3.substring(str3.lastIndexOf(str) + 1, str3.length());
                                            }
                                            if (strSubstring.equals("") || strSubstring.equals("nt")) {
                                                strSubstring = str3.substring(str3.lastIndexOf(str) + 1, str3.length());
                                            }
                                            name = strSubstring;
                                            if (name.length() > 50) {
                                                if (name.contains("?")) {
                                                    name = name.substring(0, name.indexOf("?"));
                                                } else {
                                                    name = name.substring(0, 45);
                                                }
                                            }
                                        } else {
                                            str = net.lingala.zip4j.util.e.F0;
                                        }
                                        if (this.f29295t == 0) {
                                            if (mimeType != this.f29291p.getContentType()) {
                                                this.f29291p.getContentType();
                                            }
                                            if (TextUtils.isEmpty(str4)) {
                                                if (!Dtype.MOD.name().equals(this.f29280e.getFileType()) || APKUtils.P(this.f29280e)) {
                                                    str2 = C + "mod/" + this.f29280e.getPackageName() + str + name;
                                                } else {
                                                    str2 = C + this.f29280e.getRomType() + "/roms/" + name + File.separator;
                                                }
                                                File file4 = new File(str2);
                                                this.f29293r = file4;
                                                parentFile2 = file4.getParentFile();
                                                if (parentFile2.exists() && !parentFile2.mkdirs()) {
                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
                                                    d();
                                                    d();
                                                    return;
                                                } else {
                                                    if (!this.f29293r.exists()) {
                                                        this.f29293r.createNewFile();
                                                    }
                                                    this.f29280e.setResource_path(str2);
                                                }
                                            }
                                            this.f29280e.setStartTime(System.currentTimeMillis());
                                            if (this.f29297v == this.f29295t) {
                                                this.f29280e.setRes_currentSize(this.f29293r.length());
                                                if (this.f29280e.getTask_down_type() != 1 || this.f29280e.getTask_down_type() == 3) {
                                                    p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                                    if (MApplication.f3177q1) {
                                                        UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                        j.f().n(this.f29280e.getCrc_link_type_val());
                                                    }
                                                }
                                                d();
                                                return;
                                            }
                                        }
                                        parentFile = this.f29293r.getParentFile();
                                        if (parentFile.exists() && !parentFile.mkdirs()) {
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 32));
                                            d();
                                            d();
                                            return;
                                        }
                                        RandomAccessFile randomAccessFile = new RandomAccessFile(this.f29293r, net.lingala.zip4j.util.e.f94694e0);
                                        this.f29285j = randomAccessFile;
                                        randomAccessFile.seek(this.f29295t);
                                        this.f29284i = new BufferedInputStream(this.f29291p.getInputStream());
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 23));
                                        bArr = new byte[4096];
                                        jCurrentTimeMillis = System.currentTimeMillis();
                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 24));
                                        if (!n(this.f29280e) && !m(this.f29280e)) {
                                            j10 = -1;
                                            while (true) {
                                                i12 = this.f29284i.read(bArr, 0, 4096);
                                                if (i12 <= 0) {
                                                    if (this.f29295t == 0) {
                                                        this.f29282g = true;
                                                    }
                                                    this.f29285j.write(bArr, 0, i12);
                                                    bArr2 = bArr;
                                                    this.f29295t += (long) i12;
                                                    jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                                    if (jCurrentTimeMillis2 < 0) {
                                                        jCurrentTimeMillis = System.currentTimeMillis();
                                                    }
                                                    if (jCurrentTimeMillis2 > 1000) {
                                                        if (this.f29295t - this.f29280e.getRes_currentSize() > 0) {
                                                            DownloadTask downloadTask2 = this.f29280e;
                                                            downloadTask2.setSpeed(UtilsMy.e(((this.f29295t - downloadTask2.getRes_currentSize()) * 1000) / jCurrentTimeMillis2));
                                                            if (this.f29297v != 0) {
                                                                long res_currentSize = (this.f29295t * 100) + this.f29280e.getRes_currentSize();
                                                                if (this.f29280e.getTask_down_type() != 0 || this.f29280e.getTask_down_type() == 2) {
                                                                    j12 = this.f29297v + this.f29296u;
                                                                } else {
                                                                    j12 = this.f29297v;
                                                                }
                                                                j10 = res_currentSize / j12;
                                                                StringBuilder sb8 = new StringBuilder();
                                                                sb8.append("downloadResProgress: ");
                                                                sb8.append(j10);
                                                                sb8.append("totalSize：");
                                                                sb8.append(j12);
                                                            }
                                                            if (j10 < 1) {
                                                                j10 = 1;
                                                            }
                                                            this.f29280e.setProgress(j10);
                                                            this.f29280e.setRes_currentSize(this.f29295t);
                                                            this.f29280e.setCurrentSize(this.f29294s + this.f29295t);
                                                            jCurrentTimeMillis = System.currentTimeMillis();
                                                        } else {
                                                            this.f29280e.setRes_currentSize(this.f29295t);
                                                        }
                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                    }
                                                    if (m(this.f29280e)) {
                                                        if (n(this.f29280e)) {
                                                            this.f29280e.setSpeed("0");
                                                            UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                            z12 = false;
                                                        } else {
                                                            bArr = bArr2;
                                                        }
                                                    }
                                                }
                                                z12 = true;
                                            }
                                            d();
                                            if (!z12) {
                                                this.f29295t = this.f29293r.length();
                                                StringBuilder sb9 = new StringBuilder();
                                                sb9.append("range: ");
                                                sb9.append(this.f29295t);
                                                sb9.append(" size: ");
                                                sb9.append(this.f29297v);
                                                j11 = this.f29295t;
                                                if (j11 == 0 && j11 == this.f29297v) {
                                                    this.f29280e.setFinishTime(System.currentTimeMillis());
                                                    this.f29280e.setRes_currentSize(this.f29295t);
                                                    this.f29280e.setResource_path(this.f29293r.getAbsolutePath());
                                                    if (this.f29280e.getTask_down_type() == 1 || this.f29280e.getTask_down_type() == 3) {
                                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                                        UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                        if (MApplication.f3177q1) {
                                                            j.f().n(this.f29280e.getCrc_link_type_val());
                                                        }
                                                    } else {
                                                        UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                    }
                                                    if (this.f29282g) {
                                                        q(this.f29280e, System.currentTimeMillis() - this.f29277b, 0);
                                                        this.f29280e.getFileType().equals(Dtype.apk.name());
                                                    } else {
                                                        q(this.f29280e, System.currentTimeMillis() - this.f29277b, 1);
                                                        this.f29280e.getFileType().equals(Dtype.apk.name());
                                                    }
                                                    d();
                                                    d();
                                                    return;
                                                }
                                                try {
                                                    if (this.f29280e.getStatus() == 7) {
                                                        d();
                                                        d();
                                                        return;
                                                    }
                                                    if ((this.f29293r.exists() || this.f29293r.length() != this.f29297v) && (i13 = i10 - 1) > 0) {
                                                        try {
                                                            UtilsMy.delete(this.f29293r);
                                                            this.f29295t = 0L;
                                                            this.f29280e.setProgress(0L);
                                                            this.f29280e.setRes_currentSize(this.f29295t);
                                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                                            d();
                                                            i11 = i13 - 1;
                                                        } catch (Exception e14) {
                                                            e = e14;
                                                            i10 = i13;
                                                            exc = e;
                                                            a("[009]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                                                            exc.printStackTrace();
                                                            i11 = i10 - 1;
                                                        }
                                                        d();
                                                        i14 = i11;
                                                    }
                                                    a("[008]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29295t + " size: " + this.f29297v);
                                                    d();
                                                    d();
                                                    return;
                                                } catch (Exception e15) {
                                                    e = e15;
                                                }
                                            } else {
                                                if (this.f29280e.getStatus() != 7) {
                                                    b(this.f29280e, System.currentTimeMillis() - this.f29277b, 1);
                                                }
                                                d();
                                            }
                                        }
                                        d();
                                        d();
                                        return;
                                    }
                                    String headerField5 = this.f29291p.getHeaderField("Transfer-Encoding");
                                    if (!TextUtils.isEmpty(headerField5)) {
                                        headerField5.equalsIgnoreCase("chunked");
                                    }
                                    if (responseCode == 200 && this.f29295t > 0) {
                                        this.f29295t = 0L;
                                        File file5 = this.f29293r;
                                        if (file5 != null && file5.exists()) {
                                            UtilsMy.delete(this.f29293r);
                                        }
                                        this.f29280e.setRes_currentSize(this.f29295t);
                                        p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                    }
                                    z10 = true;
                                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f29293r, net.lingala.zip4j.util.e.f94694e0);
                                    this.f29285j = randomAccessFile2;
                                    randomAccessFile2.seek(this.f29295t);
                                } catch (FileNotFoundException e16) {
                                    e16.printStackTrace();
                                    if (e16.getMessage().contains("EISDIR")) {
                                        if (this.f29293r.exists() && this.f29293r.isDirectory()) {
                                            UtilsMy.delete(this.f29293r);
                                        }
                                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.f29293r, net.lingala.zip4j.util.e.f94694e0);
                                        this.f29285j = randomAccessFile3;
                                        randomAccessFile3.seek(this.f29295t);
                                    }
                                }
                                z11 = false;
                                if (z11) {
                                }
                                s.q0(this.f29280e.getCrc_link_type_val(), this.f29291p.getHeaderFields().toString());
                                headerField = this.f29291p.getHeaderField("Content-Type");
                                if (t2.h(headerField)) {
                                    headerField = "";
                                }
                                lowerCase = headerField.toLowerCase();
                                if (lowerCase.equals("application/octet-stream")) {
                                }
                                if (TextUtils.isEmpty(name)) {
                                    headerField2 = this.f29291p.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
                                    if (headerField2 != null) {
                                        int iIndexOf3 = headerField2.indexOf("filename=");
                                        iIndexOf = headerField2.indexOf(59, iIndexOf3);
                                        int i16 = iIndexOf3 + 9;
                                        if (iIndexOf > 0) {
                                            iIndexOf = headerField2.length();
                                        }
                                        strSubstring2 = headerField2.substring(i16, iIndexOf);
                                        if (strSubstring2.contains(x.a.f97579g)) {
                                            strSubstring2 = strSubstring2.replace(x.a.f97579g, "");
                                        }
                                        strSubstring = strSubstring2;
                                        str = net.lingala.zip4j.util.e.F0;
                                    } else {
                                        str = net.lingala.zip4j.util.e.F0;
                                        strSubstring = str3.substring(str3.lastIndexOf(str) + 1, str3.length());
                                    }
                                    if (strSubstring.equals("")) {
                                        strSubstring = str3.substring(str3.lastIndexOf(str) + 1, str3.length());
                                    } else {
                                        strSubstring = str3.substring(str3.lastIndexOf(str) + 1, str3.length());
                                    }
                                    name = strSubstring;
                                    if (name.length() > 50) {
                                        if (name.contains("?")) {
                                            name = name.substring(0, name.indexOf("?"));
                                        } else {
                                            name = name.substring(0, 45);
                                        }
                                    }
                                } else {
                                    str = net.lingala.zip4j.util.e.F0;
                                }
                                if (this.f29295t == 0) {
                                    if (mimeType != this.f29291p.getContentType()) {
                                        this.f29291p.getContentType();
                                    }
                                    if (TextUtils.isEmpty(str4)) {
                                        if (Dtype.MOD.name().equals(this.f29280e.getFileType())) {
                                            str2 = C + "mod/" + this.f29280e.getPackageName() + str + name;
                                        } else {
                                            str2 = C + "mod/" + this.f29280e.getPackageName() + str + name;
                                        }
                                        File file6 = new File(str2);
                                        this.f29293r = file6;
                                        parentFile2 = file6.getParentFile();
                                        if (parentFile2.exists()) {
                                        }
                                        if (!this.f29293r.exists()) {
                                            this.f29293r.createNewFile();
                                        }
                                        this.f29280e.setResource_path(str2);
                                    }
                                    this.f29280e.setStartTime(System.currentTimeMillis());
                                    if (this.f29297v == this.f29295t) {
                                        this.f29280e.setRes_currentSize(this.f29293r.length());
                                        if (this.f29280e.getTask_down_type() != 1) {
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                            if (MApplication.f3177q1) {
                                                UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                j.f().n(this.f29280e.getCrc_link_type_val());
                                            }
                                        } else {
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 31));
                                            if (MApplication.f3177q1) {
                                                UtilsMy.X3(MApplication.f3182z, this.f29280e, 5);
                                                j.f().n(this.f29280e.getCrc_link_type_val());
                                            }
                                        }
                                        d();
                                        return;
                                    }
                                }
                                parentFile = this.f29293r.getParentFile();
                                if (parentFile.exists()) {
                                }
                                this.f29284i = new BufferedInputStream(this.f29291p.getInputStream());
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 23));
                                bArr = new byte[4096];
                                jCurrentTimeMillis = System.currentTimeMillis();
                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 24));
                                if (!n(this.f29280e)) {
                                    j10 = -1;
                                    while (true) {
                                        i12 = this.f29284i.read(bArr, 0, 4096);
                                        if (i12 <= 0) {
                                            if (this.f29295t == 0) {
                                                this.f29282g = true;
                                            }
                                            this.f29285j.write(bArr, 0, i12);
                                            bArr2 = bArr;
                                            this.f29295t += (long) i12;
                                            jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                            if (jCurrentTimeMillis2 < 0) {
                                                jCurrentTimeMillis = System.currentTimeMillis();
                                            }
                                            if (jCurrentTimeMillis2 > 1000) {
                                                if (this.f29295t - this.f29280e.getRes_currentSize() > 0) {
                                                    DownloadTask downloadTask3 = this.f29280e;
                                                    downloadTask3.setSpeed(UtilsMy.e(((this.f29295t - downloadTask3.getRes_currentSize()) * 1000) / jCurrentTimeMillis2));
                                                    if (this.f29297v != 0) {
                                                        long res_currentSize2 = (this.f29295t * 100) + this.f29280e.getRes_currentSize();
                                                        if (this.f29280e.getTask_down_type() != 0) {
                                                            j12 = this.f29297v + this.f29296u;
                                                        } else {
                                                            j12 = this.f29297v + this.f29296u;
                                                        }
                                                        j10 = res_currentSize2 / j12;
                                                        StringBuilder sb10 = new StringBuilder();
                                                        sb10.append("downloadResProgress: ");
                                                        sb10.append(j10);
                                                        sb10.append("totalSize：");
                                                        sb10.append(j12);
                                                    }
                                                    if (j10 < 1) {
                                                        j10 = 1;
                                                    }
                                                    this.f29280e.setProgress(j10);
                                                    this.f29280e.setRes_currentSize(this.f29295t);
                                                    this.f29280e.setCurrentSize(this.f29294s + this.f29295t);
                                                    jCurrentTimeMillis = System.currentTimeMillis();
                                                } else {
                                                    this.f29280e.setRes_currentSize(this.f29295t);
                                                }
                                                org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                            }
                                            if (m(this.f29280e)) {
                                                if (n(this.f29280e)) {
                                                    this.f29280e.setSpeed("0");
                                                    UtilsMy.X3(MApplication.f3182z, this.f29280e, 8);
                                                    org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 33));
                                                    z12 = false;
                                                } else {
                                                    bArr = bArr2;
                                                }
                                            }
                                        }
                                        z12 = true;
                                    }
                                    d();
                                    if (!z12) {
                                        this.f29295t = this.f29293r.length();
                                        StringBuilder sb11 = new StringBuilder();
                                        sb11.append("range: ");
                                        sb11.append(this.f29295t);
                                        sb11.append(" size: ");
                                        sb11.append(this.f29297v);
                                        j11 = this.f29295t;
                                        if (j11 == 0) {
                                        }
                                        if (this.f29280e.getStatus() == 7) {
                                            d();
                                            d();
                                            return;
                                        }
                                        if (this.f29293r.exists()) {
                                            UtilsMy.delete(this.f29293r);
                                            this.f29295t = 0L;
                                            this.f29280e.setProgress(0L);
                                            this.f29280e.setRes_currentSize(this.f29295t);
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                            d();
                                            i11 = i13 - 1;
                                            d();
                                            i14 = i11;
                                        } else {
                                            UtilsMy.delete(this.f29293r);
                                            this.f29295t = 0L;
                                            this.f29280e.setProgress(0L);
                                            this.f29280e.setRes_currentSize(this.f29295t);
                                            p(this.f29280e, System.currentTimeMillis() - this.f29277b);
                                            org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
                                            d();
                                            i11 = i13 - 1;
                                            d();
                                            i14 = i11;
                                        }
                                        a("[008]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:range: " + this.f29295t + " size: " + this.f29297v);
                                        d();
                                        d();
                                        return;
                                    }
                                    if (this.f29280e.getStatus() != 7) {
                                        b(this.f29280e, System.currentTimeMillis() - this.f29277b, 1);
                                    }
                                    d();
                                }
                                d();
                                d();
                                return;
                            }
                            d();
                            return;
                        } catch (Exception e17) {
                            e = e17;
                        }
                        exc = e;
                        a("[009]:gid=" + this.f29280e.getCrc_link_type_val() + ",err:" + exc.getMessage());
                        exc.printStackTrace();
                        i11 = i10 - 1;
                        d();
                        i14 = i11;
                    } catch (Exception e18) {
                        e = e18;
                        i10 = i14;
                    }
                } catch (Throwable th) {
                    d();
                    throw th;
                }
            }
            d();
            return;
        }
    }

    public String i() {
        return this.f29279d;
    }

    public String j() {
        return this.f29278c;
    }

    public void k() {
        this.f29283h = true;
    }

    public void r(String url) {
        this.f29278c = url;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setPriority(1);
        Process.setThreadPriority(19);
        if (this.f29283h) {
            return;
        }
        C = z.f50166e;
        r.c(this.f29280e);
        DownloadTask downloadTask = this.f29280e;
        if (downloadTask == null || !downloadTask.isValid()) {
            a("[001]:下载任务无效");
            return;
        }
        if (this.f29283h) {
            return;
        }
        org.greenrobot.eventbus.c.f().q(new p(this.f29279d, 20));
        if (n(this.f29280e) || m(this.f29280e)) {
            return;
        }
        o();
    }
}
