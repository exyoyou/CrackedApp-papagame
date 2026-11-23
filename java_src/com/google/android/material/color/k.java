package com.google.android.material.color;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final short f30043a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final short f30044b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final short f30045c = 512;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final short f30046d = 513;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final short f30047e = 514;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte f30048f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte f30049g = 127;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f30050h = "color";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static byte f30051i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final d f30052j = new d(1, "android");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Comparator<b> f30053k = new a();

    class a implements Comparator<b> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar.f30056c - bVar2.f30056c;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte f30054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte f30055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final short f30056c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f30057d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ColorInt
        private final int f30058e;

        b(int i10, String str, int i11) {
            this.f30057d = str;
            this.f30058e = i11;
            this.f30056c = (short) (65535 & i10);
            this.f30055b = (byte) ((i10 >> 16) & 255);
            this.f30054a = (byte) ((i10 >> 24) & 255);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final short f30059f = 288;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final int f30060g = 128;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f30062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final h f30063c = new h(false, "?1", "?2", "?3", "?4", "?5", "color");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f30064d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final C0600k f30065e;

        c(d dVar, List<b> list) {
            this.f30062b = dVar;
            String[] strArr = new String[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                strArr[i10] = list.get(i10).f30057d;
            }
            this.f30064d = new h(true, strArr);
            this.f30065e = new C0600k(list);
            this.f30061a = new e(k.f30045c, f30059f, a());
        }

        int a() {
            return this.f30063c.a() + MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE + this.f30064d.a() + this.f30065e.b();
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f30061a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(k.j(this.f30062b.f30066a));
            char[] charArray = this.f30062b.f30067b.toCharArray();
            for (int i10 = 0; i10 < 128; i10++) {
                if (i10 < charArray.length) {
                    byteArrayOutputStream.write(k.h(charArray[i10]));
                } else {
                    byteArrayOutputStream.write(k.h((char) 0));
                }
            }
            byteArrayOutputStream.write(k.j(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
            byteArrayOutputStream.write(k.j(0));
            byteArrayOutputStream.write(k.j(this.f30063c.a() + MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
            byteArrayOutputStream.write(k.j(0));
            byteArrayOutputStream.write(k.j(0));
            this.f30063c.c(byteArrayOutputStream);
            this.f30064d.c(byteArrayOutputStream);
            this.f30065e.c(byteArrayOutputStream);
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f30066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f30067b;

        d(int i10, String str) {
            this.f30066a = i10;
            this.f30067b = str;
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final short f30068a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final short f30069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f30070c;

        e(short s10, short s11, int i10) {
            this.f30068a = s10;
            this.f30069b = s11;
            this.f30070c = i10;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k.k(this.f30068a));
            byteArrayOutputStream.write(k.k(this.f30069b));
            byteArrayOutputStream.write(k.j(this.f30070c));
        }
    }

    private static class f {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final short f30071c = 8;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final short f30072d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final short f30073e = 8;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte f30074f = 28;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final int f30075g = 16;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f30076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f30077b;

        f(int i10, @ColorInt int i11) {
            this.f30076a = i10;
            this.f30077b = i11;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k.k((short) 8));
            byteArrayOutputStream.write(k.k((short) 2));
            byteArrayOutputStream.write(k.j(this.f30076a));
            byteArrayOutputStream.write(k.k((short) 8));
            byteArrayOutputStream.write(new byte[]{0, 28});
            byteArrayOutputStream.write(k.j(this.f30077b));
        }
    }

    private static class g {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final short f30078e = 12;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f30080b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<c> f30082d = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final h f30081c = new h(new String[0]);

        g(Map<d, List<b>> map) {
            this.f30080b = map.size();
            for (Map.Entry<d, List<b>> entry : map.entrySet()) {
                List<b> value = entry.getValue();
                Collections.sort(value, k.f30053k);
                this.f30082d.add(new c(entry.getKey(), value));
            }
            this.f30079a = new e((short) 2, f30078e, a());
        }

        private int a() {
            Iterator<c> it2 = this.f30082d.iterator();
            int iA = 0;
            while (it2.hasNext()) {
                iA += it2.next().a();
            }
            return this.f30081c.a() + 12 + iA;
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f30079a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(k.j(this.f30080b));
            this.f30081c.c(byteArrayOutputStream);
            Iterator<c> it2 = this.f30082d.iterator();
            while (it2.hasNext()) {
                it2.next().b(byteArrayOutputStream);
            }
        }
    }

    private static class h {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final short f30083m = 28;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final int f30084n = 256;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final int f30085o = -1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f30087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f30088c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f30089d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f30090e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<Integer> f30091f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final List<Integer> f30092g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final List<byte[]> f30093h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final List<List<i>> f30094i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f30095j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f30096k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f30097l;

        h(String... strArr) {
            this(false, strArr);
        }

        private Pair<byte[], List<i>> b(String str) {
            return new Pair<>(this.f30095j ? k.m(str) : k.l(str), Collections.emptyList());
        }

        int a() {
            return this.f30097l;
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f30086a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(k.j(this.f30087b));
            byteArrayOutputStream.write(k.j(this.f30088c));
            byteArrayOutputStream.write(k.j(this.f30095j ? 256 : 0));
            byteArrayOutputStream.write(k.j(this.f30089d));
            byteArrayOutputStream.write(k.j(this.f30090e));
            Iterator<Integer> it2 = this.f30091f.iterator();
            while (it2.hasNext()) {
                byteArrayOutputStream.write(k.j(it2.next().intValue()));
            }
            Iterator<Integer> it3 = this.f30092g.iterator();
            while (it3.hasNext()) {
                byteArrayOutputStream.write(k.j(it3.next().intValue()));
            }
            Iterator<byte[]> it4 = this.f30093h.iterator();
            while (it4.hasNext()) {
                byteArrayOutputStream.write(it4.next());
            }
            int i10 = this.f30096k;
            if (i10 > 0) {
                byteArrayOutputStream.write(new byte[i10]);
            }
            Iterator<List<i>> it5 = this.f30094i.iterator();
            while (it5.hasNext()) {
                Iterator<i> it6 = it5.next().iterator();
                while (it6.hasNext()) {
                    it6.next().b(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(k.j(-1));
            }
        }

        h(boolean z10, String... strArr) {
            this.f30091f = new ArrayList();
            this.f30092g = new ArrayList();
            this.f30093h = new ArrayList();
            this.f30094i = new ArrayList();
            this.f30095j = z10;
            int length = 0;
            for (String str : strArr) {
                Pair<byte[], List<i>> pairB = b(str);
                this.f30091f.add(Integer.valueOf(length));
                Object obj = pairB.first;
                length += ((byte[]) obj).length;
                this.f30093h.add((byte[]) obj);
                this.f30094i.add((List) pairB.second);
            }
            int size = 0;
            for (List<i> list : this.f30094i) {
                for (i iVar : list) {
                    this.f30091f.add(Integer.valueOf(length));
                    length += iVar.f30098a.length;
                    this.f30093h.add(iVar.f30098a);
                }
                this.f30092g.add(Integer.valueOf(size));
                size += (list.size() * 12) + 4;
            }
            int i10 = length % 4;
            int i11 = i10 == 0 ? 0 : 4 - i10;
            this.f30096k = i11;
            int size2 = this.f30093h.size();
            this.f30087b = size2;
            this.f30088c = this.f30093h.size() - strArr.length;
            boolean z11 = this.f30093h.size() - strArr.length > 0;
            if (!z11) {
                this.f30092g.clear();
                this.f30094i.clear();
            }
            int size3 = (size2 * 4) + 28 + (this.f30092g.size() * 4);
            this.f30089d = size3;
            int i12 = length + i11;
            this.f30090e = z11 ? size3 + i12 : 0;
            int i13 = size3 + i12 + (z11 ? size : 0);
            this.f30097l = i13;
            this.f30086a = new e((short) 1, f30083m, i13);
        }
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f30098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f30099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f30100c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f30101d;

        private i() {
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k.j(this.f30099b));
            byteArrayOutputStream.write(k.j(this.f30100c));
            byteArrayOutputStream.write(k.j(this.f30101d));
        }
    }

    private static class j {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f30102f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final short f30103g = 84;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final byte f30104h = 64;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f30106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final byte[] f30107c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f30108d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final f[] f30109e;

        j(List<b> list, Set<Short> set, int i10) {
            byte[] bArr = new byte[64];
            this.f30107c = bArr;
            this.f30106b = i10;
            bArr[0] = f30104h;
            this.f30109e = new f[list.size()];
            for (int i11 = 0; i11 < list.size(); i11++) {
                this.f30109e[i11] = new f(i11, list.get(i11).f30058e);
            }
            this.f30108d = new int[i10];
            int i12 = 0;
            for (short s10 = 0; s10 < i10; s10 = (short) (s10 + 1)) {
                if (set.contains(Short.valueOf(s10))) {
                    this.f30108d[s10] = i12;
                    i12 += 16;
                } else {
                    this.f30108d[s10] = -1;
                }
            }
            this.f30105a = new e(k.f30046d, f30103g, a());
        }

        private int b() {
            return c() + 84;
        }

        private int c() {
            return this.f30108d.length * 4;
        }

        int a() {
            return b() + (this.f30109e.length * 16);
        }

        void d(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f30105a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{k.f30051i, 0, 0, 0});
            byteArrayOutputStream.write(k.j(this.f30106b));
            byteArrayOutputStream.write(k.j(b()));
            byteArrayOutputStream.write(this.f30107c);
            for (int i10 : this.f30108d) {
                byteArrayOutputStream.write(k.j(i10));
            }
            for (f fVar : this.f30109e) {
                fVar.a(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.color.k$k, reason: collision with other inner class name */
    private static class C0600k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final short f30110e = 16;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f30111f = 1073741824;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f30112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f30113b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f30114c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final j f30115d;

        C0600k(List<b> list) {
            this.f30113b = list.get(list.size() - 1).f30056c + 1;
            HashSet hashSet = new HashSet();
            Iterator<b> it2 = list.iterator();
            while (it2.hasNext()) {
                hashSet.add(Short.valueOf(it2.next().f30056c));
            }
            this.f30114c = new int[this.f30113b];
            for (short s10 = 0; s10 < this.f30113b; s10 = (short) (s10 + 1)) {
                if (hashSet.contains(Short.valueOf(s10))) {
                    this.f30114c[s10] = 1073741824;
                }
            }
            this.f30112a = new e(k.f30047e, (short) 16, a());
            this.f30115d = new j(list, hashSet, this.f30113b);
        }

        private int a() {
            return (this.f30113b * 4) + 16;
        }

        int b() {
            return a() + this.f30115d.a();
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f30112a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{k.f30051i, 0, 0, 0});
            byteArrayOutputStream.write(k.j(this.f30113b));
            for (int i10 : this.f30114c) {
                byteArrayOutputStream.write(k.j(i10));
            }
            this.f30115d.d(byteArrayOutputStream);
        }
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] h(char c10) {
        return new byte[]{(byte) (c10 & 255), (byte) ((c10 >> '\b') & 255)};
    }

    static byte[] i(Context context, Map<Integer, Integer> map) throws IOException {
        d dVar;
        if (map.entrySet().isEmpty()) {
            throw new IllegalArgumentException("No color resources provided for harmonization.");
        }
        d dVar2 = new d(127, context.getPackageName());
        HashMap map2 = new HashMap();
        b bVar = null;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            b bVar2 = new b(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
            if (!context.getResources().getResourceTypeName(entry.getKey().intValue()).equals("color")) {
                throw new IllegalArgumentException("Non color resource found: name=" + bVar2.f30057d + ", typeId=" + Integer.toHexString(bVar2.f30055b & 255));
            }
            if (bVar2.f30054a == 1) {
                dVar = f30052j;
            } else {
                if (bVar2.f30054a != 127) {
                    throw new IllegalArgumentException("Not supported with unknown package id: " + ((int) bVar2.f30054a));
                }
                dVar = dVar2;
            }
            if (!map2.containsKey(dVar)) {
                map2.put(dVar, new ArrayList());
            }
            ((List) map2.get(dVar)).add(bVar2);
            bVar = bVar2;
        }
        byte b10 = bVar.f30055b;
        f30051i = b10;
        if (b10 == 0) {
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new g(map2).b(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] j(int i10) {
        return new byte[]{(byte) (i10 & 255), (byte) ((i10 >> 8) & 255), (byte) ((i10 >> 16) & 255), (byte) ((i10 >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] k(short s10) {
        return new byte[]{(byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE), (byte) ((s10 >> 8) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] l(String str) {
        char[] charArray = str.toCharArray();
        int length = (charArray.length * 2) + 4;
        byte[] bArr = new byte[length];
        byte[] bArrK = k((short) charArray.length);
        bArr[0] = bArrK[0];
        bArr[1] = bArrK[1];
        for (int i10 = 0; i10 < charArray.length; i10++) {
            byte[] bArrH = h(charArray[i10]);
            int i11 = i10 * 2;
            bArr[i11 + 2] = bArrH[0];
            bArr[i11 + 3] = bArrH[1];
        }
        bArr[length - 2] = 0;
        bArr[length - 1] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] m(String str) {
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        byte length = (byte) bytes.length;
        int length2 = bytes.length + 3;
        byte[] bArr = new byte[length2];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 - 1] = 0;
        return bArr;
    }
}
