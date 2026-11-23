package com.coremedia.iso;

import com.googlecode.mp4parser.util.m;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f25228a = false;

    public static void a(Map<String, com.coremedia.iso.boxes.d> map, File file) throws IOException {
        f fVar = new f(new com.googlecode.mp4parser.g(new RandomAccessFile(file, "r").getChannel()));
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        for (Map.Entry<String, com.coremedia.iso.boxes.d> entry : map.entrySet()) {
            com.coremedia.iso.boxes.d dVarD = m.d(fVar, entry.getKey());
            map2.put(m.a(dVarD), entry.getValue());
            map3.put(m.a(dVarD), Long.valueOf(dVarD.e()));
        }
        fVar.close();
        FileChannel channel = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0).getChannel();
        for (String str : map2.keySet()) {
            com.coremedia.iso.boxes.d dVar = (com.coremedia.iso.boxes.d) map2.get(str);
            channel.position(((Long) map3.get(str)).longValue());
            dVar.a(channel);
        }
        channel.close();
    }
}
