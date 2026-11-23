package com.byazt.utw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f21041c = new HashSet();
    public static final Set<String> tt = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f21042a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f21043n = -1;
    public final int sp;
    public final int uj;
    public final ArrayList<c> ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 62})
    public class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f21044c;
        public int tt;

        public c(String str) {
            this.f21044c = str;
        }

        public void c() {
            x.f21041c.add(this.f21044c);
        }

        public String toString() {
            return this.f21044c;
        }

        public void tt() {
            x.tt.add(this.f21044c);
        }
    }

    public x(List<String> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.uj = size;
        this.ve = new ArrayList<>(size);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (String str : list) {
            c cVar = new c(str);
            if (f21041c.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(cVar);
            } else if (tt.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(cVar);
            } else {
                this.ve.add(cVar);
            }
        }
        if (arrayList != null) {
            this.ve.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.ve.addAll(arrayList2);
        }
        Integer num = uj.uj;
        this.sp = (num == null || num.intValue() <= 0) ? this.uj >= 2 ? 1 : 2 : num.intValue();
    }

    public boolean c() {
        return this.f21042a < this.sp;
    }

    public c tt() {
        if (!c()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f21043n + 1;
        if (i10 >= this.uj - 1) {
            this.f21043n = -1;
            this.f21042a++;
        } else {
            this.f21043n = i10;
        }
        c cVar = this.ve.get(i10);
        cVar.tt = (this.f21042a * this.uj) + this.f21043n;
        return cVar;
    }
}
