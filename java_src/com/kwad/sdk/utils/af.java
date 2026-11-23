package com.kwad.sdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.bytedance.pangle.LocalBroadcastManager;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class af {
    private static af bpk;
    private static final Object mLock = new Object();
    private final Context bpg;
    private final HashMap<BroadcastReceiver, ArrayList<b>> bph = new HashMap<>();
    private final HashMap<String, ArrayList<b>> bpi = new HashMap<>();
    private final ArrayList<a> bpj = new ArrayList<>();
    private final Handler jk;

    static final class a {
        final ArrayList<b> bpm;
        final Intent intent;

        a(Intent intent, ArrayList<b> arrayList) {
            this.intent = intent;
            this.bpm = arrayList;
        }
    }

    static final class b {
        final BroadcastReceiver bpn;
        boolean bpo;
        boolean bpp;
        final IntentFilter filter;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.bpn = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.bpn);
            sb2.append(" filter=");
            sb2.append(this.filter);
            if (this.bpp) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private af(Context context) {
        this.bpg = context;
        this.jk = new Handler(context.getMainLooper()) { // from class: com.kwad.sdk.utils.af.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    af.this.UR();
                }
            }
        };
    }

    public static af dj(Context context) {
        af afVar;
        synchronized (mLock) {
            if (bpk == null) {
                bpk = new af(context.getApplicationContext());
            }
            afVar = bpk;
        }
        return afVar;
    }

    final void UR() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.bph) {
                size = this.bpj.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.bpj.toArray(aVarArr);
                this.bpj.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                a aVar = aVarArr[i10];
                int size2 = aVar.bpm.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    b bVar = aVar.bpm.get(i11);
                    if (!bVar.bpp) {
                        bVar.bpn.onReceive(this.bpg, aVar.intent);
                    }
                }
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.bph) {
            b bVar = new b(intentFilter, broadcastReceiver);
            ArrayList<b> arrayList = this.bph.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.bph.put(broadcastReceiver, arrayList);
            }
            arrayList.add(bVar);
            for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                String action = intentFilter.getAction(i10);
                ArrayList<b> arrayList2 = this.bpi.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.bpi.put(action, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public final boolean i(Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<b> arrayList2;
        String str2;
        String str3;
        synchronized (this.bph) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.bpg.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z10 = (intent.getFlags() & 8) != 0;
            if (z10) {
                StringBuilder sb2 = new StringBuilder("Resolving type ");
                sb2.append(strResolveTypeIfNeeded);
                sb2.append(" scheme ");
                sb2.append(scheme);
                sb2.append(" of intent ");
                sb2.append(intent);
            }
            ArrayList<b> arrayList3 = this.bpi.get(intent.getAction());
            if (arrayList3 != null) {
                if (z10) {
                    new StringBuilder("Action list: ").append(arrayList3);
                }
                ArrayList arrayList4 = null;
                int i11 = 0;
                while (i11 < arrayList3.size()) {
                    b bVar = arrayList3.get(i11);
                    if (z10) {
                        new StringBuilder("Matching against filter ").append(bVar.filter);
                    }
                    if (bVar.bpo) {
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
                        int iMatch = bVar.filter.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG);
                        if (iMatch >= 0) {
                            if (z10) {
                                new StringBuilder("  Filter matched!  match=0x").append(Integer.toHexString(iMatch));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(bVar);
                            bVar.bpo = true;
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
                            new StringBuilder("  Filter did not match: ").append(str3);
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
                        ((b) arrayList5.get(i12)).bpo = false;
                    }
                    this.bpj.add(new a(intent, arrayList5));
                    if (!this.jk.hasMessages(1)) {
                        this.jk.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.bph) {
            ArrayList<b> arrayListRemove = this.bph.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                b bVar = arrayListRemove.get(size);
                bVar.bpp = true;
                for (int i10 = 0; i10 < bVar.filter.countActions(); i10++) {
                    String action = bVar.filter.getAction(i10);
                    ArrayList<b> arrayList = this.bpi.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            b bVar2 = arrayList.get(size2);
                            if (bVar2.bpn == broadcastReceiver) {
                                bVar2.bpp = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.bpi.remove(action);
                        }
                    }
                }
            }
        }
    }
}
