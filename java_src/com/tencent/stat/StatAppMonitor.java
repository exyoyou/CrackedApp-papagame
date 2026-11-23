package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
public class StatAppMonitor implements Cloneable {
    public static final int FAILURE_RESULT_TYPE = 1;
    public static final int LOGIC_FAILURE_RESULT_TYPE = 2;
    public static final int SUCCESS_RESULT_TYPE = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f83761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f83762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f83763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f83764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f83765f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f83766g;

    public StatAppMonitor(String str) {
        this.f83761b = 0L;
        this.f83762c = 0L;
        this.f83763d = 0;
        this.f83764e = 0L;
        this.f83765f = 0;
        this.f83766g = 1;
        this.f83760a = str;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public StatAppMonitor m42clone() {
        try {
            return (StatAppMonitor) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getInterfaceName() {
        return this.f83760a;
    }

    public long getMillisecondsConsume() {
        return this.f83764e;
    }

    public long getReqSize() {
        return this.f83761b;
    }

    public long getRespSize() {
        return this.f83762c;
    }

    public int getResultType() {
        return this.f83763d;
    }

    public int getReturnCode() {
        return this.f83765f;
    }

    public int getSampling() {
        return this.f83766g;
    }

    public void setInterfaceName(String str) {
        this.f83760a = str;
    }

    public void setMillisecondsConsume(long j10) {
        this.f83764e = j10;
    }

    public void setReqSize(long j10) {
        this.f83761b = j10;
    }

    public void setRespSize(long j10) {
        this.f83762c = j10;
    }

    public void setResultType(int i10) {
        this.f83763d = i10;
    }

    public void setReturnCode(int i10) {
        this.f83765f = i10;
    }

    public void setSampling(int i10) {
        if (i10 <= 0) {
            i10 = 1;
        }
        this.f83766g = i10;
    }

    public StatAppMonitor(String str, int i10, int i11, long j10, long j11, long j12, int i12) {
        this.f83760a = str;
        this.f83761b = j10;
        this.f83762c = j11;
        this.f83763d = i10;
        this.f83764e = j12;
        this.f83765f = i11;
        this.f83766g = i12;
    }
}
