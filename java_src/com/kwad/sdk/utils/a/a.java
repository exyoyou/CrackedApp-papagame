package com.kwad.sdk.utils.a;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: com.kwad.sdk.utils.a.a$a, reason: collision with other inner class name */
    static class C0958a extends j {
        C0958a(int i10, int i11, Object obj, int i12, boolean z10) {
            super(i10, i11, obj, i12, z10);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 7;
        }
    }

    static abstract class b {
        int offset;

        b() {
        }

        abstract byte Xi();
    }

    static class c extends b {
        boolean value;

        c(int i10, boolean z10) {
            this.offset = i10;
            this.value = z10;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 1;
        }
    }

    static class d extends b {
        double value;

        d(int i10, double d10) {
            this.offset = i10;
            this.value = d10;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 5;
        }
    }

    static class e extends b {
        float value;

        e(int i10, float f10) {
            this.offset = i10;
            this.value = f10;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 3;
        }
    }

    static class f extends b {
        int value;

        f(int i10, int i11) {
            this.offset = i10;
            this.value = i11;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 2;
        }
    }

    static class g extends b {
        long value;

        g(int i10, long j10) {
            this.offset = i10;
            this.value = j10;
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 4;
        }
    }

    static class h extends j {
        h(int i10, int i11, Object obj, int i12, boolean z10) {
            super(i10, i11, obj, i12, z10);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 8;
        }
    }

    static class i extends j {
        i(int i10, int i11, String str, int i12, boolean z10) {
            super(i10, i11, str, i12, z10);
        }

        @Override // com.kwad.sdk.utils.a.a.b
        final byte Xi() {
            return (byte) 6;
        }
    }

    static abstract class j extends b {
        int brJ;
        boolean brK;
        int start;
        Object value;

        j(int i10, int i11, Object obj, int i12, boolean z10) {
            this.start = i10;
            this.offset = i11;
            this.value = obj;
            this.brJ = i12;
            this.brK = z10;
        }
    }
}
