package com.cloudplay.messagesdk.gson.internal;

import com.cloudplay.messagesdk.gson.JsonIOException;
import com.cloudplay.messagesdk.gson.JsonParseException;
import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.internal.j.n;
import com.cloudplay.messagesdk.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes9.dex */
public final class h {
    public static com.cloudplay.messagesdk.gson.d a(com.cloudplay.messagesdk.gson.stream.a aVar) throws JsonParseException {
        boolean z10;
        try {
            try {
                aVar.q();
                z10 = false;
                try {
                    return n.U.a2(aVar);
                } catch (EOFException e10) {
                    e = e10;
                    if (z10) {
                        return com.cloudplay.messagesdk.gson.e.f23753a;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (EOFException e11) {
                e = e11;
                z10 = true;
            }
        } catch (MalformedJsonException e12) {
            throw new JsonSyntaxException(e12);
        } catch (IOException e13) {
            throw new JsonIOException(e13);
        } catch (NumberFormatException e14) {
            throw new JsonSyntaxException(e14);
        }
    }

    private static final class a extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f23800a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0521a f23801b = new C0521a();

        /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.internal.h$a$a, reason: collision with other inner class name */
        static class C0521a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            char[] f23802a;

            C0521a() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i10) {
                return this.f23802a[i10];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f23802a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i10, int i11) {
                return new String(this.f23802a, i10, i11 - i10);
            }
        }

        a(Appendable appendable) {
            this.f23800a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) throws IOException {
            C0521a c0521a = this.f23801b;
            c0521a.f23802a = cArr;
            this.f23800a.append(c0521a, i10, i11 + i10);
        }

        @Override // java.io.Writer
        public void write(int i10) throws IOException {
            this.f23800a.append((char) i10);
        }
    }

    public static void a(com.cloudplay.messagesdk.gson.d dVar, com.cloudplay.messagesdk.gson.stream.b bVar) throws IOException {
        n.U.a(bVar, dVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }
}
