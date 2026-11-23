package com.facebook.cache.disk;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements g {

    /* JADX INFO: renamed from: com.facebook.cache.disk.a$a, reason: collision with other inner class name */
    class C0554a implements f {
        C0554a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c.InterfaceC0556c e10, c.InterfaceC0556c e11) {
            long timestamp = e10.getTimestamp();
            long timestamp2 = e11.getTimestamp();
            if (timestamp < timestamp2) {
                return -1;
            }
            return timestamp2 == timestamp ? 0 : 1;
        }
    }

    @Override // com.facebook.cache.disk.g
    public f get() {
        return new C0554a();
    }
}
