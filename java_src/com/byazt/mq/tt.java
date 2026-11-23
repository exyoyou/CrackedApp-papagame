package com.byazt.mq;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 13})
public class tt {
    public static tt tt;
    public final Map<String, c> ve = new ConcurrentHashMap();
    public final Map<PluginBroadcastReceiver, BroadcastReceiver> uj = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<Integer> f16962c = new CopyOnWriteArraySet();

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 194})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16963c;
        public final Set<PluginBroadcastReceiver> tt = new CopyOnWriteArraySet();

        public void c(Context context, Intent intent) {
            Set<PluginBroadcastReceiver> set = this.tt;
            if (set == null || set.size() <= 0) {
                return;
            }
            for (PluginBroadcastReceiver pluginBroadcastReceiver : this.tt) {
                if (pluginBroadcastReceiver != null) {
                    try {
                        pluginBroadcastReceiver.onReceive(context, intent);
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "plugin-receiver->action:" + (intent != null ? intent.getAction() : "") + "[exception]:", th);
                    }
                }
            }
        }

        public void registerReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                this.tt.add(pluginBroadcastReceiver);
            }
        }

        public void unregisterReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                try {
                    if (this.tt.size() > 0) {
                        this.tt.remove(pluginBroadcastReceiver);
                    }
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-plugin-receiver->action:" + this.f16963c + "[exception]:", th);
                }
            }
        }
    }

    private tt() {
    }

    public static tt c() {
        if (tt == null) {
            synchronized (com.byazt.p000if.c.class) {
                if (tt == null) {
                    tt = new tt();
                }
            }
        }
        return tt;
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            return (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 2);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) ? context.registerReceiver(broadcastReceiverProxy, intentFilter) : context.registerReceiver(broadcastReceiverProxy, intentFilter, 2);
        this.uj.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        c(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public void unregisterReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver) {
        Iterator<Map.Entry<String, c>> it2 = this.ve.entrySet().iterator();
        while (it2.hasNext()) {
            c value = it2.next().getValue();
            if (value != null) {
                value.unregisterReceiver(pluginBroadcastReceiver);
            }
            BroadcastReceiver broadcastReceiver = this.uj.get(pluginBroadcastReceiver);
            if (broadcastReceiver != null) {
                try {
                    this.f16962c.remove(Integer.valueOf(broadcastReceiver.hashCode()));
                    this.uj.remove(pluginBroadcastReceiver);
                    context.unregisterReceiver(broadcastReceiver);
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-移除系统注册的广播发生异常:", th);
                }
            }
        }
    }

    public boolean c(int i10) {
        return this.f16962c.contains(Integer.valueOf(i10));
    }

    private void c(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return;
        }
        Iterator<String> itActionsIterator = intentFilter.actionsIterator();
        while (itActionsIterator.hasNext()) {
            String next = itActionsIterator.next();
            if (next != null) {
                c cVar = this.ve.get(next);
                if (cVar != null) {
                    cVar.registerReceiver(pluginBroadcastReceiver);
                } else {
                    c cVar2 = new c();
                    cVar2.f16963c = next;
                    cVar2.registerReceiver(pluginBroadcastReceiver);
                    this.ve.put(next, cVar2);
                }
            }
        }
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        Intent intentRegisterReceiver;
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (Build.VERSION.SDK_INT >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        if (Build.VERSION.SDK_INT >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
            intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, str, handler, 2);
        } else {
            intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, str, handler);
        }
        this.uj.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        if (handler != null) {
            this.f16962c.add(Integer.valueOf(broadcastReceiverProxy.hashCode()));
        }
        c(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public void c(Context context, Intent intent) {
        c value;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        Map<String, c> map = this.ve;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, c> entry : this.ve.entrySet()) {
            if (action.equals(entry.getKey()) && (value = entry.getValue()) != null) {
                value.c(context, intent);
            }
        }
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, int i10) {
        int i11;
        if (intentFilter == null || intentFilter.actionsIterator() == null || (i11 = Build.VERSION.SDK_INT) < 26) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (i11 >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, i10);
        this.uj.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        c(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }

    public Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
        int i11;
        if (intentFilter == null || intentFilter.actionsIterator() == null || (i11 = Build.VERSION.SDK_INT) < 26) {
            return null;
        }
        if (pluginBroadcastReceiver == null) {
            if (i11 >= 34 && context.getApplicationInfo().targetSdkVersion >= 34) {
                return context.registerReceiver(null, intentFilter, 2);
            }
            return context.registerReceiver(null, intentFilter);
        }
        BroadcastReceiverProxy broadcastReceiverProxy = new BroadcastReceiverProxy();
        Intent intentRegisterReceiver = context.registerReceiver(broadcastReceiverProxy, intentFilter, str, handler, i10);
        this.uj.put(pluginBroadcastReceiver, broadcastReceiverProxy);
        if (handler != null) {
            this.f16962c.add(Integer.valueOf(broadcastReceiverProxy.hashCode()));
        }
        c(intentFilter, pluginBroadcastReceiver);
        return intentRegisterReceiver;
    }
}
