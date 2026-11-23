package com.byazt.pop;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    /* JADX INFO: renamed from: com.byazt.pop.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 993, 44})
    public static final class C0410c {
        public static c c(final com.byazt.ocd.ve veVar) {
            return new c() { // from class: com.byazt.pop.c.c.1
                @Override // com.byazt.pop.c
                public void c() {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.c();
                    }
                }

                @Override // com.byazt.pop.c
                public void tt(long j10, long j11, String str, String str2) {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.tt(j10, j11, str, str2);
                    }
                }

                @Override // com.byazt.pop.c
                public void ve(long j10, long j11, String str, String str2) {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.ve(j10, j11, str, str2);
                    }
                }

                @Override // com.byazt.pop.c
                public void c(long j10, long j11, String str, String str2) {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.c(j10, j11, str, str2);
                    }
                }

                @Override // com.byazt.pop.c
                public void c(long j10, String str, String str2) {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.c(j10, str, str2);
                    }
                }

                @Override // com.byazt.pop.c
                public void c(String str, String str2) {
                    com.byazt.ocd.ve veVar2 = veVar;
                    if (veVar2 != null) {
                        veVar2.c(str, str2);
                    }
                }
            };
        }
    }

    void c();

    void c(long j10, long j11, String str, String str2);

    void c(long j10, String str, String str2);

    void c(String str, String str2);

    void tt(long j10, long j11, String str, String str2);

    void ve(long j10, long j11, String str, String str2);
}
