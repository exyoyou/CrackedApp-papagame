package com.byazt.utw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f20995c;
    public final List<tt> tt;
    public final c ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 464})
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f20996a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f20997c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f20998n;
        public final String tt;
        public final int uj;
        public final String ve;

        public String toString() {
            return "Extra{flag=" + this.f20997c + ", rawKey='" + this.tt + "', key='" + this.ve + "', from=" + this.uj + ", to=" + this.f20998n + ", urls=" + this.f20996a + '}';
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 480})
    public static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f20999c;
        public final String tt;

        public tt(String str, String str2) {
            this.f20999c = str;
            this.tt = str2;
        }

        public String toString() {
            return "Header{name='" + this.f20999c + "', value='" + this.tt + "'}";
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 471})
    static final class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f21000c;
        public final String tt;
        public final String ve;

        public String toString() {
            return "RequestLine{method='" + this.f21000c + "', path='" + this.tt + "', version='" + this.ve + "'}";
        }
    }

    public String toString() {
        return "Request{requestLine=" + this.f20995c + ", headers=" + this.tt + ", extra=" + this.ve + '}';
    }
}
