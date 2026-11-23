package com.beizi.ad.a.a;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.FullScreenClickBean f8541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.FullScreenClickBean f8542c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8544e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f8543d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8545f = false;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public b(Context context, AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean, String str) {
        this.f8540a = context;
        this.f8541b = fullScreenClickBean;
        AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanA = a(fullScreenClickBean.getOrderData(), str);
        if (orderDataFullScreenClickBeanA != null && orderDataFullScreenClickBeanA.getFullScreenClick() != null) {
            this.f8542c = orderDataFullScreenClickBeanA.getFullScreenClick();
        }
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean2 = this.f8542c;
        if (fullScreenClickBean2 != null) {
            this.f8544e = fullScreenClickBean2.getRandomClickNum();
            return;
        }
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean3 = this.f8541b;
        if (fullScreenClickBean3 != null) {
            this.f8544e = fullScreenClickBean3.getRandomClickNum();
        }
    }

    public void a(View view, final a aVar) {
        if (view == null || aVar == null || !a(this.f8544e)) {
            return;
        }
        this.f8545f = true;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.a.a.b.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float f8546a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f8547b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f8548c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            float f8549d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float f8550e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            float f8551f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                a aVar2;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f8546a = motionEvent.getX();
                    this.f8547b = motionEvent.getY();
                    this.f8548c = motionEvent.getRawX();
                    this.f8549d = motionEvent.getRawY();
                    this.f8550e = motionEvent.getX();
                    this.f8551f = motionEvent.getY();
                } else if (action != 1) {
                    if (action == 2) {
                        this.f8550e = motionEvent.getX();
                        this.f8551f = motionEvent.getY();
                    }
                } else if (Math.abs(this.f8550e - this.f8546a) <= 15.0f && Math.abs(this.f8551f - this.f8547b) <= 15.0f && (aVar2 = aVar) != null) {
                    aVar2.a(String.valueOf(this.f8546a), String.valueOf(this.f8547b), String.valueOf(this.f8548c), String.valueOf(this.f8549d), String.valueOf(this.f8546a), String.valueOf(this.f8547b), String.valueOf(this.f8548c), String.valueOf(this.f8549d));
                }
                return true;
            }
        });
    }

    public void b() {
        this.f8541b = null;
        this.f8542c = null;
        this.f8543d = null;
        this.f8540a = null;
    }

    public static boolean a(int i10) {
        return ((int) ((Math.random() * 100.0d) + 1.0d)) <= i10;
    }

    private AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean a(List<AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean : list) {
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
                }
            }
        }
        return null;
    }

    public boolean a() {
        return this.f8545f;
    }
}
