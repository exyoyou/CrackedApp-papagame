package com.cloudplay.messagesdk.gson;

import com.join.mgps.Util.o0;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.1
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.2
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.a(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.3
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.a(FieldNamingPolicy.a(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.4
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.5
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.cloudplay.messagesdk.gson.FieldNamingPolicy.6
        @Override // com.cloudplay.messagesdk.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.a(field.getName(), o0.f49827a).toLowerCase(Locale.ENGLISH);
        }
    };

    static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    static String a(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        while (!Character.isLetter(str.charAt(i10)) && i10 < length) {
            i10++;
        }
        char cCharAt = str.charAt(i10);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i10 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
    }
}
