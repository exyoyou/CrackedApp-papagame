package cn.fly.tools.utils;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f2299a;

    /* JADX INFO: renamed from: cn.fly.tools.utils.f$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2300a;

        static {
            int[] iArr = new int[a.values().length];
            f2300a = iArr;
            try {
                iArr[a.MIUI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2300a[a.EMUI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2300a[a.AMIGO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2300a[a.FLYME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2300a[a.LENOVO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2300a[a.ONEUI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2300a[a.COLOR_OS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2300a[a.FUNTOUCH_OS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2300a[a.EUI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2300a[a.SENSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2300a[a.GOOGLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2300a[a.SMARTISAN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2300a[a.ONEPLUS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2300a[a.YUNOS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2300a[a.QIHOO.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2300a[a.NUBIA.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2300a[a.LGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private enum a {
        MIUI(cn.fly.commons.o.a("006%eidi^d7dkdfdi")),
        EMUI(cn.fly.commons.o.a("006h0dg?d]fg>f5di")),
        FLYME(cn.fly.commons.o.a("005Ldf7fYdigddg")),
        ONEUI(cn.fly.commons.o.a("007Efi_d)dffidgFe0ej")),
        COLOR_OS(cn.fly.commons.o.a("004@dkMjjFdk")),
        FUNTOUCH_OS(cn.fly.commons.o.a("0040dddidddk")),
        EUI(cn.fly.commons.o.a("004gfi2dd")),
        SENSE(cn.fly.commons.o.a("003hic")),
        GOOGLE(cn.fly.commons.o.a("006Fejdkdkej8gf")),
        LENOVO(cn.fly.commons.o.a("006gfeDdkdddk")),
        SMARTISAN(cn.fly.commons.o.a("006ch,dgdigddi")),
        ONEPLUS(cn.fly.commons.o.a("007?dk9efjg:dgfi")),
        YUNOS(cn.fly.commons.o.a("005:ecdgReLdkfi")),
        QIHOO(cn.fly.commons.o.a("005$dedi%hLdkdk")),
        NUBIA(cn.fly.commons.o.a("005eRdgffdi0d")),
        LGE(cn.fly.commons.o.a("002g%ej")),
        AMIGO(cn.fly.commons.o.a("005'hgdiVeg2di")),
        OTHER("");


        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private String f2320s;

        a(String str) {
            this.f2320s = str;
        }

        public String a() {
            return this.f2320s;
        }
    }

    private f() {
    }

    public static f a() {
        if (f2299a == null) {
            synchronized (f.class) {
                if (f2299a == null) {
                    f2299a = new f();
                }
            }
        }
        return f2299a;
    }

    private a c() {
        if (!TextUtils.isEmpty(a("ro.miui.ui.version.code")) || !TextUtils.isEmpty(a(cn.fly.commons.o.a("023IdjdkdldfdidgdidldgdidlddAfJdjfididk9eJdlJedTdf*f"))) || !TextUtils.isEmpty(a("ro.miui.internal.storage"))) {
            return a.MIUI;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("0214djdkdlffdgdiJgJdcdlddUf?djfididk$eZdl-f8dfdgdi"))) || !TextUtils.isEmpty(a("ro.build.hw_emui_api_level")) || !TextUtils.isEmpty(a("ro.confg.hw_systemversion"))) {
            return a.EMUI;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("026jfKdjfidifi<i;dlfiecfidldgfiBf>dlefSg3ecdf$f7dldiGcBdkPe"))) || !TextUtils.isEmpty(a(cn.fly.commons.o.a("026<djdkdldf7fRdigddgdlfi+fiIdgYj[fgdigd(d7djdcdlef2gVecdf,f"))) || !TextUtils.isEmpty(a(cn.fly.commons.o.a("018Kdjdkdlef_gYecdfOf8dl2jHdgffRg+difi>hf@dc")))) {
            return a.FLYME;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("024c7dkdfdlfiXdYdffidg6eVejdlfiIjf?ejdldcdifiUd?ffSgf"))) || !TextUtils.isEmpty(a("init.svc.health-hal-2-1-samsung"))) {
            return a.ONEUI;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("0240djdkdlffdgdiEg5dcdlddSfAdjfididk9e[dldk'jj9dkdjdkdf")))) {
            return a.COLOR_OS;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("027OdjdkdldddidddkdldkfidlffdgdiEgUdcdldcdifi.jgd]ecdldidc"))) || !TextUtils.isEmpty(a(cn.fly.commons.o.a("018Idjdkdldddidddkdldkfidldd]fRdjfididk4e")))) {
            return a.FUNTOUCH_OS;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("023KdjdkdlOgfiKdddldjQfgfdTfi1fYdldd$fBdjfididk'e")))) {
            return a.EUI;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("022 djdkdlffdgdiCg0dcdlfi3fe*fiDfTdlddNfHdjfididkRe")))) {
            return a.SENSE;
        }
        if (cn.fly.commons.o.a("014de@dcdjdkdidchkejdkdkej(gf").equals(a(cn.fly.commons.o.a("026^djdkdl'cCdkdfdlejdkdkej9gf9dl?cg3diQfei^didcff-dZfiKf")))) {
            return a.GOOGLE;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("0206djdkdlfidfZdLdjSi'difi<deYdlddVf<djfididkLe")))) {
            return a.SMARTISAN;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("014?djdkdldjdkdfdlddPfEdjfididk2e")))) {
            return a.ONEPLUS;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("020BdjdkdlWcidJdlecdg%e+dkfidlddYf_djfididkCe")))) {
            return a.YUNOS;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("018'djdkdlffdgdi<g:dcdldgdidd f djfididk%e")))) {
            return a.QIHOO;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("023;djdkdlffdgdi4gUdcdl!e>dgffdiCdXdldjdkdfdl4c>dkdc5f"))) || !TextUtils.isEmpty(a(cn.fly.commons.o.a("015.djdkdlffdgdi*g$dcdldjdkdfdldidc")))) {
            return a.NUBIA;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("021AfiecfidlKgGejZfJdlWg+ejdfdcdfdhdd7fWdjfididk[e")))) {
            return a.LGE;
        }
        if (!TextUtils.isEmpty(a(cn.fly.commons.o.a("019Qdjdkdlffdgdi%g(dcdldcdifi[jgdVecdldidc"))) && a(cn.fly.commons.o.a("019]djdkdlffdgdiBgYdcdldcdifi<jgd$ecdldidc")).matches("amigo([\\d.]+)[a-zA-Z]*")) {
            return a.AMIGO;
        }
        for (a aVar : a.values()) {
            if (aVar.a().equalsIgnoreCase(DH.SyncMtd.getManufacturerForFly())) {
                return aVar;
            }
        }
        return a.OTHER;
    }

    public String b() {
        String strA;
        switch (AnonymousClass1.f2300a[c().ordinal()]) {
            case 1:
                strA = a(cn.fly.commons.o.a("023Sdjdkdldfdidgdidldgdidldd_fZdjfididk[e$dlLed6df_f"));
                break;
            case 2:
                strA = a(cn.fly.commons.o.a("021]djdkdlffdgdiXgHdcdldd0f7djfididkWe0dl+fZdfdgdi"));
                break;
            case 3:
            case 4:
                strA = a(cn.fly.commons.o.a("019)djdkdlffdgdiFgFdcdldcdifiCjgd;ecdldidc"));
                break;
            case 5:
            case 6:
                strA = a(cn.fly.commons.o.a("028DdjdkdlffdgdiJg@dcdlddLf]djfididk=e.dldi-ec]dj<fTdf3feidg"));
                break;
            case 7:
                strA = a(cn.fly.commons.o.a("0249djdkdlffdgdiQgHdcdlddAfKdjfididk8e<dldk-jjAdkdjdkdf"));
                break;
            case 8:
                strA = a(cn.fly.commons.o.a("027)djdkdldddidddkdldkfidlffdgdiSg7dcdldcdifiDjgdNecdldidc"));
                if (TextUtils.isEmpty(strA)) {
                    strA = a(cn.fly.commons.o.a("018%djdkdldddidddkdldkfidlddVfYdjfididk7e"));
                }
                break;
            case 9:
                strA = a(cn.fly.commons.o.a("023SdjdkdlSgfiCdddldjEfgfd,fiPfAdlddJfJdjfididk,e"));
                break;
            case 10:
                strA = a(cn.fly.commons.o.a("022IdjdkdlffdgdiWg>dcdlfi]fe^fiTf[dldd*f,djfididkVe"));
                break;
            case 11:
                strA = a(cn.fly.commons.o.a("024LdjdkdlffdgdiFg1dcdlddTf-djfididkTeZdldj)fgfd=fiPf"));
                break;
            case 12:
                strA = a(cn.fly.commons.o.a("020_djdkdlfidfBd2dj$i4difiWde7dldd,f7djfididkEe"));
                break;
            case 13:
                strA = a(cn.fly.commons.o.a("014_djdkdldjdkdfdldd2fGdjfididkNe"));
                break;
            case 14:
                strA = a(cn.fly.commons.o.a("020YdjdkdlLcid@dlecdgKeAdkfidlddMfKdjfididk'e"));
                break;
            case 15:
                strA = a(cn.fly.commons.o.a("018NdjdkdlffdgdiZg4dcdldgdidd1f djfididk:e"));
                break;
            case 16:
                strA = a(cn.fly.commons.o.a("023KdjdkdlffdgdiFgEdcdlOe dgffdiQd,dldjdkdfdl]cMdkdc%f"));
                if (TextUtils.isEmpty(strA)) {
                    strA = a(cn.fly.commons.o.a("015GdjdkdlffdgdiWgMdcdldjdkdfdldidc"));
                }
                break;
            case 17:
                strA = a(cn.fly.commons.o.a("021YfiecfidlCg$ejPfSdlOgOejdfdcdfdhddXfAdjfididkPe"));
                break;
            default:
                strA = a(cn.fly.commons.o.a("019[djdkdlffdgdiWg+dcdldcdifi>jgdAecdldidc"));
                break;
        }
        return TextUtils.isEmpty(strA) ? a(cn.fly.commons.o.a("019UdjdkdlffdgdiMgWdcdldcdifiNjgdPecdldidc")) : strA;
    }

    private String a(String str) {
        return DH.SyncMtd.getSystemProperties(str);
    }
}
