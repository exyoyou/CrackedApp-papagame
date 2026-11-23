package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.view.View;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;

/* JADX INFO: loaded from: classes2.dex */
public class LoginUiHelper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile LoginUiHelper f76126e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UnifyUiConfig f76127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private QuickLoginTokenListener f76128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f76129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f76130d;

    public interface CustomViewListener {
        void onClick(Context context, View view);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f76131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f76132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CustomViewListener f76133c;
    }

    public interface b {
        void a();

        void a(int i10, View view);

        void a(boolean z10);
    }

    private LoginUiHelper() {
    }

    public static LoginUiHelper a() {
        if (f76126e == null) {
            synchronized (LoginUiHelper.class) {
                if (f76126e == null) {
                    f76126e = new LoginUiHelper();
                }
            }
        }
        return f76126e;
    }

    public QuickLoginTokenListener b() {
        return this.f76128b;
    }

    public UnifyUiConfig c() {
        return this.f76127a;
    }

    public String d() {
        return this.f76130d;
    }

    public void e() {
        b bVar = this.f76129c;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void a(UnifyUiConfig unifyUiConfig, String str) {
        this.f76127a = unifyUiConfig;
        this.f76130d = str;
    }

    public void a(QuickLoginTokenListener quickLoginTokenListener) {
        this.f76128b = quickLoginTokenListener;
    }

    public void a(b bVar) {
        this.f76129c = bVar;
    }

    public void a(boolean z10) {
        b bVar = this.f76129c;
        if (bVar != null) {
            bVar.a(z10);
        }
    }

    public void a(int i10, View view) {
        b bVar = this.f76129c;
        if (bVar != null) {
            bVar.a(i10, view);
        }
    }
}
