package com.googlecode.mp4parser.boxes.apple;

import androidx.room.RoomMasterTable;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static HashMap<String, String> f33285r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33286s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33287t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33288u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33289v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33290w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33291x = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33292o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33293p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33294q;

    static {
        s();
        HashMap<String, String> map = new HashMap<>();
        f33285r = map;
        map.put("0", "English");
        f33285r.put("1", "French");
        f33285r.put("2", "German");
        f33285r.put("3", "Italian");
        f33285r.put("4", "Dutch");
        f33285r.put("5", "Swedish");
        f33285r.put("6", "Spanish");
        f33285r.put("7", "Danish");
        f33285r.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "Portuguese");
        f33285r.put("9", "Norwegian");
        f33285r.put("10", "Hebrew");
        f33285r.put("11", "Japanese");
        f33285r.put("12", "Arabic");
        f33285r.put(PointType.SIGMOB_REPORT_TRACKING, "Finnish");
        f33285r.put("14", "Greek");
        f33285r.put("15", "Icelandic");
        f33285r.put("16", "Maltese");
        f33285r.put(PointType.LOAD_READY, "Turkish");
        f33285r.put("18", "Croatian");
        f33285r.put("19", "Traditional_Chinese");
        f33285r.put(com.windmill.sdk.point.PointType.WIND_ADAPTER, "Urdu");
        f33285r.put("21", "Hindi");
        f33285r.put("22", "Thai");
        f33285r.put("23", "Korean");
        f33285r.put("24", "Lithuanian");
        f33285r.put("25", "Polish");
        f33285r.put("26", "Hungarian");
        f33285r.put("27", "Estonian");
        f33285r.put("28", "Lettish");
        f33285r.put("29", "Sami");
        f33285r.put(PointType.DOWNLOAD_TRACKING, "Faroese");
        f33285r.put("31", "Farsi");
        f33285r.put("32", "Russian");
        f33285r.put("33", "Simplified_Chinese");
        f33285r.put("34", "Flemish");
        f33285r.put("35", "Irish");
        f33285r.put("36", "Albanian");
        f33285r.put("37", "Romanian");
        f33285r.put("38", "Czech");
        f33285r.put("39", "Slovak");
        f33285r.put("40", "Slovenian");
        f33285r.put("41", "Yiddish");
        f33285r.put(RoomMasterTable.DEFAULT_ID, "Serbian");
        f33285r.put("43", "Macedonian");
        f33285r.put("44", "Bulgarian");
        f33285r.put("45", "Ukrainian");
        f33285r.put("46", "Belarusian");
        f33285r.put("47", "Uzbek");
        f33285r.put("48", "Kazakh");
        f33285r.put("49", "Azerbaijani");
        f33285r.put("50", "AzerbaijanAr");
        f33285r.put("51", "Armenian");
        f33285r.put("52", "Georgian");
        f33285r.put("53", "Moldavian");
        f33285r.put("54", "Kirghiz");
        f33285r.put("55", "Tajiki");
        f33285r.put("56", "Turkmen");
        f33285r.put("57", "Mongolian");
        f33285r.put("58", "MongolianCyr");
        f33285r.put("59", "Pashto");
        f33285r.put("60", "Kurdish");
        f33285r.put("61", "Kashmiri");
        f33285r.put("62", "Sindhi");
        f33285r.put("63", "Tibetan");
        f33285r.put("64", "Nepali");
        f33285r.put("65", "Sanskrit");
        f33285r.put("66", "Marathi");
        f33285r.put("67", "Bengali");
        f33285r.put("68", "Assamese");
        f33285r.put("69", "Gujarati");
        f33285r.put("70", "Punjabi");
        f33285r.put("71", "Oriya");
        f33285r.put("72", "Malayalam");
        f33285r.put("73", "Kannada");
        f33285r.put("74", "Tamil");
        f33285r.put("75", "Telugu");
        f33285r.put("76", "Sinhala");
        f33285r.put("77", "Burmese");
        f33285r.put("78", "Khmer");
        f33285r.put("79", "Lao");
        f33285r.put("80", "Vietnamese");
        f33285r.put("81", "Indonesian");
        f33285r.put("82", "Tagalog");
        f33285r.put("83", "MalayRoman");
        f33285r.put("84", "MalayArabic");
        f33285r.put("85", "Amharic");
        f33285r.put("87", "Galla");
        f33285r.put("87", "Oromo");
        f33285r.put("88", "Somali");
        f33285r.put("89", "Swahili");
        f33285r.put("90", "Kinyarwanda");
        f33285r.put("91", "Rundi");
        f33285r.put("92", "Nyanja");
        f33285r.put("93", "Malagasy");
        f33285r.put("94", "Esperanto");
        f33285r.put("128", "Welsh");
        f33285r.put("129", "Basque");
        f33285r.put("130", "Catalan");
        f33285r.put("131", "Latin");
        f33285r.put("132", "Quechua");
        f33285r.put("133", "Guarani");
        f33285r.put("134", "Aymara");
        f33285r.put("135", "Tatar");
        f33285r.put("136", "Uighur");
        f33285r.put("137", "Dzongkha");
        f33285r.put("138", "JavaneseRom");
        f33285r.put("32767", "Unspecified");
    }

    protected j(String str, int i10) {
        super(str);
        this.f33292o = i10;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataBox.java", j.class);
        f33286s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguageString", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "java.lang.String"), 25);
        f33287t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataType", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 43);
        f33288u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 47);
        f33289v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataCountry", "", "void"), 51);
        f33290w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 55);
        f33291x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataLanguage", "", "void"), 59);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33289v, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33293p = i10;
    }

    public void B(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33291x, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33294q = i10;
    }

    protected abstract byte[] C();

    @DoNotParseDetail
    protected void D(ByteBuffer byteBuffer) {
        byteBuffer.putInt(v() + 16);
        byteBuffer.put("data".getBytes());
        byteBuffer.putInt(this.f33292o);
        com.coremedia.iso.i.f(byteBuffer, this.f33293p);
        com.coremedia.iso.i.f(byteBuffer, this.f33294q);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        y(z(byteBuffer));
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        D(byteBuffer);
        byteBuffer.put(C());
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return v() + 16;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33288u, this, this));
        return this.f33293p;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33290w, this, this));
        return this.f33294q;
    }

    protected abstract int v();

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33287t, this, this));
        return this.f33292o;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33286s, this, this));
        HashMap<String, String> map = f33285r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f33294q);
        String str = map.get(sb2.toString());
        if (str != null) {
            return str;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[2]);
        com.coremedia.iso.i.f(byteBufferWrap, this.f33294q);
        byteBufferWrap.reset();
        return new Locale(com.coremedia.iso.g.f(byteBufferWrap)).getDisplayLanguage();
    }

    protected abstract void y(ByteBuffer byteBuffer);

    @DoNotParseDetail
    protected ByteBuffer z(ByteBuffer byteBuffer) {
        int i10 = byteBuffer.getInt();
        byteBuffer.getInt();
        this.f33292o = byteBuffer.getInt();
        short s10 = byteBuffer.getShort();
        this.f33293p = s10;
        if (s10 < 0) {
            this.f33293p = s10 + 65536;
        }
        short s11 = byteBuffer.getShort();
        this.f33294q = s11;
        if (s11 < 0) {
            this.f33294q = s11 + 65536;
        }
        int i11 = i10 - 16;
        ByteBuffer byteBuffer2 = (ByteBuffer) byteBuffer.duplicate().slice().limit(i11);
        byteBuffer.position(i11 + byteBuffer.position());
        return byteBuffer2;
    }
}
