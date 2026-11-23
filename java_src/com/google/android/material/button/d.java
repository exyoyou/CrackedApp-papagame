package com.google.android.material.button;

import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(29)
@RestrictTo({RestrictTo.Scope.LIBRARY})
public final class d implements InspectionCompanion<MaterialButton> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f29738a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f29739b;

    @Override // android.view.inspector.InspectionCompanion
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void readProperties(@NonNull MaterialButton materialButton, @NonNull PropertyReader propertyReader) {
        if (!this.f29738a) {
            throw c.a();
        }
        propertyReader.readInt(this.f29739b, materialButton.getIconPadding());
    }

    @Override // android.view.inspector.InspectionCompanion
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.f29739b = propertyMapper.mapInt("iconPadding", R.attr.iconPadding);
        this.f29738a = true;
    }
}
