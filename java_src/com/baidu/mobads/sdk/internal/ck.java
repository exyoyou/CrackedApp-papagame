package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.net.URL;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes6.dex */
public class ck implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7719a = "APKParser";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f7720g = "__xadsdk_downloaded__version__";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f7721h = "version";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f7722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private URL f7723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final bz f7725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f7726f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SharedPreferences f7727i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SharedPreferences.OnSharedPreferenceChangeListener f7728j;

    public interface a {
        void a(bz bzVar);

        void b(bz bzVar);
    }

    public ck(Context context, URL url, bz bzVar, a aVar) {
        this.f7723c = null;
        this.f7724d = null;
        this.f7728j = new cl(this);
        this.f7723c = url;
        this.f7725e = bzVar;
        a(context, aVar);
    }

    private void a(Context context, a aVar) {
        this.f7722b = context;
        this.f7726f = aVar;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f7720g, 0);
        this.f7727i = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this.f7728j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        x xVar = (x) observable;
        if (xVar.l() == x.a.COMPLETED) {
            this.f7726f.a(new bz(this.f7725e, xVar.g(), Boolean.TRUE));
        }
        if (xVar.l() == x.a.ERROR) {
            this.f7726f.b(new bz(this.f7725e, xVar.g(), Boolean.FALSE));
        }
    }

    public void a(String str, String str2) throws IOException {
        am amVar = new am(this.f7722b, this.f7724d != null ? new URL(this.f7724d) : this.f7723c, str, str2, false);
        amVar.addObserver(this);
        amVar.a();
        SharedPreferences.Editor editorEdit = this.f7727i.edit();
        editorEdit.putString("version", this.f7725e.toString());
        editorEdit.apply();
    }

    public ck(Context context, String str, bz bzVar, a aVar) {
        this.f7723c = null;
        this.f7724d = null;
        this.f7728j = new cl(this);
        this.f7724d = str;
        this.f7725e = bzVar;
        a(context, aVar);
    }
}
