package com.cloudplay.messagesdk.a;

import com.cloudplay.messagesdk.entity.FileObserverBean;
import com.cloudplay.messagesdk.listener.ConfigObserver;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<h> f23698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConfigObserver f23699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<FileObserverBean> f23700c;

    public f(List<FileObserverBean> list, ConfigObserver configObserver) {
        this.f23699b = configObserver;
        this.f23700c = list;
    }

    public void a() {
        if (this.f23698a != null || this.f23700c == null) {
            return;
        }
        this.f23698a = new ArrayList();
        for (FileObserverBean fileObserverBean : this.f23700c) {
            h hVar = new h(fileObserverBean.getPath(), fileObserverBean.getMask(), fileObserverBean.getFilters(), this.f23699b);
            hVar.startWatching();
            this.f23698a.add(hVar);
        }
    }

    public void b() {
        if (this.f23698a != null) {
            for (int i10 = 0; i10 < this.f23698a.size(); i10++) {
                this.f23698a.get(i10).stopWatching();
            }
            this.f23698a.clear();
            this.f23698a = null;
        }
    }
}
