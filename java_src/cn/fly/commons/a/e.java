package cn.fly.commons.a;

import cn.fly.tools.FlyLog;
import com.kuaishou.weapon.p0.t;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class e extends c {
    public e() {
        super("", null, 0L);
    }

    @Override // cn.fly.commons.a.c
    protected void a() throws Throwable {
        if (i()) {
            return;
        }
        FlyLog.getInstance().i("[DCC] onWork");
        if (cn.fly.commons.c.a(t.f74879d)) {
            new f().a();
        }
        if (cn.fly.commons.c.a(cn.fly.commons.m.a("002PfmBi"))) {
            new g().a();
        }
        if (cn.fly.commons.c.a(cn.fly.commons.m.a("002Ahifk"))) {
            new o().a();
        }
        if (cn.fly.commons.c.a(cn.fly.commons.m.a("002Hhi6i"))) {
            new p().a();
        }
    }

    @Override // cn.fly.commons.a.c
    protected long b() {
        try {
            Calendar calendar = Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            calendar.setTime(simpleDateFormat.parse(simpleDateFormat.format(new Date())));
            calendar.add(5, 1);
            long timeInMillis2 = (calendar.getTimeInMillis() - timeInMillis) + ((long) new SecureRandom().nextInt(300000));
            return (timeInMillis2 / 1000) + ((long) (timeInMillis2 % 1000 == 0 ? 0 : 1));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return 0L;
        }
    }

    @Override // cn.fly.commons.a.c
    protected boolean g() {
        return cn.fly.commons.k.a().b();
    }
}
