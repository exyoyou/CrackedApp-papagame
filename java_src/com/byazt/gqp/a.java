package com.byazt.gqp;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 34})
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f14678c;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 464})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f14679c = new ArrayList(20);

        private void ve(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(com.byazt.na.da.c("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i11 = 0; i11 < length2; i11++) {
                char cCharAt2 = str2.charAt(i11);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(com.byazt.na.da.c("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i11), str, str2));
                }
            }
        }

        public a c() {
            return new a(this);
        }

        public c tt(String str, String str2) {
            try {
                ve(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        int length = str2.length();
                        for (int i10 = 0; i10 < length; i10++) {
                            char cCharAt = str2.charAt(i10);
                            if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                                sb2.append(cCharAt);
                            } else {
                                sb2.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            }
                        }
                        str2 = sb2.toString();
                    } catch (UnsupportedEncodingException e10) {
                        com.byazt.nr.m.c(e10);
                        return this;
                    }
                }
                return this;
            }
            return c(str, str2);
        }

        public c c(String str, String str2) {
            this.f14679c.add(str);
            this.f14679c.add(str2.trim());
            return this;
        }
    }

    public a(String[] strArr) {
        this.f14678c = strArr;
    }

    public int c() {
        return this.f14678c.length / 2;
    }

    public String tt(int i10) {
        return this.f14678c[(i10 * 2) + 1];
    }

    public String c(int i10) {
        return this.f14678c[i10 * 2];
    }

    public Map<String, List<String>> tt() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            String lowerCase = c(i10).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(tt(i10));
        }
        return treeMap;
    }

    public a(c cVar) {
        List<String> list = cVar.f14679c;
        this.f14678c = (String[]) list.toArray(new String[list.size()]);
    }
}
