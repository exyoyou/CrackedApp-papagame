package com.haima.hmcp.business;

import android.content.Context;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;

/* JADX INFO: loaded from: classes5.dex */
public class PluginContext extends ContextThemeWrapper {
    public PluginContext(Context context) {
        super(context, 0);
    }

    @Override // android.content.ContextWrapper
    public Context getBaseContext() {
        return super.getBaseContext();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return getClass().getClassLoader();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return ResourceManager.getInstance().getResources();
    }
}
