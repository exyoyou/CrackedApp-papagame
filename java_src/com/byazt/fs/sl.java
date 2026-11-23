package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 158})
public class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.kd.c f14275c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.kd.tt f14276n;
    public com.byazt.kd.tt tt;
    public com.byazt.kd.tt uj;
    public com.byazt.kd.tt ve;

    private void tt(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("v")) {
                strNextString.hashCode();
                switch (strNextString) {
                    case "Distance":
                        this.uj = uj.c(jsonReader, aVar);
                        break;
                    case "Opacity":
                        this.tt = uj.c(jsonReader, aVar, false);
                        break;
                    case "Direction":
                        this.ve = uj.c(jsonReader, aVar, false);
                        break;
                    case "Shadow Color":
                        this.f14275c = uj.sp(jsonReader, aVar);
                        break;
                    case "Softness":
                        this.f14276n = uj.c(jsonReader, aVar);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            } else if (strNextName.equals("nm")) {
                strNextString = jsonReader.nextString();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    public da c(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        com.byazt.kd.tt ttVar;
        com.byazt.kd.tt ttVar2;
        com.byazt.kd.tt ttVar3;
        com.byazt.kd.tt ttVar4;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    tt(jsonReader, aVar);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        com.byazt.kd.c cVar = this.f14275c;
        if (cVar == null || (ttVar = this.tt) == null || (ttVar2 = this.ve) == null || (ttVar3 = this.uj) == null || (ttVar4 = this.f14276n) == null) {
            return null;
        }
        return new da(cVar, ttVar, ttVar2, ttVar3, ttVar4);
    }
}
