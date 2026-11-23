package com.beizi.fusion.events;

import com.beizi.fusion.events.a.C0240a;
import com.beizi.fusion.events.a.b;
import com.beizi.fusion.events.a.c;
import com.beizi.fusion.events.a.d;
import com.beizi.fusion.events.a.e;
import com.beizi.fusion.events.a.f;
import com.beizi.fusion.events.a.g;
import com.beizi.fusion.events.a.h;
import com.beizi.fusion.events.a.i;
import com.beizi.fusion.events.a.j;
import com.beizi.fusion.events.a.k;
import com.beizi.fusion.tool.ac;
import java.util.Objects;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes6.dex */
public class b implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a.i f10266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a.h f10267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a.k f10268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a.g f10269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a.d f10270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a.e f10271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a.f f10272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a.c f10273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a.b f10274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a.j f10275j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a.C0240a f10276k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a f10277l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private EventBean f10278m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f10279n = false;

    public b(EventBean eventBean) {
        this.f10278m = eventBean;
        a aVar = new a();
        this.f10277l = aVar;
        Objects.requireNonNull(aVar);
        this.f10266a = aVar.new i();
        Objects.requireNonNull(aVar);
        this.f10267b = aVar.new h();
        Objects.requireNonNull(aVar);
        this.f10268c = aVar.new k();
        Objects.requireNonNull(aVar);
        this.f10269d = aVar.new g();
        Objects.requireNonNull(aVar);
        this.f10270e = aVar.new d();
        Objects.requireNonNull(aVar);
        this.f10271f = aVar.new e();
        Objects.requireNonNull(aVar);
        this.f10272g = aVar.new f();
        Objects.requireNonNull(aVar);
        this.f10273h = aVar.new c();
        Objects.requireNonNull(aVar);
        this.f10274i = aVar.new b();
        Objects.requireNonNull(aVar);
        this.f10275j = aVar.new j();
        Objects.requireNonNull(aVar);
        this.f10276k = aVar.new C0240a();
    }

    public a a() {
        return this.f10277l;
    }

    public EventBean b() {
        return this.f10278m;
    }

    public boolean c() {
        return this.f10279n;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        if ((observable instanceof a.l) && (obj instanceof EventBean)) {
            EventBean eventBean = (EventBean) obj;
            ac.a("BeiZis", "channel == " + eventBean.getBuyerId() + ",eventCode = " + eventBean.getEventCode() + ";buyerSpaceId:" + eventBean.getBuyerSpaceUuId() + ",srcType = " + eventBean.getBeiZiSrcType() + ",price = " + eventBean.getBeiZiPrice() + ",bidPrice = " + eventBean.getBidPrice() + ",eventId = " + eventBean.getReqId() + ",buyerSpaceId = " + eventBean.getBuyerSpaceId());
            EventCar.getInstance(com.beizi.fusion.c.b.a().e()).goRoad(eventBean);
        }
    }

    public void a(boolean z10) {
        this.f10279n = z10;
    }
}
