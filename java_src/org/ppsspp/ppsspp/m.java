package org.ppsspp.ppsspp;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.papa91.arc.util.StoreUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes10.dex */
public class m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f95954g = "..";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f95955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f95956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f95957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f95958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Comparator<File> f95959e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DialogInterface.OnClickListener f95960f = new b();

    class a implements Comparator<File> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return 0;
            }
            if (file.isDirectory() && !file2.isDirectory()) {
                return -1;
            }
            if (!file2.isDirectory() || file.isDirectory()) {
                return file.getName().toUpperCase().compareTo(file2.getName().toUpperCase());
            }
            return 1;
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            File fileE = m.this.e(m.this.f95957c[i10]);
            dialogInterface.cancel();
            dialogInterface.dismiss();
            if (fileE.isDirectory()) {
                m.this.f(fileE);
                m.this.g();
            } else if (m.this.f95955a != null) {
                m.this.f95955a.a(fileE);
            }
        }
    }

    public interface c {
        void a(File file);
    }

    public m(Activity activity, File file, c cVar) {
        this.f95956b = activity;
        this.f95955a = cVar;
        f(file.exists() ? file : new File(StoreUtils.getExternalStorageDirectory(activity)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File e(String str) {
        return str.equals(f95954g) ? this.f95958d.getParentFile() : new File(this.f95958d, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(File file) {
        this.f95958d = file;
        ArrayList arrayList = new ArrayList();
        if (file.getParentFile() != null) {
            arrayList.add(f95954g);
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, this.f95959e);
            for (File file2 : fileArrListFiles) {
                arrayList.add(file2.getName());
            }
        }
        this.f95957c = (String[]) arrayList.toArray(new String[0]);
    }

    public void g() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f95956b);
        builder.setTitle(this.f95958d.getPath());
        builder.setItems(this.f95957c, this.f95960f);
        builder.show();
    }
}
