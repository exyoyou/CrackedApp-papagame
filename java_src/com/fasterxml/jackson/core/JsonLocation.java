package com.fasterxml.jackson.core;

import java.io.Serializable;
import java.nio.charset.Charset;
import t7.a;

/* JADX INFO: loaded from: classes9.dex */
public class JsonLocation implements Serializable {
    public static final int MAX_CONTENT_SNIPPET = 500;
    public static final JsonLocation NA = new JsonLocation(null, -1, -1, -1, -1);
    private static final long serialVersionUID = 1;
    protected final int _columnNr;
    protected final int _lineNr;
    final transient Object _sourceRef;
    protected final long _totalBytes;
    protected final long _totalChars;

    public JsonLocation(Object obj, long j10, int i10, int i11) {
        this(obj, -1L, j10, i10, i11);
    }

    private int _append(StringBuilder sb2, String str) {
        sb2.append('\"');
        sb2.append(str);
        sb2.append('\"');
        return str.length();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0098  */
    protected StringBuilder _appendSourceDesc(StringBuilder sb2) {
        int length;
        int i_append;
        Object obj = this._sourceRef;
        if (obj == null) {
            sb2.append(a.f97139c);
            return sb2;
        }
        Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
        String name = cls.getName();
        if (name.startsWith("java.")) {
            name = cls.getSimpleName();
        } else if (obj instanceof byte[]) {
            name = "byte[]";
        } else if (obj instanceof char[]) {
            name = "char[]";
        }
        sb2.append('(');
        sb2.append(name);
        sb2.append(')');
        int length2 = 0;
        String str = " chars";
        if (!(obj instanceof CharSequence)) {
            if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                length = cArr.length;
                i_append = _append(sb2, new String(cArr, 0, Math.min(length, 500)));
            } else if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int iMin = Math.min(bArr.length, 500);
                _append(sb2, new String(bArr, 0, iMin, Charset.forName("UTF-8")));
                length2 = bArr.length - iMin;
                str = " bytes";
            }
            if (length2 > 0) {
                sb2.append("[truncated ");
                sb2.append(length2);
                sb2.append(str);
                sb2.append(']');
            }
            return sb2;
        }
        CharSequence charSequence = (CharSequence) obj;
        length = charSequence.length();
        i_append = _append(sb2, charSequence.subSequence(0, Math.min(length, 500)).toString());
        length2 = length - i_append;
        if (length2 > 0) {
            sb2.append("[truncated ");
            sb2.append(length2);
            sb2.append(str);
            sb2.append(']');
        }
        return sb2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JsonLocation)) {
            return false;
        }
        JsonLocation jsonLocation = (JsonLocation) obj;
        Object obj2 = this._sourceRef;
        if (obj2 == null) {
            if (jsonLocation._sourceRef != null) {
                return false;
            }
        } else if (!obj2.equals(jsonLocation._sourceRef)) {
            return false;
        }
        return this._lineNr == jsonLocation._lineNr && this._columnNr == jsonLocation._columnNr && this._totalChars == jsonLocation._totalChars && getByteOffset() == jsonLocation.getByteOffset();
    }

    public long getByteOffset() {
        return this._totalBytes;
    }

    public long getCharOffset() {
        return this._totalChars;
    }

    public int getColumnNr() {
        return this._columnNr;
    }

    public int getLineNr() {
        return this._lineNr;
    }

    public Object getSourceRef() {
        return this._sourceRef;
    }

    public int hashCode() {
        Object obj = this._sourceRef;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this._lineNr) + this._columnNr) ^ ((int) this._totalChars)) + ((int) this._totalBytes);
    }

    public String sourceDescription() {
        return _appendSourceDesc(new StringBuilder(100)).toString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("[Source: ");
        _appendSourceDesc(sb2);
        sb2.append("; line: ");
        sb2.append(this._lineNr);
        sb2.append(", column: ");
        sb2.append(this._columnNr);
        sb2.append(']');
        return sb2.toString();
    }

    public JsonLocation(Object obj, long j10, long j11, int i10, int i11) {
        this._sourceRef = obj;
        this._totalBytes = j10;
        this._totalChars = j11;
        this._lineNr = i10;
        this._columnNr = i11;
    }
}
