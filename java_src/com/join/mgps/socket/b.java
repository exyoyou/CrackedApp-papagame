package com.join.mgps.socket;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.m;
import com.join.mgps.socket.entity.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f72934b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f72935c = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.join.mgps.socket.a f72936a = com.join.mgps.socket.a.b();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f72937a = new b();

        private a() {
        }
    }

    public static List<List<DownloadTask>> c(List<DownloadTask> targe, int size) {
        int i10;
        ArrayList arrayList = new ArrayList();
        int size2 = targe.size() % size == 0 ? targe.size() / size : (targe.size() / size) + 1;
        int i11 = 0;
        while (i11 < size2) {
            ArrayList arrayList2 = new ArrayList();
            int i12 = i11 * size;
            while (true) {
                i10 = i11 + 1;
                if (i12 <= (size * i10) - 1) {
                    if (i12 <= targe.size() - 1) {
                        arrayList2.add(targe.get(i12));
                    }
                    i12++;
                }
            }
            arrayList.add(arrayList2);
            i11 = i10;
        }
        return arrayList;
    }

    public static b d() {
        return a.f72937a;
    }

    public void a() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72993n));
    }

    public void b() {
        this.f72936a.a();
    }

    public void e(String id2) {
        if (id2 != null) {
            this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72997r + id2));
        }
    }

    public void f() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72986g + m.a()));
    }

    public void g() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72994o));
    }

    public void h() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72990k));
    }

    public void i() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72989j));
    }

    public void j(com.join.mgps.socket.entity.d bean) {
        if (bean != null) {
            this.f72936a.d(bean);
        }
    }

    public void k() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72985f));
    }

    public void l(String id2) {
        if (id2 != null) {
            this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72996q + id2));
        }
    }

    public void m(String idAndCode) {
        if (idAndCode != null) {
            this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72988i + idAndCode));
        }
    }

    public void n(List<DownloadTask> taskList) {
        if (taskList != null) {
            List<List<DownloadTask>> listC = c(taskList, 5);
            int size = taskList.size();
            Iterator<List<DownloadTask>> it2 = listC.iterator();
            while (it2.hasNext()) {
                String json = JsonMapper.getInstance().toJson(it2.next());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Task列表: ");
                sb2.append(json);
                this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72992m + size + ":" + json));
            }
        }
    }

    public void o() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72995p));
    }

    public void p() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72987h));
    }

    public void q() {
        if (this.f72936a == null) {
            return;
        }
        this.f72936a.d(new h(com.join.mgps.socket.entity.a.f72991l));
    }
}
