package cn.fly.commons.a;

import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ae;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class i extends c {
    public i() {
        super(m.a("003ehh"), null, c.a(m.a("003ehh"), (Long) 0L));
    }

    private boolean n() {
        return cn.fly.commons.c.a(m.a("003ehh"));
    }

    private boolean o() {
        return cn.fly.commons.c.a(m.a("002Yej:f"));
    }

    private boolean p() {
        return cn.fly.commons.c.a(m.a("002Seh*f"));
    }

    @Override // cn.fly.commons.a.c
    protected long b() {
        try {
            Calendar calendar = Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            calendar.setTime(simpleDateFormat.parse(simpleDateFormat.format(new Date())));
            calendar.add(5, 1);
            long timeInMillis2 = (calendar.getTimeInMillis() - timeInMillis) + ((long) new SecureRandom().nextInt(240000));
            return (timeInMillis2 / 1000) + ((long) (timeInMillis2 % 1000 == 0 ? 0 : 1));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return 0L;
        }
    }

    @Override // cn.fly.commons.a.c
    protected boolean g() {
        return n() && h();
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        if (n()) {
            if (!o()) {
                p();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jLongValue = ((Long) a(m.a("004eJgjUke"), 2592000L)).longValue() * 1000;
            long jB = ae.b().b(ae.f1063c, 0L);
            boolean zA = C1293r.a(jCurrentTimeMillis, jB);
            Object obj = this.f941a;
            final boolean z10 = true;
            boolean z11 = obj != null && (obj instanceof Boolean) && ((Boolean) obj).booleanValue();
            if (jCurrentTimeMillis - jLongValue < jB && zA) {
                z10 = false;
            }
            if (z10 || z11) {
                DH.requester(FlySDK.getContext()).getIAForce(false, z11).request(new DH.DHResponder() { // from class: cn.fly.commons.a.i.1
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        ArrayList<HashMap<String, String>> iAForce = dHResponse.getIAForce(new int[0]);
                        if (iAForce == null || iAForce.isEmpty() || !z10) {
                            return;
                        }
                        i.this.a(iAForce);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<HashMap<String, String>> arrayList) {
        a(((Long) a(m.a("004eVed'hg"), 0L)).longValue(), "ALSAMT", arrayList);
        ae.b().a(ae.f1063c, System.currentTimeMillis());
    }
}
