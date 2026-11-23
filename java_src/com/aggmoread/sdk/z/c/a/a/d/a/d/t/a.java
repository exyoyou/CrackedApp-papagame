package com.aggmoread.sdk.z.c.a.a.d.a.d.t;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TextView;
import com.aggmoread.sdk.z.c.a.a.d.a.d.m;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.aggmoread.sdk.z.c.a.a.e.s;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a extends m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f4693c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f4694a = {"tt_reward_ad_appname", "tt_reward_ad_appname_backup", "tt_reward_ad_download", "tt_reward_ad_download_backup", "tt_full_ad_app_name", "tt_full_ad_download"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f4695b = Arrays.asList("查看详情", "立即查看", "了解一下", "下载打开", "立即下载");

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.a$a, reason: collision with other inner class name */
    class RunnableC0144a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f4696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WebView f4697c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f4698d;

        RunnableC0144a(a aVar, String[] strArr, WebView webView, AtomicInteger atomicInteger) {
            this.f4696b = strArr;
            this.f4697c = webView;
            this.f4698d = atomicInteger;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    this.f4696b[0] = this.f4697c.getTitle();
                } catch (Exception e10) {
                    e.b("XXXXX", "web view title err " + e10.getMessage());
                }
            } finally {
                this.f4698d.incrementAndGet();
            }
        }
    }

    private a() {
    }

    private static View a() {
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Object objInvoke = cls.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            if (objInvoke != null) {
                Field declaredField = cls.getDeclaredField("mViews");
                declaredField.setAccessible(true);
                ArrayList arrayList = (ArrayList) declaredField.get(objInvoke);
                return (View) arrayList.get(arrayList.size() - 1);
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException | Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public static int b(Object obj) {
        int i10 = -1;
        try {
            Object objInvoke = obj.getClass().getMethod("getMediaExtraInfo", new Class[0]).invoke(obj, new Object[0]);
            int iIntValue = objInvoke instanceof Map ? ((Integer) ((Map) objInvoke).get("price")).intValue() : -1;
            if (iIntValue < 0) {
                try {
                    e.a("csj c -1 ");
                } catch (Exception e10) {
                    i10 = iIntValue;
                    e = e10;
                    e.a("csj c err " + e);
                }
            } else {
                i10 = iIntValue;
            }
        } catch (Exception e11) {
            e = e11;
        }
        e.a("csj ecpm  " + i10);
        return i10;
    }

    public static synchronized a c() {
        if (f4693c == null) {
            synchronized (a.class) {
                if (f4693c == null) {
                    f4693c = new a();
                }
            }
        }
        return f4693c;
    }

    public String d() {
        return c(a());
    }

    public String e() {
        return c(a());
    }

    public String f(View view) {
        return c(view);
    }

    public static View a(View view, String str) {
        if (a(str, view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View viewA = a(viewGroup.getChildAt(i10), str);
            if (viewA != null) {
                return viewA;
            }
        }
        return null;
    }

    private String b() {
        e.b("XXXXX", "tryGetRewardAdName");
        View viewA = a();
        if (viewA == null) {
            e.b("XXXXX", "not found adview");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        a(viewA, arrayList);
        if (arrayList.size() > 0) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                TextView textView = arrayList.get(i10);
                if (textView != null) {
                    if (sb2.toString().contains(textView.getText().toString())) {
                        e.b("XXXXX", "has contains ,next !,textView " + textView);
                    } else {
                        if (i10 != 0) {
                            sb2.append("#");
                        }
                        sb2.append(textView.getText().toString());
                    }
                }
            }
            String string = sb2.toString();
            e.b("XXXXX", "app name " + string);
            return string;
        }
        ArrayList arrayList2 = new ArrayList();
        b(viewA, arrayList2);
        e.b("XXXXX", "webView size " + arrayList2.size());
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            WebView webView = arrayList2.get(i11);
            AtomicInteger atomicInteger = new AtomicInteger();
            String[] strArr = new String[1];
            q.a(new RunnableC0144a(this, strArr, webView, atomicInteger));
            while (atomicInteger.get() == 0) {
            }
            String str = strArr[0];
            StringBuilder sb3 = new StringBuilder();
            sb3.append("title ");
            sb3.append(str);
            if (!TextUtils.isEmpty(str)) {
                if (!str.startsWith("http:") && !str.startsWith("https:")) {
                    return str;
                }
                if (str.contains("?rit=")) {
                    Map<String, String> mapA = s.a(str);
                    if (mapA != null) {
                        String str2 = mapA.get("app_name");
                        String str3 = mapA.get("developer_name");
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("appName ");
                        sb4.append(str2);
                        sb4.append(",developer_name ");
                        sb4.append(str3);
                        return str2;
                    }
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("i ");
                    sb5.append(i11);
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(" view ");
                    sb6.append(webView);
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    private String c(View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strB = b(view);
        if (TextUtils.isEmpty(strB)) {
            strB = b();
        }
        if (TextUtils.isEmpty(strB) && k.f5148r.booleanValue()) {
            a(view);
        }
        e.b("XXXXX", "delay time " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return strB;
    }

    public String d(View view) {
        return c(view);
    }

    public String e(View view) {
        return c(view);
    }

    private List<Object> a(Class cls, Object obj, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            e.b("XXXXX", "getFieldValueByClassName ");
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields.length > 0) {
                for (Field field : declaredFields) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    e.b("XXXXX", "field name " + field.getName() + ", value " + obj2);
                    if (obj2 != null) {
                        String name = obj2.getClass().getName();
                        if (name.startsWith(str) && !name.contains("nativeexpress") && name.split("\\.").length == 7) {
                            e.b("XXXXX", "fieldClsName find");
                            field.setAccessible(true);
                            arrayList.add(field.get(obj));
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e.b("XXXXX", "get field value err " + e10.getMessage());
        }
        return arrayList;
    }

    public String b(View view) {
        boolean z10;
        Class<? super Object> superclass;
        StringBuilder sb2 = new StringBuilder();
        long jCurrentTimeMillis = System.currentTimeMillis();
        View viewA = a(view, "NativeExpressView");
        if (viewA == null) {
            e.b("XXXXX", "NativeExpressView not found");
            return null;
        }
        try {
            Class<?> cls = viewA.getClass();
            if (cls.getName().contains("NativeExpressView") || (superclass = cls.getSuperclass()) == null) {
                z10 = true;
            } else {
                cls = superclass;
                z10 = false;
            }
            e.b("XXXXX", "findTextByNativeExpressView isDeclaredField = " + z10 + ", cls " + cls);
            List<Object> listA = a(cls, viewA, "com.bytedance.sdk.openadsdk.core");
            if (listA.size() > 0) {
                Iterator<Object> it2 = listA.iterator();
                while (it2.hasNext()) {
                    List<String> listA2 = a(it2.next());
                    if (listA2.size() > 0) {
                        for (int i10 = 0; i10 < listA2.size(); i10++) {
                            String str = listA2.get(i10);
                            e.b("XXXXX", "value fins str  = " + i10 + ", " + listA2.get(i10));
                            if (!sb2.toString().contains(str)) {
                                if (i10 != 0) {
                                    sb2.append("#");
                                }
                                sb2.append(str);
                            }
                        }
                        e.b("XXXXX", "find delay time " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        return sb2.toString();
                    }
                }
            }
            if (!k.f5148r.booleanValue()) {
                return null;
            }
            for (Field field : cls.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(viewA);
                e.b("XXXXX", "field " + field.getName() + ", field " + obj);
                if (obj != null && obj.getClass().getName().contains("com.bytedance.sdk.openadsdk.core")) {
                    for (Field field2 : obj.getClass().getDeclaredFields()) {
                        field2.setAccessible(true);
                        Object obj2 = field2.get(obj);
                        if (obj2 instanceof String) {
                            e.b("XXXXX", "field_ " + field2.getName() + ", value_ " + obj2);
                        }
                    }
                }
            }
            return null;
        } catch (Exception e10) {
            e.b("XXXXX", "get field err " + e10.getMessage());
            e10.printStackTrace();
            return null;
        }
    }

    private List<String> a(Object obj) {
        String str;
        Exception e10;
        ArrayList arrayList = new ArrayList();
        try {
            Class<?> cls = obj.getClass();
            e.b("XXXXX", "getChCharactersField cls " + cls);
            for (Field field : cls.getDeclaredFields()) {
                if (field.getGenericType().toString().equals("class java.lang.String")) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    e.b("XXXXX", "getChCharactersField value " + obj2);
                    if (obj2 instanceof String) {
                        String str2 = (String) obj2;
                        if (!str2.startsWith("http") && !this.f4695b.contains(str2.trim()) && Pattern.compile("[一-龥]").matcher(str2).find()) {
                            try {
                                str = (String) new JSONObject(str2).opt("app_name");
                                try {
                                    e.b("XXXXX", "json app name " + str);
                                } catch (Exception e11) {
                                    e10 = e11;
                                    e.b("XXXXX", "json err " + e10.getMessage());
                                }
                            } catch (Exception e12) {
                                str = str2;
                                e10 = e12;
                            }
                            arrayList.add(str);
                        }
                    }
                }
            }
        } catch (Exception e13) {
            e.b("XXXXX", "getChCharactersField err " + e13.getMessage());
        }
        return arrayList;
    }

    private void b(View view, List<WebView> list) {
        if (view instanceof WebView) {
            e.b("XXXXX", "find webView " + view);
            list.add((WebView) view);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                b(viewGroup.getChildAt(i10), list);
            }
        }
    }

    private void a(View view) {
        e.b("XXXXX", "dumpView view " + view);
        if (view instanceof TextView) {
            e.b("XXXXX", "dump textView " + ((TextView) view).getText().toString());
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(viewGroup.getChildAt(i10));
            }
        }
    }

    private void a(View view, List<TextView> list) {
        if (view instanceof TextView) {
            if (a(view, this.f4694a)) {
                TextView textView = (TextView) view;
                if (textView.getText() == null || TextUtils.isEmpty(textView.getText().toString())) {
                    return;
                }
                list.add(textView);
                return;
            }
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(viewGroup.getChildAt(i10), list);
            }
        }
    }

    public static void a(Map<String, Object> map, Object obj, f fVar) {
        c().a(map, b(obj), fVar);
    }

    public static boolean a(View view, String... strArr) {
        Resources resources;
        if (view == null || strArr == null || strArr.length == 0) {
            e.b("XXXXX", "check false!");
            return false;
        }
        try {
            int id2 = view.getId();
            if (id2 > 0 && (resources = view.getResources()) != null) {
                String resourceEntryName = resources.getResourceEntryName(id2);
                for (String str : strArr) {
                    if (str.equals(resourceEntryName)) {
                        e.b("XXXXX", "find equal e = " + str + ", view " + view);
                        return true;
                    }
                }
            }
        } catch (Exception e10) {
            e.b("XXXXX", "csj app_name err " + e10.getMessage());
        }
        return false;
    }

    public static boolean a(f fVar) {
        return false;
    }

    public static boolean a(f fVar, Object obj) {
        int iB;
        if (a(fVar) && (iB = b(obj)) >= 0) {
            return p.a(fVar, iB);
        }
        return false;
    }

    private static boolean a(String str, View view) {
        if (view.getClass().getName().contains(str)) {
            return true;
        }
        Class<? super Object> superclass = view.getClass().getSuperclass();
        return superclass != null && superclass.getName().contains(str);
    }
}
