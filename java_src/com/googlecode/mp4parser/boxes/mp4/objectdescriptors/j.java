package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class j extends k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f33633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f33634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f33635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f33636h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f33637i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f33638j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f33639k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f33640l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f33641m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f33642n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<g> f33643o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    List<h> f33644p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    List<b> f33645q = new ArrayList();

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int iA;
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        this.f33633e = (65472 & i10) >> 6;
        this.f33634f = (i10 & 63) >> 5;
        this.f33635g = (i10 & 31) >> 4;
        int iA2 = a() - 2;
        if (this.f33634f == 1) {
            int iP = com.coremedia.iso.g.p(byteBuffer);
            this.f33636h = iP;
            this.f33637i = com.coremedia.iso.g.h(byteBuffer, iP);
            iA = iA2 - (this.f33636h + 1);
        } else {
            this.f33638j = com.coremedia.iso.g.p(byteBuffer);
            this.f33639k = com.coremedia.iso.g.p(byteBuffer);
            this.f33640l = com.coremedia.iso.g.p(byteBuffer);
            this.f33641m = com.coremedia.iso.g.p(byteBuffer);
            this.f33642n = com.coremedia.iso.g.p(byteBuffer);
            iA = iA2 - 5;
            if (iA > 2) {
                b bVarA = l.a(-1, byteBuffer);
                iA -= bVarA.a();
                if (bVarA instanceof g) {
                    this.f33643o.add((g) bVarA);
                } else {
                    this.f33645q.add(bVarA);
                }
            }
        }
        if (iA > 2) {
            b bVarA2 = l.a(-1, byteBuffer);
            if (bVarA2 instanceof h) {
                this.f33644p.add((h) bVarA2);
            } else {
                this.f33645q.add(bVarA2);
            }
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "InitialObjectDescriptor{objectDescriptorId=" + this.f33633e + ", urlFlag=" + this.f33634f + ", includeInlineProfileLevelFlag=" + this.f33635g + ", urlLength=" + this.f33636h + ", urlString='" + this.f33637i + "', oDProfileLevelIndication=" + this.f33638j + ", sceneProfileLevelIndication=" + this.f33639k + ", audioProfileLevelIndication=" + this.f33640l + ", visualProfileLevelIndication=" + this.f33641m + ", graphicsProfileLevelIndication=" + this.f33642n + ", esDescriptors=" + this.f33643o + ", extensionDescriptors=" + this.f33644p + ", unknownDescriptors=" + this.f33645q + '}';
    }
}
