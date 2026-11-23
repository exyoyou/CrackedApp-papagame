package com.airsaid.pickerviewlibrary;

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c {
    public i.a A;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Context f6199v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList<String> f6200w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ArrayList<ArrayList<String>> f6201x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ArrayList<ArrayList<ArrayList<String>>> f6202y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private JSONObject f6203z;

    class a implements c.a {
        a() {
        }

        @Override // com.airsaid.pickerviewlibrary.c.a
        public void a(int i10, int i11, int i12) {
            b bVar = b.this;
            if (bVar.A == null || bVar.f6201x.size() <= i10 || ((ArrayList) b.this.f6201x.get(i10)).size() <= i11 || b.this.f6202y.size() <= i10 || ((ArrayList) b.this.f6202y.get(i10)).size() <= i11 || ((ArrayList) ((ArrayList) b.this.f6202y.get(i10)).get(i11)).size() <= i12) {
                return;
            }
            String str = (String) b.this.f6200w.get(i10);
            String str2 = (String) ((ArrayList) b.this.f6201x.get(i10)).get(i11);
            String str3 = (String) ((ArrayList) ((ArrayList) b.this.f6202y.get(i10)).get(i11)).get(i12);
            b.this.A.onCitySelect(str.concat(str2).concat(str3));
            b.this.A.onCitySelect(str, str2, str3);
        }
    }

    public b(Context context) {
        super(context);
        this.f6200w = new ArrayList<>();
        this.f6201x = new ArrayList<>();
        this.f6202y = new ArrayList<>();
        this.f6199v = context;
        Q();
        R();
        P();
    }

    private void P() {
        J("选择城市");
        A(this.f6200w, this.f6201x, this.f6202y, true);
        t(false, false, false);
        E(0, 0, 0);
        y(new a());
    }

    private void Q() {
        try {
            InputStream inputStreamOpen = this.f6199v.getAssets().open("city.json");
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            this.f6203z = new JSONObject(new String(bArr, "UTF-8"));
            inputStreamOpen.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void R() {
        try {
            JSONArray jSONArray = this.f6203z.getJSONArray("citylist");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                String string = jSONObject.getString("name");
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<ArrayList<String>> arrayList2 = new ArrayList<>();
                JSONArray jSONArray2 = jSONObject.getJSONArray("city");
                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i11);
                    arrayList.add(jSONObject2.getString("name"));
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    JSONArray jSONArray3 = jSONObject2.getJSONArray("area");
                    for (int i12 = 0; i12 < jSONArray3.length(); i12++) {
                        arrayList3.add(jSONArray3.getString(i12));
                    }
                    arrayList2.add(arrayList3);
                }
                this.f6200w.add(string);
                this.f6201x.add(arrayList);
                this.f6202y.add(arrayList2);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.f6203z = null;
    }

    public void S(i.a aVar) {
        this.A = aVar;
    }
}
