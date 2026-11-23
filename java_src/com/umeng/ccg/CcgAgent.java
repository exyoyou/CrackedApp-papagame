package com.umeng.ccg;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class CcgAgent {
    private static Map<String, ArrayList<String>> forbidSdkTable;
    private static Object lock = new Object();
    private static ArrayList<ConfigListener> callbacks = new ArrayList<>();
    private static Object actionInfoLock = new Object();
    private static Map<String, ActionInfo> actionInfoTable = new HashMap();

    static {
        HashMap map = new HashMap();
        forbidSdkTable = map;
        map.put(a.f84978e, new ArrayList());
        forbidSdkTable.put(a.f84977d, new ArrayList<>());
        forbidSdkTable.put(a.f84975b, new ArrayList<>());
        forbidSdkTable.put(a.f84976c, new ArrayList<>());
    }

    public static ActionInfo getActionInfo(String str) {
        ActionInfo actionInfo = null;
        if (!TextUtils.isEmpty(str)) {
            synchronized (actionInfoLock) {
                actionInfo = actionInfoTable.containsKey(str) ? actionInfoTable.get(str) : null;
            }
        }
        return actionInfo;
    }

    public static String[] getCollectItemList() {
        return new String[]{a.f84978e, a.f84977d, a.f84975b, a.f84976c};
    }

    public static ArrayList<String> getForbidSdkArray(String str) {
        if (forbidSdkTable.containsKey(str)) {
            return forbidSdkTable.get(str);
        }
        return null;
    }

    public static ArrayList<String> getRegistedModuleList() {
        ArrayList<String> arrayList;
        synchronized (actionInfoLock) {
            arrayList = new ArrayList<>(actionInfoTable.keySet());
        }
        return arrayList;
    }

    public static boolean hasRegistedActionInfo() {
        boolean z10;
        synchronized (actionInfoLock) {
            z10 = actionInfoTable.size() > 0;
        }
        return z10;
    }

    public static void init(Context context) {
        d.a().a(context);
    }

    public static void notifyConfigReady(JSONObject jSONObject) {
        synchronized (lock) {
            int size = callbacks.size();
            if (size > 0) {
                for (int i10 = 0; i10 < size; i10++) {
                    callbacks.get(i10).onConfigReady(jSONObject);
                }
            }
        }
    }

    public static void registerActionInfo(ActionInfo actionInfo) {
        Context appContext = UMGlobalContext.getAppContext();
        if (actionInfo != null) {
            synchronized (actionInfoLock) {
                try {
                    String module = actionInfo.getModule(UMGlobalContext.getAppContext());
                    if (!TextUtils.isEmpty(module) && !actionInfoTable.containsKey(module)) {
                        String[] supportAction = actionInfo.getSupportAction(appContext);
                        if (supportAction != null) {
                            for (String str : supportAction) {
                                boolean switchState = actionInfo.getSwitchState(appContext, str);
                                if (forbidSdkTable.containsKey(str)) {
                                    ArrayList<String> arrayList = forbidSdkTable.get(str);
                                    if (!switchState) {
                                        arrayList.add(module);
                                    }
                                }
                            }
                        }
                        actionInfoTable.put(module, actionInfo);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static void registerConfigListener(ConfigListener configListener) {
        if (configListener != null) {
            synchronized (lock) {
                callbacks.add(configListener);
            }
        }
    }
}
