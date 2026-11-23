package com.byazt.ete;

import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 72})
public class da {
    public String gr;
    public String my;
    public String rl;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f13632u;
    public View yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f13634z;
    public int zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f13626c = -1.0f;
    public float tt = -1.0f;
    public float ve = -1.0f;
    public float uj = -1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f13630n = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13625a = -1;
    public int sp = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13633x = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13628i = -1024;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f13627da = true;
    public int sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13631t = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f13629m = 0;
    public byte nu = -1;
    public boolean rh = false;
    public int gt = -1;
    public SparseArray<com.byazt.hkv.uj.c> qy = new SparseArray<>();
    public List<Integer> gu = new ArrayList();
    public boolean yv = false;

    public int a() {
        return this.f13633x;
    }

    public void c(boolean z10) {
        this.yv = z10;
    }

    public View da() {
        return this.yp;
    }

    public String gr() {
        return this.gr;
    }

    public float gt() {
        return this.uj;
    }

    public String gu() {
        return this.rl;
    }

    public View i() {
        return this.f13632u;
    }

    public long m() {
        return this.f13625a;
    }

    public float my() {
        return this.ve;
    }

    public int n() {
        return this.sp;
    }

    public float nu() {
        return this.f13626c;
    }

    public int qy() {
        return this.gt;
    }

    public float rh() {
        return this.tt;
    }

    public String rl() {
        return this.my;
    }

    public int sl() {
        return this.sl;
    }

    public int sp() {
        return this.f13628i;
    }

    public int t() {
        return this.f13631t;
    }

    public byte tt() {
        return this.f13629m;
    }

    public SparseArray<com.byazt.hkv.uj.c> u() {
        return this.qy;
    }

    public boolean uj() {
        return this.zm == 2;
    }

    public byte ve() {
        return this.nu;
    }

    public boolean x() {
        return this.f13627da;
    }

    public List<Integer> yp() {
        return this.gu;
    }

    public long z() {
        return this.f13630n;
    }

    public void a(int i10) {
        this.f13631t = i10;
    }

    public boolean c() {
        return this.yv;
    }

    public void n(int i10) {
        this.sl = i10;
    }

    public void sp(int i10) {
        this.gt = i10;
    }

    public void tt(byte b10) {
        this.nu = b10;
    }

    public void uj(int i10) {
        this.f13628i = i10;
    }

    public void ve(int i10) {
        this.f13633x = i10;
    }

    public void c(byte b10) {
        this.f13629m = b10;
    }

    public void tt(int i10) {
        this.sp = i10;
    }

    public void uj(float f10) {
        this.uj = f10;
    }

    public void ve(float f10) {
        this.ve = f10;
    }

    public void c(int i10) {
        this.zm = i10;
    }

    public void tt(boolean z10) {
        this.f13627da = z10;
    }

    public void uj(boolean z10) {
        this.rh = z10;
    }

    public void ve(boolean z10) {
        this.f13634z = z10;
    }

    public void c(View view) {
        this.f13632u = (View) new WeakReference(view).get();
    }

    public void tt(View view) {
        this.yp = (View) new WeakReference(view).get();
    }

    public void ve(String str) {
        this.gr = str;
    }

    public void c(SparseArray<com.byazt.hkv.uj.c> sparseArray) {
        this.qy = sparseArray;
    }

    public void tt(long j10) {
        this.f13625a = j10;
    }

    public void c(long j10) {
        this.f13630n = j10;
    }

    public void tt(float f10) {
        this.tt = f10;
    }

    public void c(float f10) {
        this.f13626c = f10;
    }

    public void tt(String str) {
        this.rl = str;
    }

    public void c(String str) {
        this.my = str;
    }
}
