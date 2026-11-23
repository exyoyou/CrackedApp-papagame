package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.Closeable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface h extends Closeable {
    List<com.coremedia.iso.boxes.i.a> E();

    s0 F();

    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G();

    i H();

    long[] N();

    a1 S();

    List<f> U();

    List<c> X();

    long[] Z();

    long getDuration();

    String getHandler();

    String getName();

    List<r0.a> h0();
}
