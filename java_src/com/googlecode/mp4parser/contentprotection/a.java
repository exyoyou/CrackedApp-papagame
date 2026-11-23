package com.googlecode.mp4parser.contentprotection;

import com.googlecode.mp4parser.boxes.piff.c;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class a extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static UUID f33737c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteBuffer f33738b;

    static {
        UUID uuidFromString = UUID.fromString("00000000-0000-0000-0000-000000000000");
        f33737c = uuidFromString;
        c.f33693a.put(uuidFromString, a.class);
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public ByteBuffer b() {
        return this.f33738b;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public UUID c() {
        return f33737c;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public void d(ByteBuffer byteBuffer) {
        this.f33738b = byteBuffer;
    }
}
