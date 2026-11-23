package com.byazt.uc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 13})
public final class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f20531a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20532c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f20533n;
    public char[] sp;
    public final int tt;
    public int uj;
    public int ve;

    public tt(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f20532c = name;
        this.tt = name.length();
    }

    private char a() {
        int i10;
        int i11;
        int iC = c(this.ve);
        this.ve++;
        if (iC < 128) {
            return (char) iC;
        }
        if (iC < 192 || iC > 247) {
            return '?';
        }
        if (iC <= 223) {
            i10 = iC & 31;
            i11 = 1;
        } else if (iC <= 239) {
            i10 = iC & 15;
            i11 = 2;
        } else {
            i10 = iC & 7;
            i11 = 3;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.ve + 1;
            this.ve = i13;
            if (i13 == this.tt || this.sp[i13] != '\\') {
                return '?';
            }
            int i14 = i13 + 1;
            this.ve = i14;
            int iC2 = c(i14);
            this.ve++;
            if ((iC2 & 192) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (iC2 & 63);
        }
        return (char) i10;
    }

    private String c() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        char c10;
        int i15;
        int i16;
        char c11;
        char c12;
        while (true) {
            i10 = this.ve;
            i11 = this.tt;
            if (i10 >= i11 || this.sp[i10] != ' ') {
                break;
            }
            this.ve = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.uj = i10;
        this.ve = i10 + 1;
        while (true) {
            i12 = this.ve;
            i13 = this.tt;
            if (i12 >= i13 || (c12 = this.sp[i12]) == '=' || c12 == ' ') {
                break;
            }
            this.ve = i12 + 1;
        }
        if (i12 >= i13) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
        }
        this.f20533n = i12;
        if (this.sp[i12] == ' ') {
            while (true) {
                i15 = this.ve;
                i16 = this.tt;
                if (i15 >= i16 || (c11 = this.sp[i15]) == '=' || c11 != ' ') {
                    break;
                }
                this.ve = i15 + 1;
            }
            if (this.sp[i15] != '=' || i15 == i16) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
            }
        }
        do {
            i14 = this.ve + 1;
            this.ve = i14;
            if (i14 >= this.tt) {
                break;
            }
        } while (this.sp[i14] == ' ');
        int i17 = this.f20533n;
        int i18 = this.uj;
        if (i17 - i18 > 4) {
            char[] cArr = this.sp;
            if (cArr[i18 + 3] == '.' && (((c10 = cArr[i18]) == 'O' || c10 == 'o') && ((cArr[i18 + 1] == 'I' || cArr[i18 + 1] == 'i') && (cArr[i18 + 2] == 'D' || cArr[i18 + 2] == 'd')))) {
                this.uj = i18 + 4;
            }
        }
        char[] cArr2 = this.sp;
        int i19 = this.uj;
        return new String(cArr2, i19, i17 - i19);
    }

    private char n() {
        int i10 = this.ve + 1;
        this.ve = i10;
        if (i10 == this.tt) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
        }
        char c10 = this.sp[i10];
        if (c10 == ' ' || c10 == '%' || c10 == '\\' || c10 == '_' || c10 == '\"' || c10 == '#') {
            return c10;
        }
        switch (c10) {
            case '*':
            case '+':
            case ',':
                return c10;
            default:
                switch (c10) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c10;
                    default:
                        return a();
                }
        }
    }

    private String tt() {
        int i10 = this.ve + 1;
        this.ve = i10;
        this.uj = i10;
        this.f20533n = i10;
        while (true) {
            int i11 = this.ve;
            if (i11 == this.tt) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
            }
            char[] cArr = this.sp;
            char c10 = cArr[i11];
            if (c10 == '\"') {
                this.ve = i11 + 1;
                while (true) {
                    int i12 = this.ve;
                    if (i12 >= this.tt || this.sp[i12] != ' ') {
                        break;
                    }
                    this.ve = i12 + 1;
                }
                char[] cArr2 = this.sp;
                int i13 = this.uj;
                return new String(cArr2, i13, this.f20533n - i13);
            }
            if (c10 == '\\') {
                cArr[this.f20533n] = n();
            } else {
                cArr[this.f20533n] = c10;
            }
            this.ve++;
            this.f20533n++;
        }
    }

    private String uj() {
        int i10;
        int i11;
        char c10;
        int i12 = this.ve;
        this.uj = i12;
        this.f20533n = i12;
        while (true) {
            int i13 = this.ve;
            if (i13 >= this.tt) {
                char[] cArr = this.sp;
                int i14 = this.uj;
                return new String(cArr, i14, this.f20533n - i14);
            }
            char[] cArr2 = this.sp;
            char c11 = cArr2[i13];
            if (c11 != ' ') {
                if (c11 != ';') {
                    if (c11 == '\\') {
                        int i15 = this.f20533n;
                        this.f20533n = i15 + 1;
                        cArr2[i15] = n();
                        this.ve++;
                    } else if (c11 != '+' && c11 != ',') {
                        int i16 = this.f20533n;
                        this.f20533n = i16 + 1;
                        cArr2[i16] = c11;
                        this.ve = i13 + 1;
                    }
                }
                int i17 = this.uj;
                return new String(cArr2, i17, this.f20533n - i17);
            }
            int i18 = this.f20533n;
            this.f20531a = i18;
            this.ve = i13 + 1;
            this.f20533n = i18 + 1;
            cArr2[i18] = ' ';
            while (true) {
                i10 = this.ve;
                i11 = this.tt;
                if (i10 >= i11) {
                    break;
                }
                char[] cArr3 = this.sp;
                if (cArr3[i10] != ' ') {
                    break;
                }
                int i19 = this.f20533n;
                this.f20533n = i19 + 1;
                cArr3[i19] = ' ';
                this.ve = i10 + 1;
            }
            if (i10 == i11 || (c10 = this.sp[i10]) == ',' || c10 == '+' || c10 == ';') {
                char[] cArr4 = this.sp;
                int i20 = this.uj;
                return new String(cArr4, i20, this.f20531a - i20);
            }
        }
    }

    private String ve() {
        char[] cArr;
        char c10;
        int i10 = this.ve;
        if (i10 + 4 >= this.tt) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
        }
        this.uj = i10;
        this.ve = i10 + 1;
        while (true) {
            int i11 = this.ve;
            if (i11 == this.tt || (c10 = (cArr = this.sp)[i11]) == '+' || c10 == ',' || c10 == ';') {
                this.f20533n = i11;
                break;
            }
            if (c10 == ' ') {
                this.f20533n = i11;
                this.ve = i11 + 1;
                while (true) {
                    int i12 = this.ve;
                    if (i12 >= this.tt || this.sp[i12] != ' ') {
                        break;
                    }
                    this.ve = i12 + 1;
                }
            } else {
                if (c10 >= 'A' && c10 <= 'F') {
                    cArr[i11] = (char) (c10 + ' ');
                }
                this.ve = i11 + 1;
            }
        }
        int i13 = this.f20533n;
        int i14 = this.uj;
        int i15 = i13 - i14;
        if (i15 < 5 || (i15 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f20532c);
        }
        int i16 = i15 / 2;
        byte[] bArr = new byte[i16];
        int i17 = i14 + 1;
        for (int i18 = 0; i18 < i16; i18++) {
            bArr[i18] = (byte) c(i17);
            i17 += 2;
        }
        return new String(this.sp, this.uj, i15);
    }

    private int c(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 < this.tt) {
            char[] cArr = this.sp;
            char c10 = cArr[i10];
            if (c10 >= '0' && c10 <= '9') {
                i11 = c10 - '0';
            } else if (c10 >= 'a' && c10 <= 'f') {
                i11 = c10 - 'W';
            } else {
                if (c10 < 'A' || c10 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.f20532c);
                }
                i11 = c10 - '7';
            }
            char c11 = cArr[i13];
            if (c11 >= '0' && c11 <= '9') {
                i12 = c11 - '0';
            } else if (c11 >= 'a' && c11 <= 'f') {
                i12 = c11 - 'W';
            } else {
                if (c11 < 'A' || c11 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.f20532c);
                }
                i12 = c11 - '7';
            }
            return (i11 << 4) + i12;
        }
        throw new IllegalStateException("Malformed DN: " + this.f20532c);
    }

    public String c(String str) {
        String strTt;
        this.ve = 0;
        this.uj = 0;
        this.f20533n = 0;
        this.f20531a = 0;
        this.sp = this.f20532c.toCharArray();
        String strC = c();
        if (strC == null) {
            return null;
        }
        do {
            int i10 = this.ve;
            if (i10 == this.tt) {
                return null;
            }
            char c10 = this.sp[i10];
            if (c10 == '\"') {
                strTt = tt();
            } else if (c10 != '#') {
                strTt = (c10 == '+' || c10 == ',' || c10 == ';') ? "" : uj();
            } else {
                strTt = ve();
            }
            if (str.equalsIgnoreCase(strC)) {
                return strTt;
            }
            int i11 = this.ve;
            if (i11 >= this.tt) {
                return null;
            }
            char c11 = this.sp[i11];
            if (c11 != ',' && c11 != ';' && c11 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f20532c);
            }
            this.ve = i11 + 1;
            strC = c();
        } while (strC != null);
        throw new IllegalStateException("Malformed DN: " + this.f20532c);
    }
}
