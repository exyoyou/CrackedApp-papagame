package com.sigmob.sdk.archives.tar;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class a implements com.sigmob.sdk.archives.a, e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f78715b = 31;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f78716c = 16877;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f78717d = 33188;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f78718e = 1000;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f78719ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f78720ad;
    private int ae;
    private int af;
    private long ag;
    private long ah;
    private byte ai;
    private String aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private int ao;
    private int ap;
    private boolean aq;
    private long ar;
    private File as;

    private a() {
        this.ak = "ustar\u0000";
        this.al = e.V;
        this.f78719ac = "";
        this.aj = "";
        String property = System.getProperty("user.name", "");
        property = property.length() > 31 ? property.substring(0, 31) : property;
        this.ae = 0;
        this.af = 0;
        this.am = property;
        this.an = "";
        this.as = null;
    }

    private int c(byte[] header) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(header, 257, 6);
        if (byteBufferWrap.compareTo(ByteBuffer.wrap(e.W.getBytes())) == 0) {
            return 2;
        }
        return byteBufferWrap.compareTo(ByteBuffer.wrap("ustar\u0000".getBytes())) == 0 ? 3 : 0;
    }

    @Override // com.sigmob.sdk.archives.a
    public String a() {
        return this.f78719ac.toString();
    }

    @Override // com.sigmob.sdk.archives.a
    public long b() {
        return this.ag;
    }

    @Override // com.sigmob.sdk.archives.a
    public Date d() {
        return j();
    }

    public String e() {
        return this.aj.toString();
    }

    public boolean equals(Object it2) {
        if (it2 == null || getClass() != it2.getClass()) {
            return false;
        }
        return a((a) it2);
    }

    public int f() {
        return this.ae;
    }

    public int g() {
        return this.af;
    }

    public String h() {
        return this.am.toString();
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String i() {
        return this.an.toString();
    }

    public Date j() {
        return new Date(this.ah * 1000);
    }

    public File k() {
        return this.as;
    }

    public int l() {
        return this.f78720ad;
    }

    public boolean m() {
        return this.aq;
    }

    public long n() {
        return this.ar;
    }

    public boolean o() {
        return this.ai == 83;
    }

    public boolean p() {
        return this.ai == 76 && this.f78719ac.toString().equals(e.f78743ab);
    }

    public boolean q() {
        byte b10 = this.ai;
        return b10 == 120 || b10 == 88;
    }

    public boolean r() {
        return this.ai == 103;
    }

    public boolean s() {
        File file = this.as;
        if (file != null) {
            return file.isFile();
        }
        byte b10 = this.ai;
        if (b10 == 0 || b10 == 48) {
            return true;
        }
        return !a().endsWith(net.lingala.zip4j.util.e.F0);
    }

    public boolean t() {
        return this.ai == 50;
    }

    public boolean u() {
        return this.ai == 49;
    }

    public boolean v() {
        return this.ai == 51;
    }

    public boolean w() {
        return this.ai == 52;
    }

    public boolean x() {
        return this.ai == 54;
    }

    public a[] y() {
        File file = this.as;
        if (file == null || !file.isDirectory()) {
            return new a[0];
        }
        String[] list = this.as.list();
        a[] aVarArr = new a[list.length];
        for (int i10 = 0; i10 < list.length; i10++) {
            aVarArr[i10] = new a(new File(this.as, list[i10]));
        }
        return aVarArr;
    }

    public a(File file) {
        this(file, a(file.getPath(), false));
    }

    private static String a(String fileName, boolean preserveLeadingSlashes) {
        int iIndexOf;
        String lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
        if (lowerCase != null) {
            if (lowerCase.startsWith("windows")) {
                if (fileName.length() > 2) {
                    char cCharAt = fileName.charAt(0);
                    if (fileName.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        fileName = fileName.substring(2);
                    }
                }
            } else if (lowerCase.indexOf("netware") > -1 && (iIndexOf = fileName.indexOf(58)) != -1) {
                fileName = fileName.substring(iIndexOf + 1);
            }
        }
        String strReplace = fileName.replace(File.separatorChar, '/');
        while (!preserveLeadingSlashes && strReplace.startsWith(net.lingala.zip4j.util.e.F0)) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    public void b(int userId) {
        this.ae = userId;
    }

    public void c(int groupId) {
        this.af = groupId;
    }

    public void d(String groupName) {
        this.an = groupName;
    }

    public a(File file, String fileName) {
        this();
        this.as = file;
        this.aj = "";
        if (file.isDirectory()) {
            this.f78720ad = f78716c;
            this.ai = e.M;
            int length = fileName.length();
            if (length == 0 || fileName.charAt(length - 1) != '/') {
                fileName = fileName + net.lingala.zip4j.util.e.F0;
            }
            this.f78719ac = fileName;
            this.ag = 0L;
        } else {
            this.f78720ad = f78717d;
            this.ai = e.H;
            this.ag = file.length();
            this.f78719ac = fileName;
        }
        this.ah = file.lastModified() / 1000;
        this.ao = 0;
        this.ap = 0;
    }

    public void a(int mode) {
        this.f78720ad = mode;
    }

    public void b(long size) {
        if (size <= e.f78751m && size >= 0) {
            this.ag = size;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + size);
    }

    public void c(String userName) {
        this.am = userName;
    }

    public a(String name) {
        this(name, false);
    }

    public void a(int userId, int groupId) {
        b(userId);
        c(groupId);
    }

    public void b(String link) {
        this.aj = link;
    }

    @Override // com.sigmob.sdk.archives.a
    public boolean c() {
        File file = this.as;
        if (file != null) {
            return file.isDirectory();
        }
        if (this.ai == 53) {
            return true;
        }
        return a().endsWith(net.lingala.zip4j.util.e.F0);
    }

    public a(String name, byte linkFlag) {
        this(name);
        this.ai = linkFlag;
        if (linkFlag == 76) {
            this.ak = e.W;
            this.al = e.X;
        }
    }

    public void a(long time) {
        this.ah = time / 1000;
    }

    public void b(byte[] header) {
        this.f78719ac = f.b(header, 0, 100);
        this.f78720ad = (int) f.a(header, 100, 8);
        this.ae = (int) f.a(header, 108, 8);
        this.af = (int) f.a(header, 116, 8);
        this.ag = f.a(header, 124, 12);
        this.ah = f.a(header, 136, 12);
        this.ai = header[156];
        this.aj = f.b(header, 157, 100);
        this.ak = f.b(header, 257, 6);
        this.al = f.b(header, 263, 2);
        this.am = f.b(header, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 32);
        this.an = f.b(header, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, 32);
        this.ao = (int) f.a(header, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION, 8);
        this.ap = (int) f.a(header, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, 8);
        if (c(header) == 2) {
            this.aq = f.a(header, 482);
            this.ar = f.a(header, 483, 12);
            return;
        }
        String strB = f.b(header, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 155);
        if (c() && !this.f78719ac.endsWith(net.lingala.zip4j.util.e.F0)) {
            this.f78719ac += net.lingala.zip4j.util.e.F0;
        }
        if (strB.length() > 0) {
            this.f78719ac = strB + net.lingala.zip4j.util.e.F0 + this.f78719ac;
        }
    }

    public a(String name, boolean preserveLeadingSlashes) {
        this();
        String strA = a(name, preserveLeadingSlashes);
        boolean zEndsWith = strA.endsWith(net.lingala.zip4j.util.e.F0);
        this.ao = 0;
        this.ap = 0;
        this.f78719ac = strA;
        this.f78720ad = zEndsWith ? f78716c : f78717d;
        this.ai = zEndsWith ? e.M : e.H;
        this.ae = 0;
        this.af = 0;
        this.ag = 0L;
        this.ah = new Date().getTime() / 1000;
        this.aj = "";
        this.am = "";
        this.an = "";
        this.ao = 0;
        this.ap = 0;
    }

    public void a(String name) {
        this.f78719ac = a(name, false);
    }

    public boolean b(a desc) {
        return desc.a().startsWith(a());
    }

    public a(byte[] headerBuf) {
        this();
        b(headerBuf);
    }

    public void a(String userName, String groupName) {
        c(userName);
        d(groupName);
    }

    public void a(Date time) {
        this.ah = time.getTime() / 1000;
    }

    public void a(byte[] outbuf) {
        int iC = f.c(this.ah, outbuf, f.c(this.ag, outbuf, f.b(this.af, outbuf, f.b(this.ae, outbuf, f.b(this.f78720ad, outbuf, f.a(this.f78719ac, outbuf, 0, 100), 8), 8), 8), 12), 12);
        int i10 = iC;
        int i11 = 0;
        while (i11 < 8) {
            outbuf[i10] = 32;
            i11++;
            i10++;
        }
        outbuf[i10] = this.ai;
        for (int iB = f.b(this.ap, outbuf, f.b(this.ao, outbuf, f.a(this.an, outbuf, f.a(this.am, outbuf, f.a(this.al, outbuf, f.a(this.ak, outbuf, f.a(this.aj, outbuf, i10 + 1, 100), 6), 2), 32), 32), 8), 8); iB < outbuf.length; iB++) {
            outbuf[iB] = 0;
        }
        f.d(f.a(outbuf), outbuf, iC, 8);
    }

    public boolean a(a it2) {
        return a().equals(it2.a());
    }
}
