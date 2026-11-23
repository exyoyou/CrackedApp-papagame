package com.wf.transfer.core;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class b extends d.b {
    private static b sFileSourceService = new b();

    public static b get() {
        return sFileSourceService;
    }

    @Override // com.wf.transfer.core.d
    public List<FileInfo> listFiles(String str) throws RemoteException {
        File[] fileArrListFiles = new File(str).listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    arrayList.add(new FileInfo(file));
                } else if (file.isDirectory()) {
                    arrayList.addAll(listFiles(file.getAbsolutePath()));
                }
            }
        }
        return arrayList;
    }

    @Override // com.wf.transfer.core.d
    public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
        try {
            return ParcelFileDescriptor.open(new File(str), C.ENCODING_PCM_MU_LAW);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
