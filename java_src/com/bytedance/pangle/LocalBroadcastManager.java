package com.bytedance.pangle;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.Keep;
import com.byazt.bog.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public final class LocalBroadcastManager {
    public static final boolean DEBUG = false;
    public static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    public static final String TAG = "LocalBroadcastManager";
    public static LocalBroadcastManager mInstance;
    public static final Object mLock = new Object();
    public final Context mAppContext;
    public final Handler mHandler;
    public final HashMap<PluginBroadcastReceiver, ArrayList<tt>> mReceivers = new HashMap<>();
    public final HashMap<String, ArrayList<tt>> mActions = new HashMap<>();
    public final ArrayList<c> mPendingBroadcasts = new ArrayList<>();

    @com.byazt.zqa.c(c = {0, 80, MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD, 1543})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Intent f23301c;
        public final ArrayList<tt> tt;

        public c(Intent intent, ArrayList<tt> arrayList) {
            this.f23301c = intent;
            this.tt = arrayList;
        }
    }

    @com.byazt.zqa.c(c = {0, 80, MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD, 800})
    private static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final IntentFilter f23302c;
        public final PluginBroadcastReceiver tt;
        public boolean uj;
        public boolean ve;

        public tt(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
            this.f23302c = intentFilter;
            this.tt = pluginBroadcastReceiver;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.tt);
            sb2.append(" filter=");
            sb2.append(this.f23302c);
            if (this.uj) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: com.bytedance.pangle.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                }
            }
        };
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    public void executePendingBroadcasts() {
        int size;
        c[] cVarArr;
        while (true) {
            synchronized (this.mReceivers) {
                size = this.mPendingBroadcasts.size();
                if (size <= 0) {
                    return;
                }
                cVarArr = new c[size];
                this.mPendingBroadcasts.toArray(cVarArr);
                this.mPendingBroadcasts.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                c cVar = cVarArr[i10];
                int size2 = cVar.tt.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    tt ttVar = cVar.tt.get(i11);
                    if (!ttVar.uj) {
                        ttVar.tt.onReceive(this.mAppContext, cVar.f23301c);
                    }
                }
            }
        }
    }

    public void registerReceiver(PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            tt ttVar = new tt(intentFilter, pluginBroadcastReceiver);
            ArrayList<tt> arrayList = this.mReceivers.get(pluginBroadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.mReceivers.put(pluginBroadcastReceiver, arrayList);
            }
            arrayList.add(ttVar);
            for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                String action = intentFilter.getAction(i10);
                ArrayList<tt> arrayList2 = this.mActions.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.mActions.put(action, arrayList2);
                }
                arrayList2.add(ttVar);
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<tt> arrayList2;
        String str2;
        String str3;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z10 = (intent.getFlags() & 8) != 0;
            if (z10) {
                a.c(TAG, "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<tt> arrayList3 = this.mActions.get(intent.getAction());
            if (arrayList3 != null) {
                if (z10) {
                    a.c(TAG, "Action list: ".concat(String.valueOf(arrayList3)));
                }
                ArrayList arrayList4 = null;
                int i11 = 0;
                while (i11 < arrayList3.size()) {
                    tt ttVar = arrayList3.get(i11);
                    if (z10) {
                        a.c(TAG, "Matching against filter " + ttVar.f23302c);
                    }
                    if (ttVar.ve) {
                        if (z10) {
                            a.c(TAG, "  Filter's target already added");
                        }
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
                        int iMatch = ttVar.f23302c.match(action, strResolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (iMatch >= 0) {
                            if (z10) {
                                a.c(TAG, "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(ttVar);
                            ttVar.ve = true;
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
                            a.c(TAG, "  Filter did not match: ".concat(str3));
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
                        ((tt) arrayList5.get(i12)).ve = false;
                    }
                    this.mPendingBroadcasts.add(new c(intent, arrayList5));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList<tt> arrayListRemove = this.mReceivers.remove(pluginBroadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                tt ttVar = arrayListRemove.get(size);
                ttVar.uj = true;
                for (int i10 = 0; i10 < ttVar.f23302c.countActions(); i10++) {
                    String action = ttVar.f23302c.getAction(i10);
                    ArrayList<tt> arrayList = this.mActions.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            tt ttVar2 = arrayList.get(size2);
                            if (ttVar2.tt == pluginBroadcastReceiver) {
                                ttVar2.uj = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }
}
