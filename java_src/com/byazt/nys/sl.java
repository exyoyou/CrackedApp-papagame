package com.byazt.nys;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 158})
public class sl implements com.byazt.uk.da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f17720c;

    private SharedPreferences c() {
        Context context = TTAppContextHolder.getContext();
        if (context != null && this.f17720c == null) {
            String string = tt.tt(context, tt("09152a11360f011014022a1c2f1f3a1513070712"), 0).getString(tt("00000000001815"), null);
            if (TextUtils.isEmpty(string)) {
                string = tt("0a041b14330e3a1a090f");
            }
            SharedPreferences sharedPreferencesTt = tt.tt(context, string, 0);
            this.f17720c = sharedPreferencesTt;
            if (!sharedPreferencesTt.getBoolean("0000000000060c1e0804011a30053a1d150b10", false)) {
                c(tt.tt(context, tt("0a041b14330e3a141f11142c3b0a1118251605"), 0), this.f17720c, "0000000000060c1e0804011a30053a1d150b10", true);
            }
        }
        return this.f17720c;
    }

    private String uj(String str) {
        return (str == null || str.isEmpty()) ? "" : c(c(str.getBytes(), "zeus_key".getBytes()));
    }

    private byte[] ve(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return bArr;
    }

    @Override // com.byazt.uk.da
    public String tt(String str, String str2) {
        SharedPreferences sharedPreferencesC = c();
        return sharedPreferencesC != null ? sharedPreferencesC.getString(str, str2) : str2;
    }

    @Override // com.byazt.uk.da
    public void tt(String str, int i10) {
        SharedPreferences sharedPreferencesC = c();
        if (sharedPreferencesC != null) {
            sharedPreferencesC.edit().putInt(str, i10).apply();
        }
    }

    @Override // com.byazt.uk.da
    public boolean tt(String str, boolean z10) {
        SharedPreferences sharedPreferencesC = c();
        return sharedPreferencesC != null ? sharedPreferencesC.getBoolean(str, z10) : z10;
    }

    private String tt(String str) {
        return new String(c(ve(str), "zeus_key".getBytes()));
    }

    private void c(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2, String str, boolean z10) {
        Map<String, ?> all = sharedPreferences.getAll();
        if (!all.isEmpty()) {
            SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
            Iterator<String> it2 = all.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                Object obj = all.get(next);
                if (z10) {
                    next = uj(next);
                }
                if (obj instanceof String) {
                    editorEdit.putString(next, (String) obj);
                } else if (obj instanceof Integer) {
                    editorEdit.putInt(next, ((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    editorEdit.putLong(next, ((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    editorEdit.putFloat(next, ((Float) obj).floatValue());
                } else if (obj instanceof Boolean) {
                    editorEdit.putBoolean(next, ((Boolean) obj).booleanValue());
                }
                editorEdit.apply();
            }
            return;
        }
        sharedPreferences2.edit().putBoolean(str, true).apply();
    }

    @Override // com.byazt.uk.da
    public void c(String str, String str2) {
        SharedPreferences sharedPreferencesC = c();
        if (sharedPreferencesC != null) {
            sharedPreferencesC.edit().putString(str, str2).apply();
        }
    }

    @Override // com.byazt.uk.da
    public int c(String str, int i10) {
        SharedPreferences sharedPreferencesC = c();
        return sharedPreferencesC != null ? sharedPreferencesC.getInt(str, i10) : i10;
    }

    @Override // com.byazt.uk.da
    public void c(String str, boolean z10) {
        SharedPreferences sharedPreferencesC = c();
        if (sharedPreferencesC != null) {
            sharedPreferencesC.edit().putBoolean(str, z10).apply();
        }
    }

    @Override // com.byazt.uk.da
    public void c(String str) {
        SharedPreferences sharedPreferencesC = c();
        if (sharedPreferencesC != null) {
            sharedPreferencesC.edit().remove(str).apply();
        }
    }

    private byte[] c(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr3[i10] = (byte) (bArr[i10] ^ bArr2[i10 % bArr2.length]);
        }
        return bArr3;
    }

    private String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }
}
