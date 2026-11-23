package com.xinzhu.overmind.server.os;

import android.app.NotificationManager;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.util.HashSet;

/* JADX INFO: loaded from: classes8.dex */
public class h extends c.b implements com.xinzhu.overmind.server.g {
    public static final String TAG = "h";
    private static h sService = new h();
    HashSet<a> cached_notifications = new HashSet<>();
    private NotificationManager mNotificationManager = (NotificationManager) Overmind.getContext().getSystemService("notification");

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f89726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f89727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f89728c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f89729d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f89730e;

        public a(String str, int i10, int i11, String str2) {
            this.f89726a = str;
            this.f89727b = i10;
            this.f89728c = i11;
            this.f89729d = str2;
            String str3 = "stub_noti_" + this.f89726a + "_" + this.f89727b + "_";
            if (this.f89729d == null) {
                this.f89730e = str3;
                return;
            }
            this.f89730e = str3 + this.f89729d;
        }
    }

    public static h get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.os.c
    public String solveAddNotification(String str, int i10, int i11, String str2) throws RemoteException {
        for (a aVar : this.cached_notifications) {
            if (ObjectsWrapper.equals(aVar.f89729d, str2) && aVar.f89728c == i11 && aVar.f89726a.equals(str) && aVar.f89727b == i10) {
                return aVar.f89730e;
            }
        }
        com.xinzhu.overmind.b.c(TAG, "CachedNotificationInfo " + str + " " + str2);
        a aVar2 = new a(str, i10, i11, str2);
        this.cached_notifications.add(aVar2);
        return aVar2.f89730e;
    }

    @Override // com.xinzhu.overmind.server.os.c
    public void solveCancelAllNotifications(String str, int i10) throws RemoteException {
        for (a aVar : this.cached_notifications) {
            if (aVar.f89726a.equals(str) && aVar.f89727b == i10) {
                this.mNotificationManager.cancel(aVar.f89730e, aVar.f89728c);
                this.cached_notifications.remove(aVar);
            }
        }
    }

    @Override // com.xinzhu.overmind.server.os.c
    public String solveCancelNotification(String str, int i10, int i11, String str2) throws RemoteException {
        for (a aVar : this.cached_notifications) {
            if (ObjectsWrapper.equals(aVar.f89729d, str2) && aVar.f89728c == i11 && aVar.f89726a.equals(str) && aVar.f89727b == i10) {
                this.cached_notifications.remove(aVar);
                return aVar.f89730e;
            }
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }
}
