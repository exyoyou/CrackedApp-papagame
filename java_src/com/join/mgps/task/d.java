package com.join.mgps.task;

import android.content.Context;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f73194g = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f73196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<com.join.mgps.event.h> f73197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f73198e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f73199f = true;

    public d(Context mContext, boolean onlyReachable, long timeInterval) {
        this.f73197d = null;
        this.f73195b = mContext;
        this.f73196c = onlyReachable;
        this.f73197d = new ArrayList();
        this.f73198e = timeInterval;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ScanApClientThread: mTime::");
        sb2.append(this.f73198e);
    }

    public ArrayList<com.join.mgps.event.h> a(boolean onlyReachables) throws Throwable {
        ArrayList<com.join.mgps.event.h> arrayList;
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    arrayList = new ArrayList<>();
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/net/arp"));
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                String[] strArrSplit = line.split(" +");
                                if (strArrSplit != null && strArrSplit.length >= 4) {
                                    String str = strArrSplit[3];
                                    String str2 = strArrSplit[0];
                                    if (str.matches("..:..:..:..:..:..")) {
                                        boolean zC = c(strArrSplit[0]);
                                        if (!zC) {
                                            zC = InetAddress.getByName(strArrSplit[0]).isReachable(3000);
                                        }
                                        if (!onlyReachables || zC) {
                                            arrayList.add(new com.join.mgps.event.h(zC, str, str2));
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                                bufferedReader = bufferedReader2;
                                bufferedReader.close();
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                }
                                throw th;
                            }
                        }
                        bufferedReader2.close();
                    } catch (Exception unused3) {
                    }
                } catch (IOException unused4) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            arrayList = null;
        }
        return arrayList;
    }

    void b() {
        com.join.mgps.event.h hVar = new com.join.mgps.event.h();
        hVar.f(false);
        org.greenrobot.eventbus.c.f().q(hVar);
    }

    public boolean c(String addr) {
        try {
            Process processExec = Runtime.getRuntime().exec("ping  -c 1 -W 1 " + addr);
            try {
                processExec.waitFor();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            return processExec.exitValue() == 0;
        } catch (IOException unused) {
            return false;
        }
    }

    public void d(boolean b10) {
        this.f73199f = b10;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f73199f) {
            try {
                this.f73197d = a(this.f73196c);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("run: 数量");
                sb2.append(this.f73197d.size());
                org.greenrobot.eventbus.c.f().q(this.f73197d);
                Thread.sleep(this.f73198e);
            } catch (InterruptedException e10) {
                Thread.interrupted();
                e10.printStackTrace();
            }
        }
    }
}
