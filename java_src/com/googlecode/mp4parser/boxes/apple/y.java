package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class y extends j {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    DateFormat f33384y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Date f33385z;

    static {
        s();
    }

    public y() {
        super("©day", 1);
        this.f33385z = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ssZ");
        this.f33384y = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    protected static String F(String str) {
        return str.replaceAll("Z$", "+0000").replaceAll("([0-9][0-9]):([0-9][0-9])$", "$1$2");
    }

    protected static String G(String str) {
        return str.replaceAll("\\+0000$", "Z");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleRecordingYearBox.java", y.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "", "", "", "java.util.Date"), 27);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "java.util.Date", "date", "", "void"), 31);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        return com.coremedia.iso.l.b(G(this.f33384y.format(this.f33385z)));
    }

    public Date E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33385z;
    }

    public void H(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, date));
        this.f33385z = date;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return com.coremedia.iso.l.b(G(this.f33384y.format(this.f33385z))).length;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        try {
            this.f33385z = this.f33384y.parse(F(com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining())));
        } catch (ParseException e10) {
            throw new RuntimeException(e10);
        }
    }
}
