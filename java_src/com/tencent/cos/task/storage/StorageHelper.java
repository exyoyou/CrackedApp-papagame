package com.tencent.cos.task.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.cos.task.Task;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StorageHelper {
    private SharedPreferences mSharedPreferences;
    private final byte[] object = new byte[0];
    private final byte[] object2 = new byte[0];

    public StorageHelper(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mSharedPreferences = context.getSharedPreferences(str, 0);
    }

    public List<Task> loadUploadTasks() {
        synchronized (this.object2) {
            ArrayList arrayList = new ArrayList();
            SharedPreferences sharedPreferences = this.mSharedPreferences;
            if (sharedPreferences == null) {
                return arrayList;
            }
            Parcel parcelObtain = null;
            String string = sharedPreferences.getString("upload_tasks", null);
            if (string != null) {
                try {
                    byte[] bArrDecode = Base64.decode(string, 0);
                    parcelObtain = Parcel.obtain();
                    parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
                    parcelObtain.setDataPosition(0);
                    parcelObtain.readList(arrayList, Task.class.getClassLoader());
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                        if (parcelObtain != null) {
                        }
                    } catch (Throwable th2) {
                        if (parcelObtain != null) {
                            parcelObtain.recycle();
                        }
                        throw th2;
                    }
                }
                parcelObtain.recycle();
            }
            return arrayList;
        }
    }

    public void saveUploadTasks(List<Task> list) {
        Parcel parcelObtain;
        synchronized (this.object) {
            if (this.mSharedPreferences == null) {
                return;
            }
            if (list == null) {
                return;
            }
            try {
                parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeList(list);
                    this.mSharedPreferences.edit().putString("upload_tasks", new String(Base64.encode(parcelObtain.marshall(), 0))).commit();
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        if (parcelObtain != null) {
                        }
                    } catch (Throwable th2) {
                        if (parcelObtain != null) {
                            parcelObtain.recycle();
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                parcelObtain = null;
            }
            parcelObtain.recycle();
        }
    }
}
