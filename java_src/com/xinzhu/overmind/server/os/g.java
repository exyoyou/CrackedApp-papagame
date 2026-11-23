package com.xinzhu.overmind.server.os;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class g extends b.AbstractBinderC1134b implements com.xinzhu.overmind.server.g {
    private static g sService = new g();

    public static g get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.os.b
    public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
        File[] fileArrListFiles = new File(str).listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                arrayList.add(new MindShareFileInfo(file));
            }
        }
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.os.b
    public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
        try {
            return ParcelFileDescriptor.open(new File(str), C.ENCODING_PCM_MU_LAW);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }
}
