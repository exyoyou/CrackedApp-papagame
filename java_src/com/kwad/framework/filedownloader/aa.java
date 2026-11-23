package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.message.MessageSnapshot;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class aa implements com.kwad.framework.filedownloader.message.e.b {
    private static boolean a(List<a.InterfaceC0903a> list, MessageSnapshot messageSnapshot) {
        if (list.size() > 1 && messageSnapshot.AH() == -3) {
            Iterator<a.InterfaceC0903a> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next().AQ().c(messageSnapshot)) {
                    return true;
                }
            }
        }
        Iterator<a.InterfaceC0903a> it3 = list.iterator();
        while (it3.hasNext()) {
            if (it3.next().AQ().b(messageSnapshot)) {
                return true;
            }
        }
        if (-4 == messageSnapshot.AH()) {
            Iterator<a.InterfaceC0903a> it4 = list.iterator();
            while (it4.hasNext()) {
                if (it4.next().AQ().d(messageSnapshot)) {
                    return true;
                }
            }
        }
        if (list.size() == 1) {
            return list.get(0).AQ().a(messageSnapshot);
        }
        return false;
    }

    @Override // com.kwad.framework.filedownloader.message.e.b
    public final void r(MessageSnapshot messageSnapshot) {
        synchronized (Integer.toString(messageSnapshot.getId()).intern()) {
            List<a.InterfaceC0903a> listCs = h.Bn().cs(messageSnapshot.getId());
            if (listCs.size() > 0) {
                a aVarAP = listCs.get(0).AP();
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "~~~callback %s old[%s] new[%s] %d", Integer.valueOf(messageSnapshot.getId()), Byte.valueOf(aVarAP.AH()), Byte.valueOf(messageSnapshot.AH()), Integer.valueOf(listCs.size()));
                }
                if (!a(listCs, messageSnapshot)) {
                    StringBuilder sb2 = new StringBuilder("The event isn't consumed, id:" + messageSnapshot.getId() + " status:" + ((int) messageSnapshot.AH()) + " task-count:" + listCs.size());
                    for (a.InterfaceC0903a interfaceC0903a : listCs) {
                        sb2.append(" | ");
                        sb2.append((int) interfaceC0903a.AP().AH());
                    }
                    com.kwad.framework.filedownloader.f.d.b(this, sb2.toString(), new Object[0]);
                }
            } else {
                com.kwad.framework.filedownloader.f.d.b(this, "Receive the event %d, but there isn't any running task in the upper layer", Byte.valueOf(messageSnapshot.AH()));
            }
        }
    }
}
