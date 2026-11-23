package com.byazt.gqp;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 72})
public final class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f14682c = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Pattern tt = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14683a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f14684n;
    public final String uj;
    public final String ve;

    public da(String str, String str2, String str3, String str4) {
        this.ve = str;
        this.uj = str2;
        this.f14684n = str3;
        this.f14683a = str4;
    }

    public static da c(String str) {
        Matcher matcher = f14682c.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String strGroup = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = strGroup.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = tt.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            if ("charset".equalsIgnoreCase(matcher2.group(1))) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 == null) {
                    strGroup2 = matcher2.group(3);
                } else if (strGroup2.startsWith("'") && strGroup2.endsWith("'") && strGroup2.length() > 2) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                }
                if (str2 != null && !str2.equalsIgnoreCase(strGroup2)) {
                    return null;
                }
                str2 = strGroup2;
            }
        }
        return new da(str, lowerCase, lowerCase2, str2);
    }

    public boolean equals(Object obj) {
        return (obj instanceof da) && ((da) obj).ve.equals(this.ve);
    }

    public int hashCode() {
        return this.ve.hashCode();
    }

    public String toString() {
        return this.ve;
    }

    public String tt() {
        return this.f14684n;
    }

    public Charset ve() {
        return c((Charset) null);
    }

    public String c() {
        return this.uj;
    }

    public Charset c(Charset charset) {
        try {
            String str = this.f14683a;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
