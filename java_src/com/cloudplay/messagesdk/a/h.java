package com.cloudplay.messagesdk.a;

import android.os.FileObserver;
import android.text.TextUtils;
import com.cloudplay.messagesdk.entity.ObserverItem;
import com.cloudplay.messagesdk.listener.ConfigObserver;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class h extends FileObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConfigObserver f23708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<ObserverItem> f23709c;

    public h(String str, int i10, List<ObserverItem> list, ConfigObserver configObserver) {
        super(str, i10);
        this.f23708b = configObserver;
        this.f23709c = list;
        this.f23707a = str;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, String str) {
        e.a("SingleFileObserver", "onEvent() event:" + i10 + ",path:" + this.f23707a + ",file:" + str);
        List<ObserverItem> list = this.f23709c;
        if (list == null || list.isEmpty()) {
            e.b("SingleFileObserver", "onEvent() watch source list empty");
            return;
        }
        for (ObserverItem observerItem : this.f23709c) {
            if (TextUtils.equals(observerItem.getConfigFile(), str)) {
                e.a("SingleFileObserver", "onEvent() event:" + i10 + ",path:" + this.f23707a + ",file:" + str);
                ConfigObserver configObserver = this.f23708b;
                if (configObserver != null) {
                    configObserver.notify(observerItem.getConfigType());
                }
            }
        }
    }
}
