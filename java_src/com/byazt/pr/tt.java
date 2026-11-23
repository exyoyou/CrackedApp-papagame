package com.byazt.pr;

import android.app.Dialog;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListView;
import com.byazt.nc.a;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 794, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.vo.tt f18823c;
    public c tt;

    public interface c {
        void c(a aVar);
    }

    /* JADX INFO: renamed from: com.byazt.pr.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 794, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    private static final class C0413tt implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final tt f18824c;
        public final AdapterView.OnItemClickListener tt;

        private com.byazt.vo.ve c(Object obj) {
            if (obj == null) {
                return null;
            }
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            for (int i10 = 0; i10 < declaredFields.length; i10++) {
                try {
                    declaredFields[i10].setAccessible(true);
                    Object obj2 = declaredFields[i10].get(obj);
                    if (obj2 instanceof a) {
                        return new com.byazt.vo.ve(((a) obj2).getId(), ((a) obj2).getName());
                    }
                    continue;
                } catch (Exception e10) {
                    m.c(e10);
                }
            }
            return null;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            Adapter adapter = adapterView.getAdapter();
            if (adapter != null) {
                Object item = adapter.getItem(i10);
                if (b.a(item)) {
                    this.f18824c.c(c(item));
                }
            }
            AdapterView.OnItemClickListener onItemClickListener = this.tt;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i10, j10);
            }
        }

        private C0413tt(AdapterView.OnItemClickListener onItemClickListener, tt ttVar) {
            this.f18824c = ttVar;
            this.tt = onItemClickListener;
        }
    }

    public tt(com.byazt.vo.tt ttVar) {
        this.f18823c = ttVar;
    }

    public void c(a aVar) {
        if (this.f18823c != null && aVar != null) {
            com.byazt.pr.c.c().c(this.f18823c, aVar);
        }
        c cVar = this.tt;
        if (cVar != null) {
            cVar.c(aVar);
        }
    }

    public static final void c(com.byazt.vo.tt ttVar, Dialog dialog, Integer[] numArr) {
        c(ttVar, dialog, numArr, null);
    }

    public static final void c(com.byazt.vo.tt ttVar, Dialog dialog, Integer[] numArr, c cVar) {
        if (numArr == null || numArr.length <= 0) {
            return;
        }
        tt ttVar2 = new tt(ttVar);
        ttVar2.tt = cVar;
        for (Integer num : numArr) {
            View viewFindViewById = dialog.findViewById(num.intValue());
            if (viewFindViewById instanceof ListView) {
                ListView listView = (ListView) viewFindViewById;
                listView.setOnItemClickListener(new C0413tt(listView.getOnItemClickListener(), ttVar2));
            }
        }
    }
}
