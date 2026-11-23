package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcParameterHelper {

    public static class TrafficStats {
        private static final String kModuleTraffic = "traffic";
        public static final String kSetPackageName = "setPackageName:";
        public static final String kSetUid = "setUid:";

        public static boolean IsMatched(String str) {
            return str != null && str.equalsIgnoreCase("traffic");
        }

        public static String getModuleName() {
            return "traffic";
        }

        public static String preferPackeageName(String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(kSetPackageName);
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            return sb2.toString();
        }

        public static String preferUid(int i10) {
            return kSetUid + i10;
        }
    }
}
