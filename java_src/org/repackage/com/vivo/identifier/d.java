package org.repackage.com.vivo.identifier;

import android.database.ContentObserver;

/* JADX INFO: loaded from: classes10.dex */
public class d extends ContentObserver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f96038d = "VMS_SDK_Observer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f96039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f96040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f96041c;

    d(c cVar, int i10, String str) {
        super(null);
        this.f96041c = cVar;
        this.f96040b = i10;
        this.f96039a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        c cVar = this.f96041c;
        if (cVar != null) {
            cVar.l(this.f96040b, this.f96039a);
        }
    }
}
