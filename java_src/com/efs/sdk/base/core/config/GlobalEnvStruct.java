package com.efs.sdk.base.core.config;

import android.content.Context;
import android.os.Message;
import android.util.Pair;
import android.webkit.ValueCallback;
import com.efs.sdk.base.observer.IEfsReporterObserver;
import com.efs.sdk.base.processor.action.ILogEncryptAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class GlobalEnvStruct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f26282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f26283b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f26289h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ILogEncryptAction f26294m;
    public Context mAppContext;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f26284c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f26285d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f26286e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f26287f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f26288g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f26290i = false;
    public long configRefreshDelayMills = 5000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f26291j = 10000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f26292k = 10000;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, String> f26293l = new HashMap(5);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ConcurrentHashMap<Integer, List<ValueCallback<Pair<Message, Message>>>> f26295n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<IEfsReporterObserver> f26296o = new ArrayList(5);

    public void addConfigObserver(IEfsReporterObserver iEfsReporterObserver) {
        if (this.f26296o.contains(iEfsReporterObserver)) {
            return;
        }
        this.f26296o.add(iEfsReporterObserver);
    }

    public void addPublicParams(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        HashMap map2 = new HashMap(this.f26293l);
        map2.putAll(map);
        this.f26293l = map2;
    }

    public String getAppid() {
        return this.f26282a;
    }

    public List<ValueCallback<Pair<Message, Message>>> getCallback(int i10) {
        return (!this.f26295n.containsKey(Integer.valueOf(i10)) || this.f26295n.get(Integer.valueOf(i10)) == null) ? Collections.emptyList() : this.f26295n.get(Integer.valueOf(i10));
    }

    public List<IEfsReporterObserver> getEfsReporterObservers() {
        return this.f26296o;
    }

    public ILogEncryptAction getLogEncryptAction() {
        return this.f26294m;
    }

    public long getLogSendDelayMills() {
        return this.f26291j;
    }

    public long getLogSendIntervalMills() {
        return this.f26292k;
    }

    public Map<String, String> getPublicParamMap() {
        Map<String, String> map = this.f26293l;
        return map == null ? Collections.emptyMap() : map;
    }

    public String getSecret() {
        return this.f26283b;
    }

    public String getUid() {
        return this.f26289h;
    }

    public boolean isDebug() {
        return this.f26286e;
    }

    public boolean isEnableSendLog() {
        return this.f26285d;
    }

    public boolean isEnableWaStat() {
        return this.f26284c;
    }

    public boolean isIntl() {
        return this.f26290i;
    }

    public boolean isPrintLogDetail() {
        return this.f26288g;
    }

    public void registerCallback(int i10, ValueCallback<Pair<Message, Message>> valueCallback) {
        if (valueCallback == null) {
            return;
        }
        List<ValueCallback<Pair<Message, Message>>> linkedList = this.f26295n.get(Integer.valueOf(i10));
        if (linkedList == null) {
            linkedList = new LinkedList<>();
            this.f26295n.putIfAbsent(Integer.valueOf(i10), linkedList);
        }
        linkedList.add(valueCallback);
    }

    public void setAppid(String str) {
        this.f26282a = str;
    }

    public void setDebug(boolean z10) {
        this.f26286e = z10;
    }

    public void setEnableSendLog(boolean z10) {
        this.f26285d = z10;
    }

    public void setEnableWaStat(boolean z10) {
        this.f26284c = z10;
    }

    public void setIsIntl(boolean z10) {
        this.f26290i = z10;
    }

    public void setLogEncryptAction(ILogEncryptAction iLogEncryptAction) {
        this.f26294m = iLogEncryptAction;
    }

    public void setPrintLogDetail(boolean z10) {
        this.f26288g = z10;
    }

    public void setSecret(String str) {
        this.f26283b = str;
    }

    public void setUid(String str) {
        this.f26289h = str;
    }
}
