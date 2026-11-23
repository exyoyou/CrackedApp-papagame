package com.haima.hmcp.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.view.LayoutInflater;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class LayoutInflaterManager {
    private static LayoutInflaterManager sInstance = new LayoutInflaterManager();
    Map<AssetManager, LayoutInflater> mLayoutInflaterCache = new HashMap();

    private LayoutInflaterManager() {
    }

    public static LayoutInflaterManager getInstance() {
        return sInstance;
    }

    public void clear() {
        this.mLayoutInflaterCache.clear();
    }

    public LayoutInflater getLayoutInflater(Context context) {
        LayoutInflater layoutInflater = this.mLayoutInflaterCache.get(context.getAssets());
        if (layoutInflater != null) {
            return layoutInflater;
        }
        LayoutInflater layoutInflaterCloneInContext = LayoutInflater.from(context).cloneInContext(context);
        layoutInflaterCloneInContext.setFactory2(new LayoutInflateFactory());
        this.mLayoutInflaterCache.put(context.getAssets(), layoutInflaterCloneInContext);
        return layoutInflaterCloneInContext;
    }
}
