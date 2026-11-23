package com.aggmoread.sdk.z.a.j;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class m extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f3595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f3596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f3598e = new Handler(Looper.getMainLooper(), new a());

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                int i11 = message.arg1;
                int i12 = message.arg2;
                Object obj = message.obj;
                if (m.this.f3596c != null) {
                    m.this.f3596c.a(i11);
                }
                m.this.f3595b.a(i11, i12, obj != null ? Long.valueOf(obj.toString()).longValue() : 0L);
                return false;
            }
            if (i10 == 2) {
                if (m.this.f3596c != null) {
                    m.this.f3596c.a(o.f3628b);
                }
                m.this.f3595b.b();
                return false;
            }
            if (i10 == 3) {
                Object obj2 = message.obj;
                if (m.this.f3596c != null) {
                    m.this.f3596c.a(o.f3630d);
                }
                m.this.f3595b.a((File) obj2);
                return false;
            }
            if (i10 == 4) {
                int i13 = message.arg1;
                Object obj3 = message.obj;
                if (m.this.f3596c != null) {
                    m.this.f3596c.a(o.f3631e);
                }
                m.this.f3595b.a(i13, obj3 != null ? obj3.toString() : "null msg");
                return false;
            }
            if (i10 == 7) {
                String str = (String) message.obj;
                if (m.this.f3596c == null || TextUtils.isEmpty(str)) {
                    return false;
                }
                m.this.f3596c.a(str);
                return false;
            }
            if (i10 == 5) {
                m.this.f3595b.a();
                return false;
            }
            if (i10 != 6) {
                return false;
            }
            m.this.f3595b.c();
            return false;
        }
    }

    public m(i iVar, k kVar) {
        this.f3595b = iVar == null ? i.f3581a : iVar;
        this.f3596c = kVar;
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void c() {
        this.f3598e.sendMessage(Message.obtain(this.f3598e, 6));
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void a() {
        this.f3598e.sendMessage(Message.obtain(this.f3598e, 5));
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void b() {
        this.f3598e.sendMessage(Message.obtain(this.f3598e, 2));
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void a(int i10, long j10, long j11) {
        if (i10 != this.f3597d) {
            Message messageObtain = Message.obtain(this.f3598e, 1, i10, (int) j10);
            messageObtain.obj = Long.valueOf(j11);
            this.f3598e.sendMessage(messageObtain);
            this.f3597d = i10;
        }
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void a(int i10, String str) {
        this.f3598e.sendMessage(Message.obtain(this.f3598e, 4));
    }

    @Override // com.aggmoread.sdk.z.a.j.i
    public void a(File file) {
        this.f3598e.sendMessage(Message.obtain(this.f3598e, 3, file));
    }
}
