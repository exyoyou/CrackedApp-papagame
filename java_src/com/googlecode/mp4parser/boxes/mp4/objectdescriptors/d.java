package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import androidx.core.view.InputDeviceCompat;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f33600d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f33601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33603c = 0;

    public d(ByteBuffer byteBuffer) {
        this.f33601a = byteBuffer;
        this.f33602b = byteBuffer.position();
    }

    public void a(int i10, int i11) {
        int i12 = this.f33603c;
        int i13 = 8 - (i12 % 8);
        if (i11 <= i13) {
            int i14 = this.f33601a.get(this.f33602b + (i12 / 8));
            if (i14 < 0) {
                i14 += 256;
            }
            int i15 = i14 + (i10 << (i13 - i11));
            ByteBuffer byteBuffer = this.f33601a;
            int i16 = this.f33602b + (this.f33603c / 8);
            if (i15 > 127) {
                i15 += InputDeviceCompat.SOURCE_ANY;
            }
            byteBuffer.put(i16, (byte) i15);
            this.f33603c += i11;
        } else {
            int i17 = i11 - i13;
            a(i10 >> i17, i13);
            a(i10 & ((1 << i17) - 1), i17);
        }
        ByteBuffer byteBuffer2 = this.f33601a;
        int i18 = this.f33602b;
        int i19 = this.f33603c;
        byteBuffer2.position(i18 + (i19 / 8) + (i19 % 8 <= 0 ? 0 : 1));
    }
}
