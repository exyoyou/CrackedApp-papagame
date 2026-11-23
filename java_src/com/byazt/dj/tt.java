package com.byazt.dj;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PluginValueSet f12967c;
    public String tt;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP, 194})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.rl.c f12968c;
        public String tt;

        public c(String str) {
            this.f12968c = com.byazt.rl.c.c();
            this.tt = str;
        }

        public c a(String str) {
            this.f12968c.c(260014, str);
            return this;
        }

        public c c(String str) {
            this.f12968c.c(260001, str);
            return this;
        }

        public c da(String str) {
            this.f12968c.c(260024, str);
            return this;
        }

        public c i(String str) {
            this.f12968c.c(260022, str);
            return this;
        }

        public c n(String str) {
            this.f12968c.c(260013, str);
            return this;
        }

        public c sp(String str) {
            this.f12968c.c(260019, str);
            return this;
        }

        public c tt(String str) {
            this.f12968c.c(260002, str);
            return this;
        }

        public c uj(String str) {
            this.f12968c.c(260004, str);
            return this;
        }

        public c ve(String str) {
            this.f12968c.c(260003, str);
            return this;
        }

        public c x(String str) {
            this.f12968c.c(260021, str);
            return this;
        }

        public c a(int i10) {
            this.f12968c.c(260018, i10);
            return this;
        }

        public c c(boolean z10) {
            this.f12968c.c(260005, z10);
            return this;
        }

        public c n(int i10) {
            this.f12968c.c(260016, i10);
            return this;
        }

        public c sp(int i10) {
            this.f12968c.c(260020, i10);
            return this;
        }

        public c tt(int i10) {
            this.f12968c.c(260007, i10);
            return this;
        }

        public c uj(int i10) {
            this.f12968c.c(260015, i10);
            return this;
        }

        public c ve(boolean z10) {
            this.f12968c.c(260011, z10);
            return this;
        }

        public c x(int i10) {
            this.f12968c.c(260025, i10);
            return this;
        }

        public c c(int i10) {
            this.f12968c.c(260006, i10);
            return this;
        }

        public c tt(float f10) {
            this.f12968c.c(260009, f10);
            return this;
        }

        public c uj(boolean z10) {
            this.f12968c.c(260026, z10);
            return this;
        }

        public c ve(int i10) {
            this.f12968c.c(2600012, i10);
            return this;
        }

        public c(tt ttVar) {
            this.f12968c = com.byazt.rl.c.c(ttVar.f12967c);
            this.tt = ttVar.tt;
        }

        public c c(float f10) {
            this.f12968c.c(260008, f10);
            return this;
        }

        public c tt(boolean z10) {
            this.f12968c.c(260010, z10);
            return this;
        }

        public c c(Map<String, Object> map) {
            this.f12968c.c(8260032, map);
            return this;
        }

        public c c(int[] iArr) {
            this.f12968c.c(260017, iArr);
            return this;
        }

        public c c(Object obj) {
            this.f12968c.c(260023, obj);
            return this;
        }

        public tt c() {
            return new tt(this.f12968c.tt().sparseArray(), this.tt);
        }
    }

    public tt(SparseArray<Object> sparseArray, String str) {
        this.f12967c = com.byazt.rl.c.c(sparseArray).tt();
        this.tt = str;
    }

    public int a() {
        return this.f12967c.intValue(260006);
    }

    public String c() {
        return (String) this.f12967c.objectValue(260001, String.class);
    }

    public boolean da() {
        return this.f12967c.booleanValue(260010);
    }

    public String gr() {
        return (String) this.f12967c.objectValue(260024, String.class);
    }

    public int gt() {
        return this.f12967c.intValue(260020);
    }

    public Object gu() {
        return this.f12967c.objectValue(260023, Object.class);
    }

    public float i() {
        return this.f12967c.floatValue(260009);
    }

    public int m() {
        return this.f12967c.intValue(260016);
    }

    public String my() {
        return (String) this.f12967c.objectValue(260019, String.class);
    }

    public boolean n() {
        return this.f12967c.booleanValue(260005);
    }

    public int[] nu() {
        return (int[]) this.f12967c.objectValue(260017, int[].class);
    }

    public String or() {
        return this.tt;
    }

    public String qy() {
        return (String) this.f12967c.objectValue(260022, String.class);
    }

    public int rh() {
        return this.f12967c.intValue(260018);
    }

    public String rl() {
        return (String) this.f12967c.objectValue(260021, String.class);
    }

    public boolean sl() {
        return this.f12967c.booleanValue(260011);
    }

    public int sp() {
        return this.f12967c.intValue(260007);
    }

    public int t() {
        return this.f12967c.intValue(2600012);
    }

    public String u() {
        return (String) this.f12967c.objectValue(260013, String.class);
    }

    public String uj() {
        return (String) this.f12967c.objectValue(260004, String.class);
    }

    public String ve() {
        return (String) this.f12967c.objectValue(260003, String.class);
    }

    public float x() {
        return this.f12967c.floatValue(260008);
    }

    public String yp() {
        return (String) this.f12967c.objectValue(260014, String.class);
    }

    public boolean yv() {
        return this.f12967c.booleanValue(260026);
    }

    public int z() {
        return this.f12967c.intValue(260015);
    }

    public Map zb() {
        return (Map) this.f12967c.objectValue(8260032, Map.class);
    }

    public int zm() {
        return this.f12967c.intValue(260025);
    }

    public void c(String str) {
        this.tt = this.tt;
    }

    public String tt() {
        return (String) this.f12967c.objectValue(260002, String.class);
    }
}
