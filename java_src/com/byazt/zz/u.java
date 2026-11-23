package com.byazt.zz;

import android.app.Notification;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.nb;
import com.byazt.c.yv;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public interface u {
    int a(int i10);

    void a();

    int c(String str, String str2);

    List<DownloadInfo> c(String str);

    void c();

    void c(int i10);

    void c(int i10, int i11);

    void c(int i10, int i11, int i12, int i13);

    void c(int i10, int i11, int i12, long j10);

    void c(int i10, int i11, long j10);

    void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10);

    void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10, boolean z11);

    void c(int i10, long j10);

    void c(int i10, Notification notification);

    void c(int i10, yv yvVar);

    void c(int i10, List<com.byazt.t.tt> list);

    void c(int i10, boolean z10);

    void c(nb nbVar);

    void c(DownloadTask downloadTask);

    void c(com.byazt.t.tt ttVar);

    void c(List<String> list);

    void c(boolean z10, boolean z11);

    boolean c(DownloadInfo downloadInfo);

    void da(int i10);

    List<com.byazt.t.tt> i(int i10);

    boolean m(int i10);

    IDownloadFileUriProvider my(int i10);

    long n(int i10);

    List<DownloadInfo> n(String str);

    boolean n();

    yv nu(int i10);

    eo rh(int i10);

    void sl(int i10);

    boolean sp();

    boolean sp(int i10);

    void startService();

    boolean t(int i10);

    DownloadInfo tt(String str, String str2);

    List<DownloadInfo> tt(String str);

    void tt(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10);

    void tt(int i10, List<com.byazt.t.tt> list);

    void tt(int i10, boolean z10);

    void tt(DownloadInfo downloadInfo);

    void tt(DownloadTask downloadTask);

    void tt(List<String> list);

    boolean tt();

    boolean tt(int i10);

    int u(int i10);

    List<DownloadInfo> uj();

    List<DownloadInfo> uj(String str);

    void uj(int i10);

    List<DownloadInfo> ve(String str);

    void ve(int i10);

    void ve(int i10, boolean z10);

    boolean ve();

    boolean ve(DownloadInfo downloadInfo);

    DownloadInfo x(int i10);

    boolean yp(int i10);

    void z(int i10);
}
