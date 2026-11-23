package com.beizi.fusion.tool;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.bytedance.pangle.LocalBroadcastManager;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ab {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f10319f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ab f10320g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<b>> f10322b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f10323c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<a> f10324d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f10325e;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f10327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<b> f10328b;

        a(Intent intent, ArrayList<b> arrayList) {
            this.f10327a = intent;
            this.f10328b = arrayList;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f10329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f10330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f10331c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f10332d;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f10329a = intentFilter;
            this.f10330b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.f10330b);
            sb2.append(" filter=");
            sb2.append(this.f10329a);
            if (this.f10332d) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private ab(Context context) {
        this.f10321a = context;
        this.f10325e = new Handler(context.getMainLooper()) { // from class: com.beizi.fusion.tool.ab.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    ab.this.a();
                }
            }
        };
    }

    @NonNull
    public static ab a(@NonNull Context context) {
        ab abVar;
        synchronized (f10319f) {
            if (f10320g == null) {
                f10320g = new ab(context.getApplicationContext());
            }
            abVar = f10320g;
        }
        return abVar;
    }

    public void a(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f10322b) {
            try {
                b bVar = new b(intentFilter, broadcastReceiver);
                ArrayList<b> arrayList = this.f10322b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f10322b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                    String action = intentFilter.getAction(i10);
                    ArrayList<b> arrayList2 = this.f10323c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.f10323c.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f10322b) {
            try {
                ArrayList<b> arrayListRemove = this.f10322b.remove(broadcastReceiver);
                if (arrayListRemove == null) {
                    return;
                }
                for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                    b bVar = arrayListRemove.get(size);
                    bVar.f10332d = true;
                    for (int i10 = 0; i10 < bVar.f10329a.countActions(); i10++) {
                        String action = bVar.f10329a.getAction(i10);
                        ArrayList<b> arrayList = this.f10323c.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                b bVar2 = arrayList.get(size2);
                                if (bVar2.f10330b == broadcastReceiver) {
                                    bVar2.f10332d = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.f10323c.remove(action);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public boolean a(@NonNull Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<b> arrayList2;
        String str2;
        String str3;
        synchronized (this.f10322b) {
            try {
                try {
                    String action = intent.getAction();
                    String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f10321a.getContentResolver());
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
                    ArrayList<b> arrayList3 = this.f10323c.get(intent.getAction());
                    if (arrayList3 != null) {
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
                                sb4.append(bVar.f10329a);
                            }
                            if (bVar.f10331c) {
                                i10 = i11;
                                arrayList2 = arrayList3;
                                str = action;
                                str2 = strResolveTypeIfNeeded;
                                arrayList = arrayList4;
                            } else {
                                i10 = i11;
                                str = action;
                                arrayList = arrayList4;
                                arrayList2 = arrayList3;
                                str2 = strResolveTypeIfNeeded;
                                int iMatch = bVar.f10329a.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG);
                                if (iMatch >= 0) {
                                    if (z10) {
                                        StringBuilder sb5 = new StringBuilder();
                                        sb5.append("  Filter matched!  match=0x");
                                        sb5.append(Integer.toHexString(iMatch));
                                    }
                                    arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                                    arrayList4.add(bVar);
                                    bVar.f10331c = true;
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
                                action = str;
                                arrayList3 = arrayList2;
                                strResolveTypeIfNeeded = str2;
                            }
                            arrayList4 = arrayList;
                            i11 = i10 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            strResolveTypeIfNeeded = str2;
                        }
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList5 != null) {
                            for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                                ((b) arrayList5.get(i12)).f10331c = false;
                            }
                            this.f10324d.add(new a(intent, arrayList5));
                            if (!this.f10325e.hasMessages(1)) {
                                this.f10325e.sendEmptyMessage(1);
                            }
                            return true;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f10322b) {
                size = this.f10324d.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.f10324d.toArray(aVarArr);
                this.f10324d.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                a aVar = aVarArr[i10];
                int size2 = aVar.f10328b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    b bVar = aVar.f10328b.get(i11);
                    if (!bVar.f10332d) {
                        bVar.f10330b.onReceive(this.f10321a, aVar.f10327a);
                    }
                }
            }
        }
    }
}
