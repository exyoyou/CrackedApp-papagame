.class public Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile addInstMethod:Ljava/lang/reflect/Method;

.field private static volatile specMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/math/BigInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public static addInstruction(Lcom/android/dx/Code;Lcom/android/dx/rop/code/Insn;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->addInstMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Lcom/android/dx/Code;

    .line 8
    .line 9
    const-string v3, "addInstruction"

    .line 10
    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Lcom/android/dx/rop/code/Insn;

    .line 14
    .line 15
    aput-object v5, v4, v1

    .line 16
    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->addInstMethod:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->addInstMethod:Ljava/lang/reflect/Method;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->addInstMethod:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p1, v2, v1

    .line 38
    .line 39
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_1
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :catch_2
    move-exception p0

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_2
    return-void
.end method

.method public static autoBoxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/Local<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/dx/Local;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/android/dx/Local;->getType()Lcom/android/dx/TypeId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const-string v5, "valueOf"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-class v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 24
    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 32
    .line 33
    aput-object p2, v1, v3

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    sget-object v1, Lcom/android/dx/TypeId;->BYTE:Lcom/android/dx/TypeId;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const-class v0, Ljava/lang/Byte;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 55
    .line 56
    aput-object v1, v2, v3

    .line 57
    .line 58
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 63
    .line 64
    aput-object p2, v1, v3

    .line 65
    .line 66
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    sget-object v1, Lcom/android/dx/TypeId;->CHAR:Lcom/android/dx/TypeId;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const-class v0, Ljava/lang/Character;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 86
    .line 87
    aput-object v1, v2, v3

    .line 88
    .line 89
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 94
    .line 95
    aput-object p2, v1, v3

    .line 96
    .line 97
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_2
    sget-object v1, Lcom/android/dx/TypeId;->DOUBLE:Lcom/android/dx/TypeId;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    const-class v0, Ljava/lang/Double;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 117
    .line 118
    aput-object v1, v2, v3

    .line 119
    .line 120
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 125
    .line 126
    aput-object p2, v1, v3

    .line 127
    .line 128
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_3
    sget-object v1, Lcom/android/dx/TypeId;->FLOAT:Lcom/android/dx/TypeId;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    const-class v0, Ljava/lang/Float;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 148
    .line 149
    aput-object v1, v2, v3

    .line 150
    .line 151
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 156
    .line 157
    aput-object p2, v1, v3

    .line 158
    .line 159
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    sget-object v1, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    const-class v0, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 178
    .line 179
    aput-object v1, v2, v3

    .line 180
    .line 181
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 186
    .line 187
    aput-object p2, v1, v3

    .line 188
    .line 189
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_5
    sget-object v1, Lcom/android/dx/TypeId;->LONG:Lcom/android/dx/TypeId;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    const-class v0, Ljava/lang/Long;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 208
    .line 209
    aput-object v1, v2, v3

    .line 210
    .line 211
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 216
    .line 217
    aput-object p2, v1, v3

    .line 218
    .line 219
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_6
    sget-object v1, Lcom/android/dx/TypeId;->SHORT:Lcom/android/dx/TypeId;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    const-class v0, Ljava/lang/Short;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 238
    .line 239
    aput-object v1, v2, v3

    .line 240
    .line 241
    invoke-virtual {v0, v0, v5, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-array v1, v4, [Lcom/android/dx/Local;

    .line 246
    .line 247
    aput-object p2, v1, v3

    .line 248
    .line 249
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_7
    sget-object v1, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_8

    .line 260
    .line 261
    const/4 p2, 0x0

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 267
    .line 268
    .line 269
    :goto_0
    return-void
.end method

.method public static autoUnboxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/Local;",
            "Lcom/android/dx/Local;",
            "Ljava/util/Map<",
            "Lcom/android/dx/TypeId;",
            "Lcom/android/dx/Local;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/dx/Local;->getType()Lcom/android/dx/TypeId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string p4, "Ljava/lang/Boolean;"

    .line 15
    .line 16
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/android/dx/Local;

    .line 25
    .line 26
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 27
    .line 28
    .line 29
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 30
    .line 31
    const-string v0, "booleanValue"

    .line 32
    .line 33
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 38
    .line 39
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_0
    sget-object v1, Lcom/android/dx/TypeId;->BYTE:Lcom/android/dx/TypeId;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const-string p4, "Ljava/lang/Byte;"

    .line 53
    .line 54
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Lcom/android/dx/Local;

    .line 63
    .line 64
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 65
    .line 66
    .line 67
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 68
    .line 69
    const-string v0, "byteValue"

    .line 70
    .line 71
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 76
    .line 77
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    sget-object v1, Lcom/android/dx/TypeId;->CHAR:Lcom/android/dx/TypeId;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    const-string p4, "Ljava/lang/Character;"

    .line 91
    .line 92
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Lcom/android/dx/Local;

    .line 101
    .line 102
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 103
    .line 104
    .line 105
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 106
    .line 107
    const-string v0, "charValue"

    .line 108
    .line 109
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 114
    .line 115
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_2
    sget-object v1, Lcom/android/dx/TypeId;->DOUBLE:Lcom/android/dx/TypeId;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    const-string p4, "Ljava/lang/Double;"

    .line 129
    .line 130
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    check-cast p3, Lcom/android/dx/Local;

    .line 139
    .line 140
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 141
    .line 142
    .line 143
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 144
    .line 145
    const-string v0, "doubleValue"

    .line 146
    .line 147
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 152
    .line 153
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_3
    sget-object v1, Lcom/android/dx/TypeId;->FLOAT:Lcom/android/dx/TypeId;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    const-string p4, "Ljava/lang/Float;"

    .line 167
    .line 168
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Lcom/android/dx/Local;

    .line 177
    .line 178
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 179
    .line 180
    .line 181
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 182
    .line 183
    const-string v0, "floatValue"

    .line 184
    .line 185
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 190
    .line 191
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_4
    sget-object v1, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_5

    .line 203
    .line 204
    const-string p4, "Ljava/lang/Integer;"

    .line 205
    .line 206
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 207
    .line 208
    .line 209
    move-result-object p4

    .line 210
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    check-cast p3, Lcom/android/dx/Local;

    .line 215
    .line 216
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 217
    .line 218
    .line 219
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 220
    .line 221
    const-string v0, "intValue"

    .line 222
    .line 223
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 228
    .line 229
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_5
    sget-object v1, Lcom/android/dx/TypeId;->LONG:Lcom/android/dx/TypeId;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    .line 241
    const-string p4, "Ljava/lang/Long;"

    .line 242
    .line 243
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 244
    .line 245
    .line 246
    move-result-object p4

    .line 247
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    check-cast p3, Lcom/android/dx/Local;

    .line 252
    .line 253
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 254
    .line 255
    .line 256
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 257
    .line 258
    const-string v0, "longValue"

    .line 259
    .line 260
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 265
    .line 266
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_6
    sget-object v1, Lcom/android/dx/TypeId;->SHORT:Lcom/android/dx/TypeId;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_7

    .line 277
    .line 278
    const-string p4, "Ljava/lang/Short;"

    .line 279
    .line 280
    invoke-static {p4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 281
    .line 282
    .line 283
    move-result-object p4

    .line 284
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p3

    .line 288
    check-cast p3, Lcom/android/dx/Local;

    .line 289
    .line 290
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 291
    .line 292
    .line 293
    new-array p2, v3, [Lcom/android/dx/TypeId;

    .line 294
    .line 295
    const-string v0, "shortValue"

    .line 296
    .line 297
    invoke-virtual {p4, v1, v0, p2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    new-array p4, v3, [Lcom/android/dx/Local;

    .line 302
    .line 303
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_7
    sget-object p3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 308
    .line 309
    invoke-virtual {v0, p3}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    if-eqz p3, :cond_8

    .line 314
    .line 315
    const/4 p2, 0x0

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_8
    if-eqz p4, :cond_9

    .line 321
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 323
    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 327
    .line 328
    .line 329
    :goto_0
    return-void
.end method

.method public static createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/dx/TypeId;",
            "Lcom/android/dx/Local;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Lcom/android/dx/TypeId;->BYTE:Lcom/android/dx/TypeId;

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    sget-object v6, Lcom/android/dx/TypeId;->CHAR:Lcom/android/dx/TypeId;

    .line 21
    .line 22
    invoke-virtual {v0, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    sget-object v8, Lcom/android/dx/TypeId;->DOUBLE:Lcom/android/dx/TypeId;

    .line 27
    .line 28
    invoke-virtual {v0, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    sget-object v10, Lcom/android/dx/TypeId;->FLOAT:Lcom/android/dx/TypeId;

    .line 33
    .line 34
    invoke-virtual {v0, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    sget-object v12, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 39
    .line 40
    invoke-virtual {v0, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    sget-object v14, Lcom/android/dx/TypeId;->LONG:Lcom/android/dx/TypeId;

    .line 45
    .line 46
    invoke-virtual {v0, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 47
    .line 48
    .line 49
    move-result-object v15

    .line 50
    move-object/from16 v16, v14

    .line 51
    .line 52
    sget-object v14, Lcom/android/dx/TypeId;->SHORT:Lcom/android/dx/TypeId;

    .line 53
    .line 54
    move-object/from16 v17, v12

    .line 55
    .line 56
    invoke-virtual {v0, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    move-object/from16 v18, v14

    .line 61
    .line 62
    sget-object v14, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 63
    .line 64
    move-object/from16 v19, v10

    .line 65
    .line 66
    invoke-virtual {v0, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    move-object/from16 v20, v14

    .line 71
    .line 72
    sget-object v14, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 73
    .line 74
    move-object/from16 v21, v8

    .line 75
    .line 76
    invoke-virtual {v0, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v22, "Ljava/lang/Boolean;"

    .line 81
    .line 82
    move-object/from16 v23, v14

    .line 83
    .line 84
    invoke-static/range {v22 .. v22}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    invoke-virtual {v0, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    const-string v24, "Ljava/lang/Byte;"

    .line 93
    .line 94
    move-object/from16 v25, v6

    .line 95
    .line 96
    invoke-static/range {v24 .. v24}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v0, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v26, "Ljava/lang/Character;"

    .line 105
    .line 106
    move-object/from16 v27, v4

    .line 107
    .line 108
    invoke-static/range {v26 .. v26}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v0, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v28, "Ljava/lang/Double;"

    .line 117
    .line 118
    move-object/from16 v29, v1

    .line 119
    .line 120
    invoke-static/range {v28 .. v28}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v30, "Ljava/lang/Float;"

    .line 129
    .line 130
    move-object/from16 v31, v2

    .line 131
    .line 132
    invoke-static/range {v30 .. v30}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v32, "Ljava/lang/Integer;"

    .line 141
    .line 142
    move-object/from16 v33, v2

    .line 143
    .line 144
    invoke-static/range {v32 .. v32}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v34, "Ljava/lang/Long;"

    .line 153
    .line 154
    move-object/from16 v35, v2

    .line 155
    .line 156
    invoke-static/range {v34 .. v34}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v36, "Ljava/lang/Short;"

    .line 165
    .line 166
    move-object/from16 v37, v2

    .line 167
    .line 168
    invoke-static/range {v36 .. v36}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v38, "Ljava/lang/Void;"

    .line 177
    .line 178
    move-object/from16 v39, v2

    .line 179
    .line 180
    invoke-static/range {v38 .. v38}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move-object/from16 v40, v2

    .line 189
    .line 190
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    move-object/from16 v41, v3

    .line 197
    .line 198
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v0, v5, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v0, v7, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const-wide/16 v42, 0x0

    .line 213
    .line 214
    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v0, v9, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v0, v11, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0, v13, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    const-wide/16 v42, 0x0

    .line 237
    .line 238
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v0, v15, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v0, v12, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0, v10, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v8, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v14, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v6, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v4, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v3, v33

    .line 272
    .line 273
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v3, v35

    .line 277
    .line 278
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v3, v37

    .line 282
    .line 283
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v3, v39

    .line 287
    .line 288
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    move-object/from16 v3, v40

    .line 292
    .line 293
    invoke-virtual {v0, v3, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    move-object/from16 v0, v29

    .line 297
    .line 298
    move-object/from16 v2, v31

    .line 299
    .line 300
    move-object/from16 v3, v41

    .line 301
    .line 302
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-object/from16 v2, v27

    .line 306
    .line 307
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-object/from16 v2, v25

    .line 311
    .line 312
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-object/from16 v2, v21

    .line 316
    .line 317
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-object/from16 v2, v19

    .line 321
    .line 322
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-object/from16 v2, v17

    .line 326
    .line 327
    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-object/from16 v2, v16

    .line 331
    .line 332
    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-object/from16 v2, v18

    .line 336
    .line 337
    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-object/from16 v2, v20

    .line 341
    .line 342
    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-object/from16 v2, v23

    .line 346
    .line 347
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    invoke-static/range {v22 .. v22}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    invoke-static/range {v24 .. v24}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    invoke-static/range {v26 .. v26}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    invoke-static/range {v28 .. v28}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    invoke-static/range {v30 .. v30}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object/from16 v2, v33

    .line 383
    .line 384
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    invoke-static/range {v32 .. v32}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    move-object/from16 v2, v35

    .line 392
    .line 393
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    invoke-static/range {v34 .. v34}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    move-object/from16 v2, v37

    .line 401
    .line 402
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    invoke-static/range {v36 .. v36}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    move-object/from16 v2, v39

    .line 410
    .line 411
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    invoke-static/range {v38 .. v38}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    move-object/from16 v2, v40

    .line 419
    .line 420
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    return-object v0
.end method

.method public static getObjTypeIdIfPrimitive(Lcom/android/dx/TypeId;)Lcom/android/dx/TypeId;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Ljava/lang/Boolean;"

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/android/dx/TypeId;->BYTE:Lcom/android/dx/TypeId;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string p0, "Ljava/lang/Byte;"

    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lcom/android/dx/TypeId;->CHAR:Lcom/android/dx/TypeId;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const-string p0, "Ljava/lang/Character;"

    .line 40
    .line 41
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object v0, Lcom/android/dx/TypeId;->DOUBLE:Lcom/android/dx/TypeId;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string p0, "Ljava/lang/Double;"

    .line 55
    .line 56
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3
    sget-object v0, Lcom/android/dx/TypeId;->FLOAT:Lcom/android/dx/TypeId;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const-string p0, "Ljava/lang/Float;"

    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    sget-object v0, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    const-string p0, "Ljava/lang/Integer;"

    .line 85
    .line 86
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_5
    sget-object v0, Lcom/android/dx/TypeId;->LONG:Lcom/android/dx/TypeId;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    const-string p0, "Ljava/lang/Long;"

    .line 100
    .line 101
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_6
    sget-object v0, Lcom/android/dx/TypeId;->SHORT:Lcom/android/dx/TypeId;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    const-string p0, "Ljava/lang/Short;"

    .line 115
    .line 116
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_7
    sget-object v0, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    const-string p0, "Ljava/lang/Void;"

    .line 130
    .line 131
    invoke-static {p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    :cond_8
    return-object p0
.end method

.method public static moveException(Lcom/android/dx/Code;Lcom/android/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/Local<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    .line 2
    .line 3
    sget-object v1, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMoveException(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->spec(Lcom/android/dx/Local;)Lcom/android/dx/rop/code/RegisterSpec;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->addInstruction(Lcom/android/dx/Code;Lcom/android/dx/rop/code/Insn;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static returnRightValue(Lcom/android/dx/Code;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/android/dx/Local;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/dx/Local;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static spec(Lcom/android/dx/Local;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Local<",
            "*>;)",
            "Lcom/android/dx/rop/code/RegisterSpec;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->specMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-class v0, Lcom/android/dx/Local;

    .line 7
    .line 8
    const-string v2, "spec"

    .line 9
    .line 10
    new-array v3, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->specMethod:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->specMethod:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->specMethod:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/dx/rop/code/RegisterSpec;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_1
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_2
    move-exception p0

    .line 43
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method
