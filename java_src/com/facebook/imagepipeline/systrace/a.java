package com.facebook.imagepipeline.systrace;

import android.os.Trace;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements b.d {

    /* JADX INFO: renamed from: com.facebook.imagepipeline.systrace.a$a, reason: collision with other inner class name */
    private static final class C0580a implements b.InterfaceC0581b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final StringBuilder f28754a;

        public C0580a(String name) {
            this.f28754a = new StringBuilder(name);
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public b.InterfaceC0581b a(String key, long value) {
            StringBuilder sb2 = this.f28754a;
            sb2.append(';');
            sb2.append(key);
            sb2.append('=');
            sb2.append(Long.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public b.InterfaceC0581b b(String key, int value) {
            StringBuilder sb2 = this.f28754a;
            sb2.append(';');
            sb2.append(key);
            sb2.append('=');
            sb2.append(Integer.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public b.InterfaceC0581b c(String key, double value) {
            StringBuilder sb2 = this.f28754a;
            sb2.append(';');
            sb2.append(key);
            sb2.append('=');
            sb2.append(Double.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public b.InterfaceC0581b d(String key, Object value) {
            StringBuilder sb2 = this.f28754a;
            sb2.append(';');
            sb2.append(key);
            sb2.append('=');
            sb2.append(value == null ? "null" : value.toString());
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0581b
        public void flush() {
            if (this.f28754a.length() > 127) {
                this.f28754a.setLength(127);
            }
            Trace.beginSection(this.f28754a.toString());
        }
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public boolean b() {
        return false;
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public b.InterfaceC0581b c(String name) {
        return b.f28755a;
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void d(String name) {
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void e() {
    }
}
