package com.kwad.sdk.pngencrypt.chunk;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p extends PngChunk {
    protected p(String str, com.kwad.sdk.pngencrypt.k kVar) {
        super(str, kVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        String str = this.f75330id;
        if (str == null) {
            if (pVar.f75330id != null) {
                return false;
            }
        } else if (!str.equals(pVar.f75330id)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f75330id;
        return (str == null ? 0 : str.hashCode()) + 31;
    }
}
