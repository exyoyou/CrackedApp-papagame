package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxTypefaces {
    private static final HashMap<String, Typeface> sTypefaceCache = new HashMap<>();

    public static synchronized Typeface get(Context context, String str) {
        HashMap<String, Typeface> map;
        map = sTypefaceCache;
        if (!map.containsKey(str)) {
            map.put(str, str.startsWith(e.F0) ? Typeface.createFromFile(str) : Typeface.createFromAsset(context.getAssets(), str));
        }
        return map.get(str);
    }
}
