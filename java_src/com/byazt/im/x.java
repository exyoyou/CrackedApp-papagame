package com.byazt.im;

import com.byazt.ete.ic;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1352, 71})
public class x extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.hm.tt f15422a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f15423da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15424i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.nc.tt f15425m;
    public String nu;
    public long rh;
    public long sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, String> f15427t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f15428u;
    public com.byazt.uph.tt uj;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f15430z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15426n = false;
    public boolean sp = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15429x = false;
    public AtomicBoolean my = new AtomicBoolean(false);

    public x(ic icVar, boolean z10) {
        this.tt = icVar;
        this.yp = z10;
    }

    public boolean a() {
        return this.sp;
    }

    @Override // com.byazt.im.c
    public int c() {
        return this.f15392c;
    }

    public boolean da() {
        return this.f15429x;
    }

    public Map<String, String> i() {
        return this.f15427t;
    }

    public boolean n() {
        return this.f15426n;
    }

    public boolean sl() {
        return this.yp;
    }

    public long sp() {
        return this.f15424i;
    }

    public com.byazt.nc.tt t() {
        return this.f15425m;
    }

    @Override // com.byazt.im.c
    public ic tt() {
        return this.tt;
    }

    public String u() {
        return this.nu;
    }

    public com.byazt.uph.tt uj() {
        return this.uj;
    }

    public void ve(long j10) {
        this.f15423da = j10;
    }

    public long x() {
        return this.sl;
    }

    public long yp() {
        return this.rh;
    }

    public boolean z() {
        return this.my.get();
    }

    @Override // com.byazt.im.c
    public void c(int i10) {
        this.f15392c = i10;
    }

    public void n(long j10) {
        this.rh = j10;
    }

    public void tt(boolean z10) {
        this.sp = z10;
    }

    public void uj(long j10) {
        this.sl = j10;
    }

    public void ve(boolean z10) {
        this.f15429x = z10;
    }

    @Override // com.byazt.im.c
    public void c(ic icVar) {
        this.tt = icVar;
    }

    public void n(boolean z10) {
        this.my.set(z10);
    }

    public void tt(long j10) {
        this.f15424i = j10;
    }

    public void uj(boolean z10) {
        this.f15430z = z10;
    }

    public void c(boolean z10) {
        this.f15426n = z10;
    }

    public void tt(String str) {
        this.nu = str;
    }

    public void c(com.byazt.hm.tt ttVar) {
        this.f15422a = ttVar;
    }

    public void c(Map<String, String> map) {
        this.f15427t = map;
    }

    public void c(String str) {
        this.f15428u = str;
    }

    public x(com.byazt.uph.tt ttVar, ic icVar, boolean z10) {
        this.uj = ttVar;
        this.tt = icVar;
        this.yp = z10;
    }

    public void c(com.byazt.nc.tt ttVar) {
        this.f15425m = ttVar;
    }
}
