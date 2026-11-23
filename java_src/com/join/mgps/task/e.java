package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.servcie.q;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.m;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.s3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.x;
import com.join.mgps.Util.z;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.e0;
import com.join.mgps.event.r;
import com.join.mgps.va.overmind.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.s;
import com.papa.sim.statistic.t;
import java.io.File;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class e extends Thread implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f73200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f73201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DownloadTask f73202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f73203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f73204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    a f73205g;

    public e(DownloadTask downloadTask, Context context) {
        this.f73200b = "UNAndroidZIPThread";
        this.f73203e = true;
        this.f73204f = false;
        this.f73205g = null;
        this.f73202d = downloadTask;
        this.f73201c = context;
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f73203e = false;
        this.f73205g.a(false);
        DownloadTask downloadTask = this.f73202d;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f73203e;
    }

    /* JADX WARN: Code duplicated, block: B:174:0x041c A[Catch: Exception -> 0x03b7, all -> 0x03bb, TryCatch #7 {Exception -> 0x03b7, blocks: (B:90:0x020e, B:92:0x0212, B:93:0x0216, B:159:0x03b2, B:166:0x03c5, B:172:0x0418, B:174:0x041c, B:175:0x0420, B:177:0x042b, B:180:0x048a, B:190:0x04b5, B:189:0x04b2), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x042b A[Catch: Exception -> 0x03b7, all -> 0x03bb, TRY_LEAVE, TryCatch #7 {Exception -> 0x03b7, blocks: (B:90:0x020e, B:92:0x0212, B:93:0x0216, B:159:0x03b2, B:166:0x03c5, B:172:0x0418, B:174:0x041c, B:175:0x0420, B:177:0x042b, B:180:0x048a, B:190:0x04b5, B:189:0x04b2), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x04a0 A[Catch: all -> 0x03bb, Exception -> 0x04b0, TryCatch #0 {Exception -> 0x04b0, blocks: (B:181:0x048f, B:183:0x04a0, B:185:0x04a8), top: B:202:0x048f }] */
    /* JADX WARN: Code duplicated, block: B:185:0x04a8 A[Catch: all -> 0x03bb, Exception -> 0x04b0, TRY_LEAVE, TryCatch #0 {Exception -> 0x04b0, blocks: (B:181:0x048f, B:183:0x04a0, B:185:0x04a8), top: B:202:0x048f }] */
    /* JADX WARN: Code duplicated, block: B:207:0x0458 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x007d A[Catch: Exception -> 0x0064, all -> 0x03bb, TRY_ENTER, TryCatch #16 {all -> 0x03bb, blocks: (B:9:0x0038, B:11:0x003e, B:13:0x004a, B:18:0x006b, B:20:0x007d, B:22:0x0093, B:27:0x009f, B:28:0x00a3, B:55:0x0142, B:57:0x0148, B:59:0x0153, B:64:0x015c, B:67:0x016b, B:74:0x0181, B:76:0x018e, B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:90:0x020e, B:92:0x0212, B:93:0x0216, B:97:0x0221, B:99:0x0228, B:101:0x0230, B:106:0x023e, B:107:0x024d, B:109:0x0255, B:111:0x025d, B:112:0x0260, B:114:0x026e, B:116:0x0272, B:118:0x027c, B:120:0x0292, B:121:0x0298, B:123:0x029e, B:124:0x02aa, B:125:0x02b3, B:127:0x02c9, B:129:0x02d1, B:130:0x02d6, B:135:0x02fc, B:137:0x0304, B:139:0x030c, B:140:0x031a, B:142:0x031e, B:144:0x034f, B:143:0x0333, B:134:0x02f9, B:145:0x0373, B:146:0x037f, B:148:0x0390, B:150:0x0398, B:155:0x03a5, B:154:0x03a2, B:159:0x03b2, B:82:0x01f0, B:166:0x03c5, B:167:0x03e1, B:169:0x0404, B:172:0x0418, B:174:0x041c, B:175:0x0420, B:177:0x042b, B:179:0x0458, B:180:0x048a, B:181:0x048f, B:183:0x04a0, B:185:0x04a8, B:190:0x04b5, B:189:0x04b2, B:79:0x01e2, B:71:0x0176, B:69:0x0171, B:73:0x017c, B:63:0x0159, B:32:0x00cf, B:34:0x00e1, B:36:0x00f7, B:41:0x0103, B:43:0x0108, B:45:0x011a, B:47:0x0130, B:52:0x013c), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:216:0x0148 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0176 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cf A[Catch: all -> 0x03bb, Exception -> 0x03c0, TRY_ENTER, TRY_LEAVE, TryCatch #13 {Exception -> 0x03c0, blocks: (B:9:0x0038, B:11:0x003e, B:18:0x006b, B:32:0x00cf, B:43:0x0108), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e1 A[Catch: Exception -> 0x0064, all -> 0x03bb, TRY_ENTER, TryCatch #16 {all -> 0x03bb, blocks: (B:9:0x0038, B:11:0x003e, B:13:0x004a, B:18:0x006b, B:20:0x007d, B:22:0x0093, B:27:0x009f, B:28:0x00a3, B:55:0x0142, B:57:0x0148, B:59:0x0153, B:64:0x015c, B:67:0x016b, B:74:0x0181, B:76:0x018e, B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:90:0x020e, B:92:0x0212, B:93:0x0216, B:97:0x0221, B:99:0x0228, B:101:0x0230, B:106:0x023e, B:107:0x024d, B:109:0x0255, B:111:0x025d, B:112:0x0260, B:114:0x026e, B:116:0x0272, B:118:0x027c, B:120:0x0292, B:121:0x0298, B:123:0x029e, B:124:0x02aa, B:125:0x02b3, B:127:0x02c9, B:129:0x02d1, B:130:0x02d6, B:135:0x02fc, B:137:0x0304, B:139:0x030c, B:140:0x031a, B:142:0x031e, B:144:0x034f, B:143:0x0333, B:134:0x02f9, B:145:0x0373, B:146:0x037f, B:148:0x0390, B:150:0x0398, B:155:0x03a5, B:154:0x03a2, B:159:0x03b2, B:82:0x01f0, B:166:0x03c5, B:167:0x03e1, B:169:0x0404, B:172:0x0418, B:174:0x041c, B:175:0x0420, B:177:0x042b, B:179:0x0458, B:180:0x048a, B:181:0x048f, B:183:0x04a0, B:185:0x04a8, B:190:0x04b5, B:189:0x04b2, B:79:0x01e2, B:71:0x0176, B:69:0x0171, B:73:0x017c, B:63:0x0159, B:32:0x00cf, B:34:0x00e1, B:36:0x00f7, B:41:0x0103, B:43:0x0108, B:45:0x011a, B:47:0x0130, B:52:0x013c), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0102  */
    /* JADX WARN: Code duplicated, block: B:43:0x0108 A[Catch: all -> 0x03bb, Exception -> 0x03c0, TRY_ENTER, TRY_LEAVE, TryCatch #13 {Exception -> 0x03c0, blocks: (B:9:0x0038, B:11:0x003e, B:18:0x006b, B:32:0x00cf, B:43:0x0108), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x011a A[Catch: Exception -> 0x0064, all -> 0x03bb, TRY_ENTER, TryCatch #16 {all -> 0x03bb, blocks: (B:9:0x0038, B:11:0x003e, B:13:0x004a, B:18:0x006b, B:20:0x007d, B:22:0x0093, B:27:0x009f, B:28:0x00a3, B:55:0x0142, B:57:0x0148, B:59:0x0153, B:64:0x015c, B:67:0x016b, B:74:0x0181, B:76:0x018e, B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:90:0x020e, B:92:0x0212, B:93:0x0216, B:97:0x0221, B:99:0x0228, B:101:0x0230, B:106:0x023e, B:107:0x024d, B:109:0x0255, B:111:0x025d, B:112:0x0260, B:114:0x026e, B:116:0x0272, B:118:0x027c, B:120:0x0292, B:121:0x0298, B:123:0x029e, B:124:0x02aa, B:125:0x02b3, B:127:0x02c9, B:129:0x02d1, B:130:0x02d6, B:135:0x02fc, B:137:0x0304, B:139:0x030c, B:140:0x031a, B:142:0x031e, B:144:0x034f, B:143:0x0333, B:134:0x02f9, B:145:0x0373, B:146:0x037f, B:148:0x0390, B:150:0x0398, B:155:0x03a5, B:154:0x03a2, B:159:0x03b2, B:82:0x01f0, B:166:0x03c5, B:167:0x03e1, B:169:0x0404, B:172:0x0418, B:174:0x041c, B:175:0x0420, B:177:0x042b, B:179:0x0458, B:180:0x048a, B:181:0x048f, B:183:0x04a0, B:185:0x04a8, B:190:0x04b5, B:189:0x04b2, B:79:0x01e2, B:71:0x0176, B:69:0x0171, B:73:0x017c, B:63:0x0159, B:32:0x00cf, B:34:0x00e1, B:36:0x00f7, B:41:0x0103, B:43:0x0108, B:45:0x011a, B:47:0x0130, B:52:0x013c), top: B:215:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x013b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0141  */
    /* JADX WARN: Code duplicated, block: B:59:0x0153 A[Catch: Exception -> 0x0157, all -> 0x03bb, TRY_LEAVE, TryCatch #8 {Exception -> 0x0157, blocks: (B:57:0x0148, B:59:0x0153), top: B:216:0x0148 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x018e A[Catch: Exception -> 0x00cb, all -> 0x03bb, TRY_LEAVE, TryCatch #2 {Exception -> 0x00cb, blocks: (B:28:0x00a3, B:55:0x0142, B:64:0x015c, B:74:0x0181, B:76:0x018e, B:69:0x0171, B:73:0x017c, B:63:0x0159), top: B:205:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01e2 A[Catch: Exception -> 0x0207, all -> 0x03bb, TryCatch #15 {Exception -> 0x0207, blocks: (B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:82:0x01f0, B:79:0x01e2), top: B:229:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01eb A[Catch: Exception -> 0x0207, all -> 0x03bb, TryCatch #15 {Exception -> 0x0207, blocks: (B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:82:0x01f0, B:79:0x01e2), top: B:229:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01f0 A[Catch: Exception -> 0x0207, all -> 0x03bb, TryCatch #15 {Exception -> 0x0207, blocks: (B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:82:0x01f0, B:79:0x01e2), top: B:229:0x018c }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01fa A[Catch: Exception -> 0x0207, all -> 0x03bb, TRY_LEAVE, TryCatch #15 {Exception -> 0x0207, blocks: (B:78:0x01bc, B:81:0x01eb, B:83:0x01f4, B:85:0x01fa, B:82:0x01f0, B:79:0x01e2), top: B:229:0x018c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:177:0x042b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:183:0x04a0, please report this as an issue */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        Throwable th;
        int i10;
        Exception exc;
        String strS;
        String str;
        a aVar;
        File file;
        int i11;
        String str2;
        String str3;
        long j10;
        boolean z10;
        boolean z11;
        File file2;
        String strC;
        boolean z12;
        String strD;
        boolean z13;
        String str4 = "]::";
        super.run();
        g1.f("UNAndroidZIPThread", "UNZIPThread called.");
        g1.d("UNAndroidZIPThread", "start run");
        File file3 = new File(this.f73202d.getPath());
        int i12 = (APKUtils.K(this.f73202d) || APKUtils.P(this.f73202d)) ? 1 : 0;
        try {
            try {
                try {
                    if (file3.exists()) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (this.f73202d.get_from_type() != 1) {
                            try {
                                t.l(this.f73201c).l1(this.f73202d.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73201c).getUid(), i12);
                                if (this.f73202d.getRomType().equals(Dtype.androidobb.name())) {
                                    i iVarQ = i.q();
                                    if (!this.f73202d.getFileType().equals(Dtype.MOD.name()) || APKUtils.P(this.f73202d)) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    strS = iVarQ.t(z13);
                                    try {
                                        o0.l(new File(strS + net.lingala.zip4j.util.e.F0 + this.f73202d.getPackageName()).getAbsolutePath(), false);
                                    } catch (Exception e10) {
                                        e = e10;
                                        str4 = str4;
                                        exc = e;
                                        exc.printStackTrace();
                                        t.l(this.f73201c).h2(this.f73202d.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73201c).getUid(), i12);
                                        try {
                                            t tVarL = t.l(this.f73201c);
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("zip error[gameId=");
                                            sb2.append(this.f73202d.getCrc_link_type_val());
                                            sb2.append(",size=");
                                            sb2.append(file3.length());
                                            str = str4;
                                            try {
                                                sb2.append(str);
                                                sb2.append(m.c(exc));
                                                tVarL.N1(sb2.toString());
                                            } catch (Exception unused) {
                                            }
                                        } catch (Exception unused2) {
                                            str = str4;
                                        }
                                        aVar = this.f73205g;
                                        if (aVar != null) {
                                            aVar.a(false);
                                        }
                                        if (UtilsMy.y2(this.f73201c, this.f73202d, false)) {
                                            try {
                                                t.l(this.f73201c).N1("zip error[gameId=" + this.f73202d.getCrc_link_type_val() + ",size=" + file3.length() + str + m.c(exc));
                                            } catch (Exception unused3) {
                                            }
                                        } else {
                                            t.l(this.f73201c).N1("zip...空间不足 gameId=" + this.f73202d.getCrc_link_type_val());
                                            this.f73201c.sendBroadcast(new Intent(p5.a.f96215q));
                                        }
                                        g1.d("UNAndroidZIPThread", "failed1");
                                        try {
                                            file = new File(strS, this.f73202d.getPackageName());
                                            if (file.exists()) {
                                                for (File file4 : file.listFiles()) {
                                                    UtilsMy.delete(file4);
                                                }
                                            }
                                        } catch (Exception e11) {
                                            e11.printStackTrace();
                                        }
                                        j.f().t(this.f73202d);
                                        this.f73202d.set_from_type(0);
                                    }
                                } else if (this.f73202d.getRomType().equals(Dtype.androiddata.name())) {
                                    i iVarQ2 = i.q();
                                    if (!this.f73202d.getFileType().equals(Dtype.MOD.name()) || APKUtils.P(this.f73202d)) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    strS = iVarQ2.r(z11);
                                } else if (this.f73202d.getRomType().equals(Dtype.androidobbdata.name())) {
                                    i iVarQ3 = i.q();
                                    if (!this.f73202d.getFileType().equals(Dtype.MOD.name()) || APKUtils.P(this.f73202d)) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    strS = iVarQ3.s(z10);
                                } else {
                                    strS = null;
                                }
                                if (!TextUtils.isEmpty(strS)) {
                                    try {
                                        file2 = new File(strS);
                                        if (!file2.exists()) {
                                            file2.mkdirs();
                                        }
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                if (this.f73202d.getSize() > 2147483648L) {
                                    try {
                                        strC = x.c(file3, strS);
                                        z12 = true;
                                    } catch (Exception unused4) {
                                        strC = s3.b(file3, strS);
                                        z12 = false;
                                    }
                                } else {
                                    try {
                                        strC = s3.b(file3, strS);
                                        z12 = false;
                                    } catch (Exception unused5) {
                                        strC = x.c(file3, strS);
                                        z12 = true;
                                    }
                                }
                                try {
                                    if (this.f73202d.getSize() >= 104857600) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(z.f50178q);
                                        String str5 = File.separator;
                                        sb3.append(str5);
                                        sb3.append(this.f73202d.getPackageName());
                                        File file5 = new File(sb3.toString());
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(z.f50179r);
                                        sb4.append(str5);
                                        sb4.append(this.f73202d.getPackageName());
                                        a aVar2 = new a(file5, new File(sb4.toString()), new File(strC));
                                        this.f73205g = aVar2;
                                        aVar2.start();
                                    } else {
                                        this.f73203e = true;
                                    }
                                    if (z12) {
                                        strD = x.f(this, file3, strS);
                                    } else {
                                        strD = s3.d(this, file3, strS);
                                    }
                                    if (t2.i(strD)) {
                                        this.f73202d.setGameZipPath(strD);
                                    }
                                    j10 = jCurrentTimeMillis;
                                    String str6 = strS;
                                    str3 = strD;
                                    str2 = str6;
                                } catch (Exception e13) {
                                    e = e13;
                                    exc = e;
                                    exc.printStackTrace();
                                    t.l(this.f73201c).h2(this.f73202d.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73201c).getUid(), i12);
                                    t tVarL2 = t.l(this.f73201c);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("zip error[gameId=");
                                    sb5.append(this.f73202d.getCrc_link_type_val());
                                    sb5.append(",size=");
                                    sb5.append(file3.length());
                                    str = str4;
                                    sb5.append(str);
                                    sb5.append(m.c(exc));
                                    tVarL2.N1(sb5.toString());
                                    aVar = this.f73205g;
                                    if (aVar != null) {
                                        aVar.a(false);
                                    }
                                    if (UtilsMy.y2(this.f73201c, this.f73202d, false)) {
                                        t.l(this.f73201c).N1("zip...空间不足 gameId=" + this.f73202d.getCrc_link_type_val());
                                        this.f73201c.sendBroadcast(new Intent(p5.a.f96215q));
                                    } else {
                                        t.l(this.f73201c).N1("zip error[gameId=" + this.f73202d.getCrc_link_type_val() + ",size=" + file3.length() + str + m.c(exc));
                                    }
                                    g1.d("UNAndroidZIPThread", "failed1");
                                    file = new File(strS, this.f73202d.getPackageName());
                                    if (file.exists()) {
                                        while (i11 < r3) {
                                            UtilsMy.delete(file4);
                                        }
                                    }
                                    j.f().t(this.f73202d);
                                }
                            } catch (Exception e14) {
                                e = e14;
                                str4 = str4;
                                strS = null;
                                exc = e;
                                exc.printStackTrace();
                                t.l(this.f73201c).h2(this.f73202d.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73201c).getUid(), i12);
                                t tVarL3 = t.l(this.f73201c);
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("zip error[gameId=");
                                sb6.append(this.f73202d.getCrc_link_type_val());
                                sb6.append(",size=");
                                sb6.append(file3.length());
                                str = str4;
                                sb6.append(str);
                                sb6.append(m.c(exc));
                                tVarL3.N1(sb6.toString());
                                aVar = this.f73205g;
                                if (aVar != null) {
                                    aVar.a(false);
                                }
                                if (UtilsMy.y2(this.f73201c, this.f73202d, false)) {
                                    t.l(this.f73201c).N1("zip...空间不足 gameId=" + this.f73202d.getCrc_link_type_val());
                                    this.f73201c.sendBroadcast(new Intent(p5.a.f96215q));
                                } else {
                                    t.l(this.f73201c).N1("zip error[gameId=" + this.f73202d.getCrc_link_type_val() + ",size=" + file3.length() + str + m.c(exc));
                                }
                                g1.d("UNAndroidZIPThread", "failed1");
                                file = new File(strS, this.f73202d.getPackageName());
                                if (file.exists()) {
                                    while (i11 < r3) {
                                        UtilsMy.delete(file4);
                                    }
                                }
                                j.f().t(this.f73202d);
                                this.f73202d.set_from_type(0);
                            }
                        } else {
                            if (this.f73202d.getRomType().equals(Dtype.androidobb.name())) {
                                i iVarQ4 = i.q();
                                if (this.f73202d.getFileType().equals(Dtype.MOD.name())) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                strS = iVarQ4.t(z13);
                                o0.l(new File(strS + net.lingala.zip4j.util.e.F0 + this.f73202d.getPackageName()).getAbsolutePath(), false);
                            } else if (this.f73202d.getRomType().equals(Dtype.androiddata.name())) {
                                i iVarQ5 = i.q();
                                if (this.f73202d.getFileType().equals(Dtype.MOD.name())) {
                                    z11 = true;
                                } else {
                                    z11 = true;
                                }
                                strS = iVarQ5.r(z11);
                            } else if (this.f73202d.getRomType().equals(Dtype.androidobbdata.name())) {
                                i iVarQ6 = i.q();
                                if (this.f73202d.getFileType().equals(Dtype.MOD.name())) {
                                    z10 = true;
                                } else {
                                    z10 = true;
                                }
                                strS = iVarQ6.s(z10);
                            } else {
                                strS = null;
                            }
                            if (!TextUtils.isEmpty(strS)) {
                                file2 = new File(strS);
                                if (!file2.exists()) {
                                    file2.mkdirs();
                                }
                            }
                            if (this.f73202d.getSize() > 2147483648L) {
                                strC = x.c(file3, strS);
                                z12 = true;
                            } else {
                                strC = s3.b(file3, strS);
                                z12 = false;
                            }
                            if (this.f73202d.getSize() >= 104857600) {
                                StringBuilder sb7 = new StringBuilder();
                                sb7.append(z.f50178q);
                                String str7 = File.separator;
                                sb7.append(str7);
                                sb7.append(this.f73202d.getPackageName());
                                File file6 = new File(sb7.toString());
                                StringBuilder sb8 = new StringBuilder();
                                sb8.append(z.f50179r);
                                sb8.append(str7);
                                sb8.append(this.f73202d.getPackageName());
                                a aVar3 = new a(file6, new File(sb8.toString()), new File(strC));
                                this.f73205g = aVar3;
                                aVar3.start();
                            } else {
                                this.f73203e = true;
                            }
                            if (z12) {
                                strD = x.f(this, file3, strS);
                            } else {
                                strD = s3.d(this, file3, strS);
                            }
                            if (t2.i(strD)) {
                                this.f73202d.setGameZipPath(strD);
                            }
                            j10 = jCurrentTimeMillis;
                            String str8 = strS;
                            str3 = strD;
                            str2 = str8;
                        }
                        this.f73202d.set_from_type(0);
                    }
                    str2 = null;
                    str3 = null;
                    j10 = -1;
                    a aVar4 = this.f73205g;
                    if (aVar4 != null) {
                        aVar4.a(false);
                    }
                    if (this.f73203e) {
                        try {
                            File file7 = new File(str3);
                            if (str3 != null && !"".equals(str3) && file7.exists()) {
                                if (j10 != -1) {
                                    this.f73202d.setZipCost(file3.length() / (System.currentTimeMillis() - j10));
                                }
                                if (!APKUtils.K(this.f73202d) && !APKUtils.P(this.f73202d)) {
                                    UtilsMy.delete(file3);
                                }
                                this.f73202d.setGameZipPath(str3);
                                if (this.f73202d.get_from_type() != 1) {
                                    DownloadTask downloadTask = this.f73202d;
                                    if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getPath()) && this.f73202d.getPath().toLowerCase().contains("/Quark/Download".toLowerCase())) {
                                        String ext = this.f73202d.getExt();
                                        try {
                                            if (!TextUtils.isEmpty(ext)) {
                                                new JSONObject(ext).put("qkPosition", "qk");
                                            }
                                        } catch (Exception unused6) {
                                        }
                                    }
                                    q.b(this.f73201c, this.f73202d, Event.gameDownload);
                                }
                                this.f73202d.setProgress(100L);
                                UtilsMy.T4(this.f73202d);
                                if (!APKUtils.K(this.f73202d) && !APKUtils.P(this.f73202d)) {
                                    this.f73202d.setStatus(11);
                                }
                                try {
                                    this.f73202d.setId(q5.f.M().G(this.f73202d.getCrc_link_type_val()).getId());
                                    q5.f.M().update(this.f73202d);
                                } catch (Exception e15) {
                                    e15.printStackTrace();
                                }
                                if (!APKUtils.K(this.f73202d) && !APKUtils.P(this.f73202d)) {
                                    org.greenrobot.eventbus.c.f().q(new r(this.f73202d, 11));
                                }
                                if (this.f73204f) {
                                    org.greenrobot.eventbus.c.f().q(new e0(7, this.f73202d.getCrc_link_type_val()));
                                    s.v(this.f73202d.getCrc_link_type_val());
                                } else {
                                    Intent intent = new Intent();
                                    intent.setAction(p5.a.f96209n);
                                    intent.putExtra("apkpath", str3);
                                    this.f73201c.sendBroadcast(intent);
                                }
                                UtilsMy.X3(this.f73201c, this.f73202d, 5);
                                j.f().n(this.f73202d.getCrc_link_type_val());
                                j.f().o(this.f73202d.getCrc_link_type_val());
                                this.f73202d.set_from_type(0);
                                return;
                            }
                            this.f73202d.setStatus(13);
                            g1.d("UNAndroidZIPThread", "failed2");
                            try {
                                File file8 = new File(str2, this.f73202d.getPackageName());
                                if (file8.exists()) {
                                    for (File file9 : file8.listFiles()) {
                                        UtilsMy.delete(file9);
                                    }
                                }
                            } catch (Exception e16) {
                                e16.printStackTrace();
                            }
                            j.f().t(this.f73202d);
                        } catch (Exception e17) {
                            e17.printStackTrace();
                        }
                    }
                } catch (Exception e18) {
                    try {
                        e18.printStackTrace();
                    } catch (Throwable th2) {
                        i10 = 0;
                        th = th2;
                        this.f73202d.set_from_type(i10);
                        throw th;
                    }
                }
            } catch (Exception e19) {
                str4 = str4;
                exc = e19;
                strS = null;
            }
            this.f73202d.set_from_type(0);
        } catch (Throwable th3) {
            th = th3;
            i10 = 0;
            this.f73202d.set_from_type(i10);
            throw th;
        }
    }

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73206b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File f73207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File f73208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        File f73209e;

        public a(File file, File fileApk) {
            this.f73207c = file;
            this.f73209e = fileApk;
        }

        public void a(boolean monitor) {
            this.f73206b = monitor;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0045 A[Catch: InterruptedException -> 0x006e, TryCatch #0 {InterruptedException -> 0x006e, blocks: (B:3:0x0003, B:4:0x0018, B:8:0x001f, B:9:0x0021, B:13:0x002c, B:15:0x0045, B:16:0x0066, B:12:0x0027), top: B:21:0x0003 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10;
            super.run();
            try {
                Random random = new Random();
                int iNextInt = random.nextInt(10) + 50;
                int iNextInt2 = random.nextInt(10) + 80;
                int i11 = 0;
                int i12 = 0;
                while (this.f73206b) {
                    if (i11 < 3) {
                        i10 = iNextInt / 3;
                    } else {
                        if (i11 < 15) {
                            i10 = (iNextInt2 - iNextInt) / 12;
                        }
                        e.this.f73202d.setProgress(i12);
                        UtilsMy.T4(e.this.f73202d);
                        if (e.this.f73204f) {
                            org.greenrobot.eventbus.c.f().q(new e0(6, e.this.f73202d.getCrc_link_type_val(), e.this.f73202d.getProgress()));
                        }
                        Thread.sleep(1000L);
                        i11++;
                    }
                    i12 += i10;
                    e.this.f73202d.setProgress(i12);
                    UtilsMy.T4(e.this.f73202d);
                    if (e.this.f73204f) {
                        org.greenrobot.eventbus.c.f().q(new e0(6, e.this.f73202d.getCrc_link_type_val(), e.this.f73202d.getProgress()));
                    }
                    Thread.sleep(1000L);
                    i11++;
                }
            } catch (InterruptedException e10) {
                e10.printStackTrace();
                e.this.a();
            }
        }

        public a(File file, File fileData, File fileApk) {
            this.f73207c = file;
            this.f73208d = fileData;
            this.f73209e = fileApk;
        }
    }

    public e(DownloadTask downoadTask, Context mContext, boolean isTransfer) {
        this.f73200b = "UNAndroidZIPThread";
        this.f73203e = true;
        this.f73205g = null;
        this.f73202d = downoadTask;
        this.f73201c = mContext;
        this.f73204f = isTransfer;
    }
}
