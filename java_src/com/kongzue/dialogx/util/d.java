package com.kongzue.dialogx.util;

import com.kongzue.dialogx.interfaces.BaseDialog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<BaseDialog> f74156a;

    public static d c(BaseDialog... baseDialogArr) {
        d dVar = new d();
        for (BaseDialog baseDialog : baseDialogArr) {
            if (baseDialog != null) {
                dVar.a(baseDialog);
            }
        }
        return dVar;
    }

    public d a(BaseDialog baseDialog) {
        if (this.f74156a == null) {
            this.f74156a = new ArrayList<>();
        }
        if (baseDialog != null && !baseDialog.m0() && !baseDialog.l0()) {
            baseDialog.G0(this);
            this.f74156a.add(baseDialog);
        }
        return this;
    }

    public void b() {
        ArrayList<BaseDialog> arrayList = this.f74156a;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public boolean d() {
        if (this.f74156a == null) {
            return true;
        }
        while (!this.f74156a.isEmpty() && this.f74156a.get(0) == null) {
            this.f74156a.remove(0);
        }
        return this.f74156a.isEmpty();
    }

    public d e() {
        ArrayList<BaseDialog> arrayList = this.f74156a;
        if (arrayList != null && !arrayList.isEmpty()) {
            while (!this.f74156a.isEmpty() && this.f74156a.get(0) == null) {
                this.f74156a.remove(0);
            }
            this.f74156a.get(0).M0();
        }
        return this;
    }

    public void f() {
        ArrayList<BaseDialog> arrayList = this.f74156a;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        while (!this.f74156a.isEmpty() && this.f74156a.get(0) == null) {
            this.f74156a.remove(0);
        }
        if (this.f74156a.isEmpty() || this.f74156a.get(0) == null) {
            return;
        }
        this.f74156a.get(0).M0();
    }
}
