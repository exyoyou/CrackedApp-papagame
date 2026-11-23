package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f32817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<c> f32818c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> f32819d = new HashMap();

    public a(String str) {
        this.f32817b = str;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f32819d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<c> X() {
        return this.f32818c;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j10 = 0;
        for (long j11 : Z()) {
            j10 += j11;
        }
        return j10;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return this.f32817b;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }
}
