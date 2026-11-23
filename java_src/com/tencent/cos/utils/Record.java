package com.tencent.cos.utils;

import android.util.Log;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class Record {
    private String level;
    private String msg;
    private String tag;
    private String threadName;
    private Throwable throwable;
    private long timestamp = System.currentTimeMillis();
    private long threadId = Thread.currentThread().getId();

    public Record(String str, String str2, String str3, Throwable th) {
        this.threadName = null;
        this.level = str2;
        this.tag = str;
        this.msg = str3;
        this.throwable = th;
        this.threadName = Thread.currentThread().getName();
    }

    public long getLength() {
        String str = this.msg;
        return (str != null ? str.length() : 0) + 40;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.level);
        sb2.append(e.F0);
        sb2.append(TimesUtils.timeUtils(this.timestamp, "yyyy-MM-dd HH:mm:ss"));
        sb2.append("[");
        sb2.append(this.threadName + " " + this.threadId);
        sb2.append("]");
        sb2.append("[");
        sb2.append(this.tag);
        sb2.append("]");
        sb2.append("[");
        sb2.append(this.msg);
        sb2.append("]");
        if (this.throwable != null) {
            sb2.append(" * Exception :\n");
            sb2.append(Log.getStackTraceString(this.throwable));
        }
        sb2.append("\n");
        return sb2.toString();
    }
}
