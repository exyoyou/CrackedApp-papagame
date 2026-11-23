package com.join.mgps.customview.text;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes3.dex */
public class a implements Html.TagHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ boolean f66996e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f66998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, String> f66999c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67000d = 0;

    public a(String tag, Context context) {
        this.f66997a = tag;
        this.f66998b = context;
    }

    private void a(int startIndex, int stopIndex, Editable editable, String style) {
        String[] strArrSplit = style.split(";");
        HashMap map = new HashMap();
        for (String str : strArrSplit) {
            String[] strArrSplit2 = str.split(":");
            if (strArrSplit2.length == 2) {
                map.put(strArrSplit2[0].trim(), strArrSplit2[1].trim());
            }
        }
        String strG = (String) map.get(TypedValues.Custom.S_COLOR);
        if (!TextUtils.isEmpty(strG)) {
            if (strG.startsWith("rgb")) {
                String[] strArrSplit3 = strG.replace("rgb(", "").replace(")", "").split(", ");
                strG = g(Integer.parseInt(strArrSplit3[0]), Integer.parseInt(strArrSplit3[1]), Integer.parseInt(strArrSplit3[2]));
            }
            try {
                editable.setSpan(new ForegroundColorSpan(Color.parseColor(strG)), startIndex, stopIndex, 33);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String str2 = (String) map.get("font-size");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            editable.setSpan(new AbsoluteSizeSpan(d(this.f66998b, Integer.parseInt(str2.split("px")[0]))), startIndex, stopIndex, 33);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void b(Editable output) {
        int length = output.length();
        String str = this.f66999c.get("style");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(this.f67000d, length, output, str);
    }

    private void c(XMLReader xmlReader) {
        try {
            Field declaredField = xmlReader.getClass().getDeclaredField("theNewElement");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(xmlReader);
            if (obj != null) {
                Field declaredField2 = obj.getClass().getDeclaredField("theAtts");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(obj);
                if (obj2 != null) {
                    Field declaredField3 = obj2.getClass().getDeclaredField("data");
                    declaredField3.setAccessible(true);
                    String[] strArr = (String[]) declaredField3.get(obj2);
                    Field declaredField4 = obj2.getClass().getDeclaredField("length");
                    declaredField4.setAccessible(true);
                    Object obj3 = declaredField4.get(obj2);
                    int iIntValue = obj3 == null ? 0 : ((Integer) obj3).intValue();
                    for (int i10 = 0; i10 < iIntValue; i10++) {
                        int i11 = i10 * 5;
                        this.f66999c.put(strArr[i11 + 1], strArr[i11 + 4]);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private static int d(Context context, float spValue) {
        return (int) ((spValue * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    private void e(Editable output) {
        this.f67000d = output.length();
    }

    private static String f(int number) {
        StringBuilder sb2 = new StringBuilder(Integer.toHexString(number & 255));
        while (sb2.length() < 2) {
            sb2.append("0");
        }
        return sb2.toString().toUpperCase();
    }

    private static String g(int r10, int g10, int b10) {
        return "#" + f(r10) + f(g10) + f(b10);
    }

    @Override // android.text.Html.TagHandler
    public void handleTag(boolean opening, String tag, Editable output, XMLReader xmlReader) {
        if (this.f66997a.equalsIgnoreCase(tag)) {
            c(xmlReader);
            if (opening) {
                e(output);
            } else {
                b(output);
                this.f66999c.clear();
            }
        }
    }
}
