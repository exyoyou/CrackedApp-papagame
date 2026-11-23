package com.beizi.fusion.tool;

import android.content.Context;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.model.FreqItem;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, Object> f10672a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<String, Object> f10673b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Comparator<EventItem> f10674c = new Comparator<EventItem>() { // from class: com.beizi.fusion.tool.u.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(EventItem eventItem, EventItem eventItem2) {
            return eventItem.getTimeStamp().compareTo(eventItem2.getTimeStamp());
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, Long> f10675d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static HashMap<String, FreqItem> f10676e = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HashSet<String> f10677f = new HashSet<>();

    public static void a(Context context, String str) {
        try {
            ArrayList arrayList = (ArrayList) com.beizi.fusion.a.b.a(context).a(str);
            f10672a.put(str, a(arrayList));
            f10673b.put(str, b(arrayList));
            d("adUnitId = " + str + ",platFormMap get = " + f10672a.get(str) + ",channelMap get = " + f10673b.get(str));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void b(Context context, String str) {
        if (a(str)) {
            return;
        }
        c(context, str);
        int i10 = 0;
        while (!a(str) && i10 < 100) {
            d("currentWaitInitTime = " + i10);
            try {
                Thread.sleep(5L);
                i10 += 5;
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    private static void c(final Context context, final String str) {
        e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.tool.u.2
            @Override // java.lang.Runnable
            public void run() {
                u.a(context, str);
            }
        });
    }

    public static void d(String str) {
        ac.b("FreqUtil", str);
    }

    public static FreqItem c(String str) {
        return f10676e.get(str);
    }

    public static int a(String str, String str2) {
        ArrayList arrayList;
        int i10 = 0;
        if (str2 == null) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enter getTodayEventTimes channelMap != null ?  ");
        sb2.append(f10673b != null);
        sb2.append(",eventCode = ");
        sb2.append(str2);
        d(sb2.toString());
        b(com.beizi.fusion.c.b.a().e(), str);
        String strValueOf = String.valueOf(a());
        if ("200.000".equalsIgnoreCase(str2)) {
            HashMap<String, Object> map = f10672a;
            if (map != null && map.get(str) != null) {
                d("getSpaceTodayEventTimes platFormMap.containsKey(adUnitId) = " + f10672a.containsKey(str));
                HashMap map2 = (HashMap) f10672a.get(str);
                if (map2 != null && (arrayList = (ArrayList) map2.get(str2)) != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (((EventItem) it2.next()).getTimeStamp().compareTo(strValueOf) > 0) {
                            i10++;
                        }
                    }
                }
            }
        } else {
            HashMap<String, Object> map3 = f10673b;
            if (map3 != null && map3.get(str) != null) {
                d("getSpaceTodayEventTimes channelMap.containsKey(adUnitId) = " + f10673b.containsKey(str));
                HashMap map4 = (HashMap) f10673b.get(str);
                for (String str3 : f10677f) {
                    if (map4 != null && map4.get(str3) != null) {
                        HashMap map5 = (HashMap) map4.get(str3);
                        d("getSpaceTodayEventTimes eventMap = " + map5);
                        if (map5 != null && map5.get(str2) != null) {
                            ArrayList arrayList2 = (ArrayList) map5.get(str2);
                            d("getSpaceTodayEventTimes itemList = " + arrayList2 + ",eventCode = " + str2);
                            if (arrayList2 != null && arrayList2.size() > 0) {
                                ac.c("BeiZis", arrayList2.toString());
                                Iterator it3 = arrayList2.iterator();
                                while (it3.hasNext()) {
                                    if (((EventItem) it3.next()).getTimeStamp().compareTo(strValueOf) > 0) {
                                        i10++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        ac.c("BeiZis", "todayEventTimes = " + i10);
        return i10;
    }

    public static long b(String str) {
        Long l10 = f10675d.get(str);
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    private static Map<String, Map<String, List<EventItem>>> b(List<EventItem> list) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (list != null && list.size() != 0) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            for (EventItem eventItem : list) {
                String spaceId = eventItem.getSpaceId();
                if (spaceId != null) {
                    if (!map.containsKey(spaceId)) {
                        arrayList2 = new ArrayList();
                        arrayList2.add(eventItem);
                    } else {
                        arrayList2 = (ArrayList) map.get(spaceId);
                        if (arrayList2 != null) {
                            arrayList2.add(eventItem);
                        }
                    }
                    map.put(spaceId, arrayList2);
                }
                String channel = eventItem.getChannel();
                f10677f.add(channel);
                if (channel != null) {
                    if (!map2.containsKey(channel)) {
                        arrayList = new ArrayList();
                        arrayList.add(eventItem);
                    } else {
                        arrayList = (ArrayList) map2.get(channel);
                        if (arrayList != null) {
                            arrayList.add(eventItem);
                        }
                    }
                    map2.put(channel, arrayList);
                }
            }
            HashMap map3 = new HashMap();
            for (String str : map.keySet()) {
                ArrayList arrayList3 = (ArrayList) map.get(str);
                if (arrayList3 != null) {
                    map3.put(str, (HashMap) a(arrayList3));
                }
            }
            for (String str2 : map2.keySet()) {
                ArrayList arrayList4 = (ArrayList) map2.get(str2);
                if (arrayList4 != null) {
                    map3.put(str2, (HashMap) a(arrayList4));
                }
            }
            return map3;
        }
        return new HashMap();
    }

    public static long a() {
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        return calendar.getTimeInMillis();
    }

    public static boolean a(String str) {
        return f10672a.containsKey(str) && f10673b.containsKey(str);
    }

    public static boolean a(List<FreqItem> list, String str, String str2, String str3) {
        if (list != null && list.size() != 0) {
            a(str, list);
            boolean z10 = false;
            if (str2 == null) {
                HashMap map = (HashMap) f10672a.get(str);
                d("eventMap = " + map);
                if (map == null || map.size() == 0) {
                    return true;
                }
                boolean z11 = false;
                for (FreqItem freqItem : list) {
                    String eventCode = freqItem.getEventCode();
                    long interval = freqItem.getInterval();
                    int count = freqItem.getCount();
                    ArrayList arrayList = (ArrayList) map.get(eventCode);
                    if (count == 0) {
                        return false;
                    }
                    if (arrayList != null) {
                        if (count > arrayList.size()) {
                            continue;
                        } else {
                            long jCurrentTimeMillis = System.currentTimeMillis() - Long.parseLong(((EventItem) arrayList.get(arrayList.size() - count)).getTimeStamp());
                            d("platform filter interval = " + interval + ",timeInterval = " + jCurrentTimeMillis);
                            if (jCurrentTimeMillis <= interval) {
                                f10676e.put(str, freqItem);
                            }
                        }
                    } else {
                        d("platform filter localEventItems = null");
                    }
                    z11 = true;
                }
                z10 = z11;
            } else {
                HashMap map2 = (HashMap) f10673b.get(str);
                d("spaceChannelMap = " + map2);
                if (map2 != null && map2.size() != 0) {
                    HashMap map3 = (HashMap) map2.get(str2);
                    d("channel filter eventMap = " + map3);
                    if (map3 != null && map3.size() != 0) {
                        boolean z12 = false;
                        for (FreqItem freqItem2 : list) {
                            String eventCode2 = freqItem2.getEventCode();
                            long interval2 = freqItem2.getInterval();
                            int count2 = freqItem2.getCount();
                            if (freqItem2.getComponentType() == 1) {
                                map3 = (HashMap) map2.get(str3);
                                d("channel filter by space eventMap = " + map3);
                                if (map3 == null || map3.size() == 0) {
                                    return true;
                                }
                            }
                            d("channel filter code = " + eventCode2);
                            ArrayList arrayList2 = (ArrayList) map3.get(eventCode2);
                            if (count2 == 0) {
                                return false;
                            }
                            if (arrayList2 != null) {
                                d("channel filter localEventItems != null count = " + count2 + ",localEventItems.size() = " + arrayList2.size());
                                if (count2 > arrayList2.size()) {
                                    continue;
                                } else {
                                    long jCurrentTimeMillis2 = System.currentTimeMillis() - Long.parseLong(((EventItem) arrayList2.get(arrayList2.size() - count2)).getTimeStamp());
                                    d("channel filter interval = " + interval2 + ",timeInterval = " + jCurrentTimeMillis2);
                                    if (jCurrentTimeMillis2 <= interval2) {
                                        f10676e.put(str, freqItem2);
                                    }
                                }
                            } else {
                                d("channel filter localEventItems = null");
                            }
                            z12 = true;
                        }
                        z10 = z12;
                    }
                }
            }
            d("filter adUnitId = " + str + ",channel = " + str2 + ",goThrough = " + z10);
            return z10;
        }
        return true;
    }

    private static void a(String str, List<FreqItem> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        long jB = b(str);
        Iterator<FreqItem> it2 = list.iterator();
        while (it2.hasNext()) {
            jB = Math.max(it2.next().getInterval(), jB);
        }
        d("maxInterval = " + jB);
        f10675d.put(str, Long.valueOf(jB));
    }

    private static Map<String, List<EventItem>> a(List<EventItem> list) {
        ArrayList arrayList;
        if (list != null && list.size() != 0) {
            HashMap map = new HashMap();
            Object obj = null;
            ArrayList arrayList2 = null;
            for (EventItem eventItem : list) {
                String code = eventItem.getCode();
                if (!code.equals(obj)) {
                    if (obj != null && arrayList2 != null) {
                        map.put(obj, arrayList2);
                    }
                    if (!map.containsKey(code)) {
                        arrayList = new ArrayList();
                        arrayList.add(eventItem);
                    } else {
                        arrayList = (ArrayList) map.get(code);
                        if (arrayList != null) {
                            arrayList.add(eventItem);
                        }
                    }
                    map.put(code, arrayList);
                    arrayList2 = arrayList;
                } else if (arrayList2 != null) {
                    arrayList2.add(eventItem);
                }
                obj = code;
            }
            for (String str : map.keySet()) {
                ArrayList arrayList3 = (ArrayList) map.get(str);
                Collections.sort(arrayList3, f10674c);
                map.put(str, arrayList3);
            }
            return map;
        }
        return new HashMap();
    }

    public static void a(String str, EventItem eventItem) {
        try {
            HashMap map = (HashMap) f10672a.get(str);
            if (map == null) {
                map = new HashMap();
            }
            String code = eventItem.getCode();
            a(eventItem, map, code);
            String spaceId = eventItem.getSpaceId();
            if (spaceId != null) {
                HashMap map2 = (HashMap) f10673b.get(str);
                if (map2 == null) {
                    map2 = new HashMap();
                }
                HashMap map3 = (HashMap) map2.get(spaceId);
                if (map3 == null) {
                    map3 = new HashMap();
                }
                a(eventItem, map3, code);
                map2.put(spaceId, map3);
            }
            String channel = eventItem.getChannel();
            f10677f.add(channel);
            if (channel != null) {
                HashMap map4 = (HashMap) f10673b.get(str);
                if (map4 == null) {
                    map4 = new HashMap();
                }
                HashMap map5 = (HashMap) map4.get(channel);
                if (map5 == null) {
                    map5 = new HashMap();
                }
                a(eventItem, map5, code);
                map4.put(channel, map5);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void a(EventItem eventItem, HashMap<String, List<EventItem>> map, String str) {
        if (map != null) {
            if (!map.containsKey(str)) {
                if (str != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(eventItem);
                    map.put(str, arrayList);
                    return;
                }
                return;
            }
            ArrayList arrayList2 = (ArrayList) map.get(str);
            if (arrayList2 != null) {
                arrayList2.add(eventItem);
                Collections.sort(arrayList2, f10674c);
                map.put(str, arrayList2);
            }
        }
    }
}
