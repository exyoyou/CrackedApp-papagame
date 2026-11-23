package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83829a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f83830l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f83831m;

    public d(Context context, int i10, int i11, Throwable th) {
        super(context, i10);
        this.f83831m = 100;
        if (th != null) {
            Throwable th2 = new Throwable(th);
            try {
                StackTraceElement[] stackTrace = th2.getStackTrace();
                if (stackTrace != null) {
                    int length = stackTrace.length;
                    int i12 = this.f83831m;
                    if (length > i12) {
                        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i12];
                        for (int i13 = 0; i13 < this.f83831m; i13++) {
                            stackTraceElementArr[i13] = stackTrace[i13];
                        }
                        th2.setStackTrace(stackTraceElementArr);
                    }
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th2.printStackTrace(printWriter);
            this.f83829a = stringWriter.toString();
            this.f83830l = i11;
            printWriter.close();
        }
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.ERROR;
    }

    public d(Context context, int i10, String str, int i11, int i12) {
        super(context, i10);
        this.f83831m = 100;
        if (str != null) {
            i12 = i12 <= 0 ? StatConfig.getMaxReportEventLength() : i12;
            if (str.length() <= i12) {
                this.f83829a = str;
            } else {
                this.f83829a = str.substring(0, i12);
            }
        }
        this.f83830l = i11;
    }

    public void a(long j10) {
        this.f83834c = j10;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        com.tencent.stat.common.k.a(jSONObject, "er", this.f83829a);
        jSONObject.put("ea", this.f83830l);
        return true;
    }
}
