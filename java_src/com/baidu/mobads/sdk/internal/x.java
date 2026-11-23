package com.baidu.mobads.sdk.internal;

import java.util.Observer;

/* JADX INFO: loaded from: classes6.dex */
public interface x {

    public enum a {
        NONE(-1, "未开始"),
        INITING(0, "下载准备中"),
        DOWNLOADING(1, "正在下载"),
        CANCELLED(2, "已取消下载"),
        COMPLETED(3, "下载完成"),
        ERROR(4, "下载失败"),
        COMPLETE_BUT_FILE_REMOVED(5, "下载完但文件异常"),
        PAUSED(6, "已暂停下载");


        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f8053i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f8054j;

        a(int i10, String str) {
            this.f8053i = i10;
            this.f8054j = str;
        }

        public int b() {
            return this.f8053i;
        }

        public String c() {
            return this.f8054j;
        }
    }

    void a();

    void a(boolean z10);

    void addObserver(Observer observer);

    void b();

    void c();

    void d();

    String e();

    String f();

    String g();

    String h();

    String i();

    int j();

    float k();

    a l();

    void m();

    boolean n();
}
