package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f78920a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f78921b = "LocalBroadcastManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f78922c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f78923d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ai f78924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f78925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<b>> f78926g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f78927h = new HashMap<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayList<a> f78928i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Handler f78929j = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.base.common.ai.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                ai.this.a();
            } else {
                super.handleMessage(msg);
            }
        }
    };

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f78931a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<b> f78932b;

        a(Intent _intent, ArrayList<b> _receivers) {
            this.f78931a = _intent;
            this.f78932b = _receivers;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f78933a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f78934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f78935c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f78936d;

        b(IntentFilter _filter, BroadcastReceiver _receiver) {
            this.f78933a = _filter;
            this.f78934b = _receiver;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.f78934b);
            sb2.append(" filter=");
            sb2.append(this.f78933a);
            if (this.f78936d) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private ai(Context context) {
        this.f78925f = context;
    }

    public static ai a(Context context) {
        ai aiVar;
        synchronized (f78923d) {
            if (f78924e == null) {
                f78924e = new ai(context.getApplicationContext());
            }
            aiVar = f78924e;
        }
        return aiVar;
    }

    public void b(Intent intent) {
        if (a(intent)) {
            a();
        }
    }

    void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f78926g) {
                size = this.f78928i.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.f78928i.toArray(aVarArr);
                this.f78928i.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                a aVar = aVarArr[i10];
                int size2 = aVar.f78932b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    b bVar = aVar.f78932b.get(i11);
                    if (!bVar.f78936d) {
                        bVar.f78934b.onReceive(this.f78925f, aVar.f78931a);
                    }
                }
            }
        }
    }

    public void a(BroadcastReceiver receiver) {
        synchronized (this.f78926g) {
            ArrayList<b> arrayListRemove = this.f78926g.remove(receiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                b bVar = arrayListRemove.get(size);
                bVar.f78936d = true;
                for (int i10 = 0; i10 < bVar.f78933a.countActions(); i10++) {
                    String action = bVar.f78933a.getAction(i10);
                    ArrayList<b> arrayList = this.f78927h.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            b bVar2 = arrayList.get(size2);
                            if (bVar2.f78934b == receiver) {
                                bVar2.f78936d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f78927h.remove(action);
                        }
                    }
                }
            }
        }
    }

    public void a(BroadcastReceiver receiver, IntentFilter filter) {
        synchronized (this.f78926g) {
            b bVar = new b(filter, receiver);
            ArrayList<b> arrayList = this.f78926g.get(receiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f78926g.put(receiver, arrayList);
            }
            arrayList.add(bVar);
            for (int i10 = 0; i10 < filter.countActions(); i10++) {
                String action = filter.getAction(i10);
                ArrayList<b> arrayList2 = this.f78927h.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f78927h.put(action, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public boolean a(Intent intent) {
        return a(intent, 0);
    }

    public boolean a(Intent intent, int delay) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<b> arrayList2;
        String str2;
        Uri uri;
        String str3;
        synchronized (this.f78926g) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f78925f.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z10 = (intent.getFlags() & 8) != 0;
            if (z10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Resolving type ");
                sb2.append(strResolveTypeIfNeeded);
                sb2.append(" scheme ");
                sb2.append(scheme);
                sb2.append(" of intent ");
                sb2.append(intent);
            }
            ArrayList<b> arrayList3 = this.f78927h.get(intent.getAction());
            if (arrayList3 == null) {
                return false;
            }
            if (z10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Action list: ");
                sb3.append(arrayList3);
            }
            ArrayList arrayList4 = null;
            int i11 = 0;
            while (i11 < arrayList3.size()) {
                b bVar = arrayList3.get(i11);
                if (z10) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Matching against filter ");
                    sb4.append(bVar.f78933a);
                }
                if (bVar.f78935c) {
                    i10 = i11;
                    arrayList2 = arrayList3;
                    str = action;
                    str2 = strResolveTypeIfNeeded;
                    uri = data;
                    arrayList = arrayList4;
                } else {
                    i10 = i11;
                    str = action;
                    arrayList = arrayList4;
                    arrayList2 = arrayList3;
                    str2 = strResolveTypeIfNeeded;
                    uri = data;
                    int iMatch = bVar.f78933a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                    if (iMatch >= 0) {
                        if (z10) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("  Filter matched! match=0x");
                            sb5.append(Integer.toHexString(iMatch));
                        }
                        arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                        arrayList4.add(bVar);
                        bVar.f78935c = true;
                    } else if (z10) {
                        if (iMatch == -4) {
                            str3 = PointParamKey.CATEGORY;
                        } else if (iMatch == -3) {
                            str3 = "action";
                        } else if (iMatch != -2) {
                            str3 = iMatch != -1 ? "unknown reason" : "type";
                        } else {
                            str3 = "data";
                        }
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("  Filter did not match: ");
                        sb6.append(str3);
                    }
                    i11 = i10 + 1;
                    data = uri;
                    action = str;
                    arrayList3 = arrayList2;
                    strResolveTypeIfNeeded = str2;
                }
                arrayList4 = arrayList;
                i11 = i10 + 1;
                data = uri;
                action = str;
                arrayList3 = arrayList2;
                strResolveTypeIfNeeded = str2;
            }
            ArrayList arrayList5 = arrayList4;
            if (arrayList5 == null) {
                return false;
            }
            for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                ((b) arrayList5.get(i12)).f78935c = false;
            }
            this.f78928i.add(new a(intent, arrayList5));
            if (!this.f78929j.hasMessages(1)) {
                if (delay > 0) {
                    this.f78929j.sendEmptyMessageDelayed(1, delay);
                } else {
                    this.f78929j.sendEmptyMessage(1);
                }
            }
            return true;
        }
    }
}
