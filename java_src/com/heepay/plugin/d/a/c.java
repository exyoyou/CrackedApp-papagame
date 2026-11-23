package com.heepay.plugin.d.a;

import android.text.TextUtils;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.Gson;
import com.join.mgps.activity.QuarkPromptActivity_;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, Method> f34308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Gson f34311d;

    public c(String str, Class cls) {
        String strA;
        try {
            if (TextUtils.isEmpty(str)) {
                throw new d("injected name can not be null");
            }
            this.f34309b = str;
            this.f34308a = new HashMap<>();
            StringBuilder sb2 = new StringBuilder("javascript:(function(b){console.log(\"");
            sb2.append(this.f34309b);
            sb2.append(" initialization begin\");var a={queue:[],callback:function(){var d=Array.prototype.slice.call(arguments,0);var c=d.shift();var e=d.shift();this.queue[c].apply(this,d);if(!e){delete this.queue[c]}}};");
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getModifiers() == 9 && (strA = a(method)) != null) {
                    com.heepay.plugin.c.c.b("---->methodName", method.getName());
                    this.f34308a.put(strA, method);
                    sb2.append(String.format("a.%s=", method.getName()));
                    com.heepay.plugin.c.c.b("---->builder", sb2.toString());
                }
            }
            sb2.append("function(){var f=Array.prototype.slice.call(arguments,0);if(f.length<1){throw\"");
            sb2.append(this.f34309b);
            sb2.append(" call error, message:miss method name\"}var e=[];for(var h=1;h<f.length;h++){var c=f[h];var j=typeof c;e[e.length]=j;if(j==\"function\"){var d=a.queue.length;a.queue[d]=c;f[h]=d}}var g=JSON.parse(prompt(JSON.stringify({method:f.shift(),types:e,args:f})));if(g.code!=200){throw\"");
            sb2.append(this.f34309b);
            sb2.append(" call error, code:\"+g.code+\", message:\"+g.result}return g.result};Object.getOwnPropertyNames(a).forEach(function(d){var c=a[d];if(typeof c===\"function\"&&d!==\"callback\"){a[d]=function(){return c.apply(a,[d].concat(Array.prototype.slice.call(arguments,0)))}}});b.");
            sb2.append(this.f34309b);
            sb2.append("=a;console.log(\"");
            sb2.append(this.f34309b);
            sb2.append(" initialization end\")})(window);");
            String string = sb2.toString();
            this.f34310c = string;
            com.heepay.plugin.c.c.b("---->3", string);
        } catch (d e10) {
            com.heepay.plugin.c.c.e("---->", "js initialization error:" + e10.getMessage());
        }
    }

    public String a() {
        return this.f34310c;
    }

    public String a(WebView webView, String str) {
        StringBuilder sb2;
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "call data empty";
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string2 = jSONObject.getString(com.alipay.sdk.packet.d.f7195s);
                JSONArray jSONArray = jSONObject.getJSONArray("types");
                JSONArray jSONArray2 = jSONObject.getJSONArray(QuarkPromptActivity_.ARGS_EXTRA);
                int length = jSONArray.length();
                Object[] objArr = new Object[length + 1];
                int i10 = 0;
                objArr[0] = webView;
                int i11 = 0;
                while (true) {
                    Object jSONObject2 = null;
                    if (i10 >= length) {
                        break;
                    }
                    String strOptString = jSONArray.optString(i10);
                    if (TypedValues.Custom.S_STRING.equals(strOptString)) {
                        string2 = string2 + "_S";
                        int i12 = i10 + 1;
                        if (!jSONArray2.isNull(i10)) {
                            jSONObject2 = jSONArray2.getString(i10);
                        }
                        objArr[i12] = jSONObject2;
                    } else if ("number".equals(strOptString)) {
                        string2 = string2 + "_N";
                        i11 = (i11 * 10) + i10 + 1;
                    } else if ("boolean".equals(strOptString)) {
                        string2 = string2 + "_B";
                        objArr[i10 + 1] = Boolean.valueOf(jSONArray2.getBoolean(i10));
                    } else if ("object".equals(strOptString)) {
                        string2 = string2 + "_O";
                        int i13 = i10 + 1;
                        if (!jSONArray2.isNull(i10)) {
                            jSONObject2 = jSONArray2.getJSONObject(i10);
                        }
                        objArr[i13] = jSONObject2;
                    } else if ("function".equals(strOptString)) {
                        string2 = string2 + "_F";
                        objArr[i10 + 1] = new e(webView, this.f34309b, jSONArray2.getInt(i10));
                    } else {
                        string2 = string2 + "_P";
                    }
                    i10++;
                }
                Method method = this.f34308a.get(string2);
                if (method == null) {
                    return a(str, 500, "not found method(" + string2 + ") with valid parameters");
                }
                if (i11 > 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    while (i11 > 0) {
                        int i14 = i11 - ((i11 / 10) * 10);
                        Class<?> cls = parameterTypes[i14];
                        if (cls == Integer.TYPE) {
                            objArr[i14] = Integer.valueOf(jSONArray2.getInt(i14 - 1));
                        } else if (cls == Long.TYPE) {
                            objArr[i14] = Long.valueOf(Long.parseLong(jSONArray2.getString(i14 - 1)));
                        } else {
                            objArr[i14] = Double.valueOf(jSONArray2.getDouble(i14 - 1));
                        }
                        i11 /= 10;
                    }
                }
                return a(str, 200, method.invoke(null, objArr));
            } catch (IllegalAccessException | InvocationTargetException | JSONException e10) {
                e = e10;
                e.printStackTrace();
                if (e.getCause() != null) {
                    sb2 = new StringBuilder();
                    sb2.append("method execute error:");
                    e = e.getCause();
                } else {
                    sb2 = new StringBuilder();
                    sb2.append("method execute error:");
                }
                sb2.append(e.getMessage());
                string = sb2.toString();
            }
        }
        return a(str, 500, string);
    }

    private String a(String str, int i10, Object obj) {
        String strValueOf;
        String str2;
        if (obj == null) {
            strValueOf = "null";
        } else {
            if (obj instanceof String) {
                strValueOf = x.a.f97579g + ((Object) ((String) obj).replace(x.a.f97579g, "\\\"")) + x.a.f97579g;
                str2 = "---->是否有进入String";
            } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof JSONObject)) {
                strValueOf = String.valueOf(obj);
            } else {
                if (this.f34311d == null) {
                    this.f34311d = new Gson();
                }
                strValueOf = this.f34311d.toJson(obj);
                str2 = "---->是否有进入mGson";
            }
            com.heepay.plugin.c.c.b(str2, "------");
        }
        String str3 = String.format("{\"code\": %d, \"result\": %s}", Integer.valueOf(i10), strValueOf);
        com.heepay.plugin.c.c.b("---->", this.f34309b + " call json: " + str + " result:" + str3);
        return str3;
    }

    private String a(Method method) {
        StringBuilder sb2;
        String str;
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        if (length < 1 || parameterTypes[0] != WebView.class) {
            com.heepay.plugin.c.c.d("---->", "method(" + name + ") must use webview to be first parameter, will be pass");
            return null;
        }
        for (int i10 = 1; i10 < length; i10++) {
            Class<?> cls = parameterTypes[i10];
            if (cls == String.class) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_S";
            } else if (cls == Integer.TYPE || cls == Long.TYPE || cls == Float.TYPE || cls == Double.TYPE) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_N";
            } else if (cls == Boolean.TYPE) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_B";
            } else if (cls == JSONObject.class) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_O";
            } else if (cls == e.class) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_F";
            } else {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_P";
            }
            sb2.append(str);
            name = sb2.toString();
        }
        return name;
    }
}
