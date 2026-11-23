package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class Amf0Track extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    SortedMap<Long, byte[]> f32920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.i f32921f;

    public Amf0Track(Map<Long, byte[]> map) {
        super(d5.a.f90707p);
        this.f32920e = new TreeMap<Long, byte[]>() { // from class: com.googlecode.mp4parser.authoring.tracks.Amf0Track.1
        };
        this.f32921f = new com.googlecode.mp4parser.authoring.i();
        this.f32920e = new TreeMap(map);
        this.f32921f.m(new Date());
        this.f32921f.s(new Date());
        this.f32921f.t(1000L);
        this.f32921f.p("eng");
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        s0 s0Var = new s0();
        d5.a aVar = new d5.a();
        aVar.j(1);
        s0Var.m(aVar);
        return s0Var;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f32921f;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        LinkedList linkedList = new LinkedList();
        Iterator<byte[]> it2 = this.f32920e.values().iterator();
        while (it2.hasNext()) {
            linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(it2.next())));
        }
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        LinkedList linkedList = new LinkedList(this.f32920e.keySet());
        Collections.sort(linkedList);
        long[] jArr = new long[linkedList.size()];
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            jArr[i10] = ((Long) linkedList.get(i10)).longValue() - 0;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "data";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }
}
