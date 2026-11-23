package com.facebook.datasource;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class a implements e<Boolean> {
    @Override // com.facebook.datasource.e
    public void a(c<Boolean> dataSource) {
    }

    @Override // com.facebook.datasource.e
    public void b(c<Boolean> dataSource) {
    }

    @Override // com.facebook.datasource.e
    public void c(c<Boolean> dataSource) {
        try {
            e(dataSource);
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.e
    public void d(c<Boolean> dataSource) {
        try {
            f(dataSource.getResult().booleanValue());
        } finally {
            dataSource.close();
        }
    }

    protected abstract void e(c<Boolean> dataSource);

    protected abstract void f(boolean isFoundInDisk);
}
