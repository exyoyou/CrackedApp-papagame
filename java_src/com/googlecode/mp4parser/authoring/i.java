package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.l;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class i implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f32882c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f32886g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f32887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f32888i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f32891l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f32881b = "eng";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Date f32883d = new Date();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Date f32884e = new Date();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l f32885f = l.f33794j;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f32889j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f32890k = 0;

    public Date a() {
        return this.f32884e;
    }

    public int b() {
        return this.f32890k;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public double d() {
        return this.f32887h;
    }

    public String e() {
        return this.f32881b;
    }

    public int f() {
        return this.f32891l;
    }

    public l g() {
        return this.f32885f;
    }

    public Date h() {
        return this.f32883d;
    }

    public long i() {
        return this.f32882c;
    }

    public long j() {
        return this.f32889j;
    }

    public float k() {
        return this.f32888i;
    }

    public double l() {
        return this.f32886g;
    }

    public void m(Date date) {
        this.f32884e = date;
    }

    public void n(int i10) {
        this.f32890k = i10;
    }

    public void o(double d10) {
        this.f32887h = d10;
    }

    public void p(String str) {
        this.f32881b = str;
    }

    public void q(int i10) {
        this.f32891l = i10;
    }

    public void r(l lVar) {
        this.f32885f = lVar;
    }

    public void s(Date date) {
        this.f32883d = date;
    }

    public void t(long j10) {
        this.f32882c = j10;
    }

    public void u(long j10) {
        this.f32889j = j10;
    }

    public void v(float f10) {
        this.f32888i = f10;
    }

    public void w(double d10) {
        this.f32886g = d10;
    }
}
