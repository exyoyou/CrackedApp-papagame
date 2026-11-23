package com.xinzhu.overmind.server.content;

import android.database.IContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.xinzhu.overmind.server.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class b extends com.xinzhu.overmind.server.content.a.b implements g {
    public static final String TAG = "b";
    private static final b sService = new b();
    private final C1131b mRootNode = new C1131b("");
    private final Object mSyncManagerLock = new Object();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final C1131b f89647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IContentObserver f89648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f89649c;

        a(C1131b c1131b, IContentObserver iContentObserver, boolean z10) {
            this.f89647a = c1131b;
            this.f89648b = iContentObserver;
            this.f89649c = z10;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.content.b$b, reason: collision with other inner class name */
    public static final class C1131b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f89650d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f89651e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f89652f = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f89653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<C1131b> f89654b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ArrayList<a> f89655c = new ArrayList<>();

        /* JADX INFO: renamed from: com.xinzhu.overmind.server.content.b$b$a */
        private class a implements IBinder.DeathRecipient {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final IContentObserver f89656b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f89657c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final int f89658d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final boolean f89659e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final int f89660f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private final Object f89661g;

            public a(IContentObserver iContentObserver, boolean z10, Object obj, int i10, int i11, int i12) {
                this.f89661g = obj;
                this.f89656b = iContentObserver;
                this.f89657c = i10;
                this.f89658d = i11;
                this.f89660f = i12;
                this.f89659e = z10;
                try {
                    iContentObserver.asBinder().linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    binderDied();
                }
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (this.f89661g) {
                    C1131b.this.h(this.f89656b);
                }
            }
        }

        public C1131b(String str) {
            this.f89653a = str;
        }

        private void b(Uri uri, int i10, IContentObserver iContentObserver, boolean z10, Object obj, int i11, int i12, int i13) {
            if (i10 == f(uri)) {
                this.f89655c.add(new a(iContentObserver, z10, obj, i11, i12, i13));
                return;
            }
            String strG = g(uri, i10);
            if (strG == null) {
                throw new IllegalArgumentException("Invalid Uri (" + uri + ") used for observer");
            }
            int size = this.f89654b.size();
            for (int i14 = 0; i14 < size; i14++) {
                C1131b c1131b = this.f89654b.get(i14);
                if (c1131b.f89653a.equals(strG)) {
                    c1131b.b(uri, i10 + 1, iContentObserver, z10, obj, i11, i12, i13);
                    return;
                }
            }
            C1131b c1131b2 = new C1131b(strG);
            this.f89654b.add(c1131b2);
            c1131b2.b(uri, i10 + 1, iContentObserver, z10, obj, i11, i12, i13);
        }

        private void d(boolean z10, IContentObserver iContentObserver, boolean z11, int i10, ArrayList<a> arrayList) {
            int size = this.f89655c.size();
            IBinder iBinderAsBinder = iContentObserver == null ? null : iContentObserver.asBinder();
            for (int i11 = 0; i11 < size; i11++) {
                a aVar = this.f89655c.get(i11);
                boolean z12 = aVar.f89656b.asBinder() == iBinderAsBinder;
                if ((!z12 || z11) && ((i10 == -1 || aVar.f89660f == -1 || i10 == aVar.f89660f) && (z10 || aVar.f89659e))) {
                    arrayList.add(new a(this, aVar.f89656b, z12));
                }
            }
        }

        private int f(Uri uri) {
            if (uri == null) {
                return 0;
            }
            return uri.getPathSegments().size() + 1;
        }

        private String g(Uri uri, int i10) {
            if (uri != null) {
                return i10 == 0 ? uri.getAuthority() : uri.getPathSegments().get(i10 - 1);
            }
            return null;
        }

        public void c(Uri uri, IContentObserver iContentObserver, boolean z10, Object obj, int i10, int i11, int i12) {
            b(uri, 0, iContentObserver, z10, obj, i10, i11, i12);
        }

        public void e(Uri uri, int i10, IContentObserver iContentObserver, boolean z10, int i11, ArrayList<a> arrayList) {
            String str;
            if (i10 >= f(uri)) {
                d(true, iContentObserver, z10, i11, arrayList);
                str = null;
            } else {
                String strG = g(uri, i10);
                d(false, iContentObserver, z10, i11, arrayList);
                str = strG;
            }
            int size = this.f89654b.size();
            for (int i12 = 0; i12 < size; i12++) {
                C1131b c1131b = this.f89654b.get(i12);
                if (str == null || c1131b.f89653a.equals(str)) {
                    c1131b.e(uri, i10 + 1, iContentObserver, z10, i11, arrayList);
                    if (str != null) {
                        return;
                    }
                }
            }
        }

        public boolean h(IContentObserver iContentObserver) {
            int size = this.f89654b.size();
            int i10 = 0;
            while (i10 < size) {
                if (this.f89654b.get(i10).h(iContentObserver)) {
                    this.f89654b.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
            IBinder iBinderAsBinder = iContentObserver.asBinder();
            int size2 = this.f89655c.size();
            for (int i11 = 0; i11 < size2; i11++) {
                a aVar = this.f89655c.get(i11);
                if (aVar.f89656b.asBinder() == iBinderAsBinder) {
                    this.f89655c.remove(i11);
                    iBinderAsBinder.unlinkToDeath(aVar, 0);
                    break;
                }
            }
            return this.f89654b.size() == 0 && this.f89655c.size() == 0;
        }
    }

    public static b get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.content.a
    public void notifyChange(Uri uri, IContentObserver iContentObserver, boolean z10, boolean z11, int i10, int i11) {
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Notifying update of ");
            sb2.append(uri);
            sb2.append(" for user ");
            sb2.append(i10);
            sb2.append(" from observer ");
            sb2.append(iContentObserver);
            sb2.append(", syncToNetwork ");
            sb2.append(z11);
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ArrayList<a> arrayList = new ArrayList<>();
            synchronized (this.mRootNode) {
                this.mRootNode.e(uri, 0, iContentObserver, z10, i10, arrayList);
            }
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                a aVar = arrayList.get(i12);
                try {
                    aVar.f89648b.onChange(aVar.f89649c, uri, i10);
                    if (Log.isLoggable(TAG, 2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Notified ");
                        sb3.append(aVar.f89648b);
                        sb3.append(" of update at ");
                        sb3.append(uri);
                    }
                } catch (RemoteException unused) {
                    synchronized (this.mRootNode) {
                        IBinder iBinderAsBinder = aVar.f89648b.asBinder();
                        ArrayList arrayList2 = aVar.f89647a.f89655c;
                        int size2 = arrayList2.size();
                        int i13 = 0;
                        while (i13 < size2) {
                            if (((C1131b.a) arrayList2.get(i13)).f89656b.asBinder() == iBinderAsBinder) {
                                arrayList2.remove(i13);
                                i13--;
                                size2--;
                            }
                            i13++;
                        }
                    }
                }
                throw th;
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    @Override // com.xinzhu.overmind.server.content.a.b, android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        try {
            return super.onTransact(i10, parcel, parcel2, i11);
        } catch (RuntimeException e10) {
            if (!(e10 instanceof SecurityException)) {
                e10.printStackTrace();
            }
            throw e10;
        }
    }

    @Override // com.xinzhu.overmind.server.content.a
    public void registerContentObserver(Uri uri, boolean z10, IContentObserver iContentObserver, int i10, int i11) {
        if (iContentObserver == null || uri == null) {
            throw new IllegalArgumentException("You must pass a valid uri and observer");
        }
        synchronized (this.mRootNode) {
            C1131b c1131b = this.mRootNode;
            c1131b.c(uri, iContentObserver, z10, c1131b, i11, Binder.getCallingPid(), i10);
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.content.a
    public void unregisterContentObserver(IContentObserver iContentObserver) {
        if (iContentObserver == null) {
            throw new IllegalArgumentException("You must pass a valid observer");
        }
        synchronized (this.mRootNode) {
            this.mRootNode.h(iContentObserver);
        }
    }
}
