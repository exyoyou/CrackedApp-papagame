package com.switfpass.pay.thread;

import android.os.AsyncTask;

/* JADX INFO: loaded from: classes2.dex */
final class l extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ e f82706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ b f82707b;

    l(e eVar, b bVar) {
        this.f82706a = eVar;
        this.f82707b = bVar;
    }

    private Object b() {
        try {
            this.f82707b.b(new m(this));
            return this.f82707b.a();
        } catch (Exception e10) {
            return e10;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return b();
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Object obj) {
        e eVar = this.f82706a;
        if (eVar != null) {
            if (obj == null || !(obj instanceof Exception)) {
                eVar.onSucceed(obj);
            }
        }
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        e eVar = this.f82706a;
        if (eVar != null) {
            eVar.onPreExecute();
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onProgressUpdate(Object... objArr) {
        Integer[] numArr = (Integer[]) objArr;
        e eVar = this.f82706a;
        if (eVar != null) {
            eVar.onProgress(numArr[0].intValue());
        }
    }
}
