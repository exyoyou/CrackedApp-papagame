package com.switfpass.pay.activity;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import com.join.mgps.activity.QuarkPromptActivity_;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class WebViewEx extends WebView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f82498d = {"getClass", "hashCode", "notify", "notifyAll", "equals", "toString", "wait"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap f82499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f82500c;

    public WebViewEx(Context context) {
        super(context);
        this.f82499b = new HashMap();
        this.f82500c = null;
        g();
    }

    static /* synthetic */ void a(WebViewEx webViewEx, WebView webView) {
        if (webView instanceof WebViewEx) {
            webViewEx.h();
        }
    }

    private static void b(String str, Object obj, StringBuilder sb2) {
        if (TextUtils.isEmpty(str) || obj == null || sb2 == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        sb2.append("if(typeof(window.");
        sb2.append(str);
        sb2.append(")!='undefined'){");
        sb2.append("    console.log('window." + str + "_js_interface_name is exist!!');");
        sb2.append("}else {");
        sb2.append("    window.");
        sb2.append(str);
        sb2.append("={");
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            if (!e(name)) {
                sb2.append("        ");
                sb2.append(name);
                sb2.append(":function(");
                int length = method.getParameterTypes().length;
                if (length > 0) {
                    int i10 = length - 1;
                    int i11 = 0;
                    while (true) {
                        sb2.append("arg");
                        if (i11 >= i10) {
                            break;
                        }
                        sb2.append(i11);
                        sb2.append(",");
                        i11++;
                    }
                    sb2.append(i10);
                }
                sb2.append(") {");
                sb2.append(method.getReturnType() != Void.TYPE ? "            return prompt('MyApp:'+" : "            prompt('MyApp:'+");
                sb2.append("JSON.stringify({");
                sb2.append("obj:'");
                sb2.append(str);
                sb2.append("',");
                sb2.append("func:'");
                sb2.append(name);
                sb2.append("',");
                sb2.append("args:[");
                if (length > 0) {
                    int i12 = length - 1;
                    int i13 = 0;
                    while (true) {
                        sb2.append("arg");
                        if (i13 >= i12) {
                            break;
                        }
                        sb2.append(i13);
                        sb2.append(",");
                        i13++;
                    }
                    sb2.append(i12);
                }
                sb2.append("]})");
                sb2.append(");");
                sb2.append("        }, ");
            }
        }
        sb2.append("    };");
        sb2.append("}");
    }

    private boolean c(JsPromptResult jsPromptResult, String str, String str2, Object[] objArr) {
        Class<?>[] clsArr;
        Object obj = this.f82499b.get(str);
        boolean z10 = false;
        if (obj == null) {
            jsPromptResult.cancel();
            return false;
        }
        int length = objArr != null ? objArr.length : 0;
        if (length > 0) {
            clsArr = new Class[length];
            for (int i10 = 0; i10 < length; i10++) {
                Class<?> cls = objArr[i10].getClass();
                clsArr[i10] = cls == Integer.class ? Integer.TYPE : cls == Boolean.class ? Boolean.TYPE : String.class;
            }
        } else {
            clsArr = null;
        }
        try {
            Object objInvoke = obj.getClass().getMethod(str2, clsArr).invoke(obj, objArr);
            jsPromptResult.confirm(objInvoke == null || objInvoke.getClass() == Void.TYPE ? "" : objInvoke.toString());
            z10 = true;
        } catch (NoSuchMethodException | Exception e10) {
            e10.printStackTrace();
        }
        jsPromptResult.cancel();
        return z10;
    }

    private static boolean e(String str) {
        for (String str2 : f82498d) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(String str, JsPromptResult jsPromptResult) {
        Object[] objArr;
        int length;
        if (!str.startsWith("MyApp:")) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str.substring(6));
            String string = jSONObject.getString("obj");
            String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f7128m);
            JSONArray jSONArray = jSONObject.getJSONArray(QuarkPromptActivity_.ARGS_EXTRA);
            if (jSONArray == null || (length = jSONArray.length()) <= 0) {
                objArr = null;
            } else {
                objArr = new Object[length];
                for (int i10 = 0; i10 < length; i10++) {
                    objArr[i10] = jSONArray.get(i10);
                }
            }
            if (c(jsPromptResult, string, string2, objArr)) {
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        jsPromptResult.cancel();
        return false;
    }

    private void g() {
        byte b10 = 0;
        super.setWebChromeClient(new x(this, b10));
        super.setWebViewClient(new y(this, b10));
        if (k()) {
            return;
        }
        super.removeJavascriptInterface("searchBoxJavaBridge_");
        super.removeJavascriptInterface("accessibility");
        super.removeJavascriptInterface("accessibilityTraversal");
    }

    private void h() {
        if (!TextUtils.isEmpty(this.f82500c)) {
            i();
        } else {
            this.f82500c = j();
            i();
        }
    }

    private void i() {
        loadUrl(this.f82500c);
    }

    private String j() {
        if (this.f82499b.size() == 0) {
            this.f82500c = null;
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("javascript:(function JsAddJavascriptInterface_(){");
        for (Map.Entry entry : this.f82499b.entrySet()) {
            try {
                b((String) entry.getKey(), entry.getValue(), sb2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        sb2.append("})()");
        return sb2.toString();
    }

    private static boolean k() {
        return true;
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (k()) {
            super.addJavascriptInterface(obj, str);
        } else {
            this.f82499b.put(str, obj);
        }
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (k()) {
            super.removeJavascriptInterface(str);
            return;
        }
        this.f82499b.remove(str);
        this.f82500c = null;
        h();
    }

    public WebViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f82499b = new HashMap();
        this.f82500c = null;
        g();
    }

    public WebViewEx(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f82499b = new HashMap();
        this.f82500c = null;
        g();
    }
}
