package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Logger f33646a = Logger.getLogger(l.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static Map<Integer, Map<Integer, Class<? extends b>>> f33647b = new HashMap();

    static {
        HashSet<Class<? extends b>> hashSet = new HashSet();
        hashSet.add(f.class);
        hashSet.add(n.class);
        hashSet.add(b.class);
        hashSet.add(h.class);
        hashSet.add(k.class);
        hashSet.add(m.class);
        hashSet.add(a.class);
        hashSet.add(i.class);
        hashSet.add(g.class);
        hashSet.add(e.class);
        for (Class<? extends b> cls : hashSet) {
            Descriptor descriptor = (Descriptor) cls.getAnnotation(Descriptor.class);
            int[] iArrTags = descriptor.tags();
            int iObjectTypeIndication = descriptor.objectTypeIndication();
            Map<Integer, Class<? extends b>> map = f33647b.get(Integer.valueOf(iObjectTypeIndication));
            if (map == null) {
                map = new HashMap<>();
            }
            for (int i10 : iArrTags) {
                map.put(Integer.valueOf(i10), cls);
            }
            f33647b.put(Integer.valueOf(iObjectTypeIndication), map);
        }
    }

    public static b a(int i10, ByteBuffer byteBuffer) throws IOException {
        b oVar;
        int iP = com.coremedia.iso.g.p(byteBuffer);
        Map<Integer, Class<? extends b>> map = f33647b.get(Integer.valueOf(i10));
        if (map == null) {
            map = f33647b.get(-1);
        }
        Class<? extends b> cls = map.get(Integer.valueOf(iP));
        if (cls == null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            f33646a.warning("No ObjectDescriptor found for objectTypeIndication " + Integer.toHexString(i10) + " and tag " + Integer.toHexString(iP) + " found: " + cls);
            oVar = new o();
        } else {
            try {
                oVar = cls.newInstance();
            } catch (Exception e10) {
                f33646a.log(Level.SEVERE, "Couldn't instantiate BaseDescriptor class " + cls + " for objectTypeIndication " + i10 + " and tag " + iP, (Throwable) e10);
                throw new RuntimeException(e10);
            }
        }
        oVar.e(iP, byteBuffer);
        return oVar;
    }
}
