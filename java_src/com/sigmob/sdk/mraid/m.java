package com.sigmob.sdk.mraid;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.mta.PointCategory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81038a = "vnd.android.cursor.item/event";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f81039b = 31;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f81040c = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ"};

    public interface a {
        void onFailure(f exception);
    }

    private static class b implements MediaScannerConnection.MediaScannerConnectionClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f81041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f81042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private MediaScannerConnection f81043c;

        private b(String filename, String mimeType) {
            this.f81041a = filename;
            this.f81042b = mimeType;
        }

        private void a(MediaScannerConnection connection) {
            this.f81043c = connection;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            MediaScannerConnection mediaScannerConnection = this.f81043c;
            if (mediaScannerConnection != null) {
                mediaScannerConnection.scanFile(this.f81041a, this.f81042b);
            }
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String path, Uri uri) {
            MediaScannerConnection mediaScannerConnection = this.f81043c;
            if (mediaScannerConnection != null) {
                mediaScannerConnection.disconnect();
            }
        }
    }

    private String a(int number) throws IllegalArgumentException {
        switch (number) {
            case 0:
                return "SU";
            case 1:
                return "MO";
            case 2:
                return "TU";
            case 3:
                return "WE";
            case 4:
                return "TH";
            case 5:
                return "FR";
            case 6:
                return "SA";
            default:
                throw new IllegalArgumentException("invalid day of week " + number);
        }
    }

    private String b(int number) throws IllegalArgumentException {
        if (number == 0 || number < -31 || number > 31) {
            throw new IllegalArgumentException("invalid day of month " + number);
        }
        return "" + number;
    }

    private String c(String expression) throws IllegalArgumentException {
        StringBuilder sb2 = new StringBuilder();
        boolean[] zArr = new boolean[63];
        String[] strArrSplit = expression.split(",");
        for (String str : strArrSplit) {
            int i10 = Integer.parseInt(str);
            int i11 = i10 + 31;
            if (!zArr[i11]) {
                sb2.append(b(i10) + ",");
                zArr[i11] = true;
            }
        }
        if (strArrSplit.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    public static boolean d(Context context) {
        return false;
    }

    private Date a(String dateTime) {
        Date date = null;
        for (String str : f81040c) {
            try {
                date = new SimpleDateFormat(str, Locale.US).parse(dateTime);
                if (date != null) {
                    break;
                }
            } catch (ParseException unused) {
            }
        }
        return date;
    }

    private String b(String expression) throws IllegalArgumentException {
        StringBuilder sb2 = new StringBuilder();
        boolean[] zArr = new boolean[7];
        String[] strArrSplit = expression.split(",");
        for (String str : strArrSplit) {
            int i10 = Integer.parseInt(str);
            if (i10 == 7) {
                i10 = 0;
            }
            if (!zArr[i10]) {
                sb2.append(a(i10) + ",");
                zArr[i10] = true;
            }
        }
        if (strArrSplit.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    public static boolean c(Context context) {
        return false;
    }

    private Map<String, Object> a(Map<String, String> map) {
        HashMap map2 = new HashMap();
        if (!map.containsKey(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k) || !map.containsKey("start")) {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        map2.put("title", map.get(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k));
        if (!map.containsKey("start") || map.get("start") == null) {
            throw new IllegalArgumentException("Invalid calendar event: start is null.");
        }
        Date dateA = a(map.get("start"));
        if (dateA == null) {
            throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
        }
        map2.put("beginTime", Long.valueOf(dateA.getTime()));
        if (map.containsKey(PointCategory.END) && map.get(PointCategory.END) != null) {
            Date dateA2 = a(map.get(PointCategory.END));
            if (dateA2 == null) {
                throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
            }
            map2.put("endTime", Long.valueOf(dateA2.getTime()));
        }
        if (map.containsKey("location")) {
            map2.put("eventLocation", map.get("location"));
        }
        if (map.containsKey("summary")) {
            map2.put(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k, map.get("summary"));
        }
        if (map.containsKey("transparency")) {
            map2.put("availability", Integer.valueOf(map.get("transparency").equals("transparent") ? 1 : 0));
        }
        map2.put("rrule", b(map));
        return map2;
    }

    private String b(Map<String, String> params) throws IllegalArgumentException {
        String strC;
        StringBuilder sb2;
        String str;
        String string;
        StringBuilder sb3 = new StringBuilder();
        if (params.containsKey("frequency")) {
            String str2 = params.get("frequency");
            int i10 = params.containsKey("interval") ? Integer.parseInt(params.get("interval")) : -1;
            if ("daily".equals(str2)) {
                sb3.append("FREQ=DAILY;");
                if (i10 != -1) {
                    string = "INTERVAL=" + i10 + ";";
                    sb3.append(string);
                }
            } else if ("weekly".equals(str2)) {
                sb3.append("FREQ=WEEKLY;");
                if (i10 != -1) {
                    sb3.append("INTERVAL=" + i10 + ";");
                }
                if (params.containsKey("daysInWeek")) {
                    strC = b(params.get("daysInWeek"));
                    if (strC == null) {
                        throw new IllegalArgumentException("invalid ");
                    }
                    sb2 = new StringBuilder();
                    str = "BYDAY=";
                    sb2.append(str);
                    sb2.append(strC);
                    sb2.append(";");
                    string = sb2.toString();
                    sb3.append(string);
                }
            } else {
                if (!"monthly".equals(str2)) {
                    throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
                }
                sb3.append("FREQ=MONTHLY;");
                if (i10 != -1) {
                    sb3.append("INTERVAL=" + i10 + ";");
                }
                if (params.containsKey("daysInMonth")) {
                    strC = c(params.get("daysInMonth"));
                    if (strC == null) {
                        throw new IllegalArgumentException();
                    }
                    sb2 = new StringBuilder();
                    str = "BYMONTHDAY=";
                    sb2.append(str);
                    sb2.append(strC);
                    sb2.append(";");
                    string = sb2.toString();
                    sb3.append(string);
                }
            }
        }
        return sb3.toString();
    }

    public void a(Context context, String imageUrl, a failureListener) throws f {
        if (c(context)) {
            return;
        }
        SigmobLog.e("Error downloading file - the device does not have an SD card mounted, or the SigmobAndroid permission is not granted.");
        throw new f("Error downloading file  - the device does not have an SD card mounted, or the SigmobAndroid permission is not granted.");
    }

    public boolean b(Context context) {
        return false;
    }

    public void a(final Context context, final Map<String, String> params) throws f {
        if (!d(context)) {
            SigmobLog.e("unsupported action createCalendarEvent for devices pre-ICS");
            throw new f("Action is unsupported on this device (need SigmobAndroid version Ice Cream Sandwich or above)");
        }
        try {
            Map<String, Object> mapA = a(params);
            Intent type = new Intent("android.intent.action.INSERT").setType(f81038a);
            for (String str : mapA.keySet()) {
                Object obj = mapA.get(str);
                if (obj instanceof Long) {
                    type.putExtra(str, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    type.putExtra(str, ((Integer) obj).intValue());
                } else {
                    type.putExtra(str, (String) obj);
                }
            }
            type.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(type);
        } catch (ActivityNotFoundException unused) {
            SigmobLog.e("no calendar app installed");
            throw new f("Action is unsupported on this device - no calendar app installed");
        } catch (IllegalArgumentException e10) {
            SigmobLog.e("create calendar: invalid parameters " + e10.getMessage());
            throw new f(e10);
        } catch (Exception e11) {
            SigmobLog.e("could not create calendar event");
            throw new f(e11);
        }
    }

    public boolean a(Activity activity, View view) {
        return false;
    }

    public boolean a(Context context) {
        return false;
    }
}
