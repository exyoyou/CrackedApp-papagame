package com.papa.sim.statistic;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f77298a = System.getProperty("line.separator");

    public static void a(String str, String str2, String str3) {
        String string;
        try {
            if (!str2.startsWith("{")) {
                if (str2.startsWith("[")) {
                    string = new JSONArray(str2).toString(4);
                }
                StringBuilder sb2 = new StringBuilder();
                String str4 = f77298a;
                sb2.append(str4);
                sb2.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
                sb2.append(str4);
                sb2.append(str3);
                sb2.append(str4);
                sb2.append(str2);
                sb2.append(str4);
                sb2.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
                sb2.append(str4);
                String string2 = sb2.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("║ ");
                sb3.append(string2);
            }
            string = new JSONObject(str2).toString(4);
            str2 = string;
        } catch (JSONException unused) {
        }
        StringBuilder sb4 = new StringBuilder();
        String str5 = f77298a;
        sb4.append(str5);
        sb4.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
        sb4.append(str5);
        sb4.append(str3);
        sb4.append(str5);
        sb4.append(str2);
        sb4.append(str5);
        sb4.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
        sb4.append(str5);
        String string3 = sb4.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("║ ");
        sb5.append(string3);
    }

    public static void b(String str, boolean z10) {
    }

    public static void c(String str, String str2, String str3) {
        try {
            if (str2.startsWith("{")) {
                str2 = new JSONObject(str2).toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        StringBuilder sb2 = new StringBuilder();
        String str4 = f77298a;
        sb2.append(str4);
        sb2.append("╔═══════════════════════════════════════════════════════════════════════════════════════");
        sb2.append(str4);
        sb2.append(str3);
        sb2.append(str4);
        sb2.append(str2);
        sb2.append(str4);
        sb2.append("╚═══════════════════════════════════════════════════════════════════════════════════════");
        sb2.append(str4);
        String string = sb2.toString();
        System.out.println(str + string);
    }
}
