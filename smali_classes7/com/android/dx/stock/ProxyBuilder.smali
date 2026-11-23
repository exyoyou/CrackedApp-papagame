.class public final Lcom/android/dx/stock/ProxyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/stock/ProxyBuilder$ProxiedClass;,
        Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIELD_NAME_HANDLER:Ljava/lang/String; = "$__handler"

.field private static final FIELD_NAME_METHODS:Ljava/lang/String; = "$__methodArray"

.field private static final PRIMITIVE_TO_BOXED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/dx/MethodId<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Lcom/android/dx/MethodId<",
            "**>;>;"
        }
    .end annotation
.end field

.field public static final VERSION:I = 0x1

.field private static final generatedProxyClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/dx/stock/ProxyBuilder$ProxiedClass<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final baseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private constructorArgTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private constructorArgValues:[Ljava/lang/Object;

.field private dexCache:Ljava/io/File;

.field private handler:Ljava/lang/reflect/InvocationHandler;

.field private interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private markTrusted:Z

.field private methods:[Ljava/lang/reflect/Method;

.field private parentClassLoader:Ljava/lang/ClassLoader;

.field private sharedClassLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/dx/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    const-class v2, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    const-class v3, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    const-class v4, Ljava/lang/Byte;

    .line 36
    .line 37
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    const-class v5, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    const-class v6, Ljava/lang/Short;

    .line 50
    .line 51
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    const-class v7, Ljava/lang/Float;

    .line 57
    .line 58
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    const-class v8, Ljava/lang/Double;

    .line 64
    .line 65
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    const-class v9, Ljava/lang/Character;

    .line 71
    .line 72
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v1, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v10, 0x0

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Ljava/lang/Class;

    .line 108
    .line 109
    invoke-static {v11}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Class;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/4 v12, 0x1

    .line 124
    new-array v12, v12, [Lcom/android/dx/TypeId;

    .line 125
    .line 126
    aput-object v11, v12, v10

    .line 127
    .line 128
    const-string v10, "valueOf"

    .line 129
    .line 130
    invoke-virtual {v1, v1, v10, v12}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v10, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sget-object v11, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 152
    .line 153
    const-string v12, "booleanValue"

    .line 154
    .line 155
    new-array v13, v10, [Lcom/android/dx/TypeId;

    .line 156
    .line 157
    invoke-virtual {v2, v11, v12, v13}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    sget-object v3, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 171
    .line 172
    const-string v11, "intValue"

    .line 173
    .line 174
    new-array v12, v10, [Lcom/android/dx/TypeId;

    .line 175
    .line 176
    invoke-virtual {v2, v3, v11, v12}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 184
    .line 185
    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    sget-object v3, Lcom/android/dx/TypeId;->BYTE:Lcom/android/dx/TypeId;

    .line 190
    .line 191
    const-string v4, "byteValue"

    .line 192
    .line 193
    new-array v11, v10, [Lcom/android/dx/TypeId;

    .line 194
    .line 195
    invoke-virtual {v2, v3, v4, v11}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 203
    .line 204
    invoke-static {v5}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    sget-object v3, Lcom/android/dx/TypeId;->LONG:Lcom/android/dx/TypeId;

    .line 209
    .line 210
    const-string v4, "longValue"

    .line 211
    .line 212
    new-array v5, v10, [Lcom/android/dx/TypeId;

    .line 213
    .line 214
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 222
    .line 223
    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    sget-object v3, Lcom/android/dx/TypeId;->SHORT:Lcom/android/dx/TypeId;

    .line 228
    .line 229
    const-string v4, "shortValue"

    .line 230
    .line 231
    new-array v5, v10, [Lcom/android/dx/TypeId;

    .line 232
    .line 233
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 241
    .line 242
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    sget-object v3, Lcom/android/dx/TypeId;->FLOAT:Lcom/android/dx/TypeId;

    .line 247
    .line 248
    const-string v4, "floatValue"

    .line 249
    .line 250
    new-array v5, v10, [Lcom/android/dx/TypeId;

    .line 251
    .line 252
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 260
    .line 261
    invoke-static {v8}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    sget-object v3, Lcom/android/dx/TypeId;->DOUBLE:Lcom/android/dx/TypeId;

    .line 266
    .line 267
    const-string v4, "doubleValue"

    .line 268
    .line 269
    new-array v5, v10, [Lcom/android/dx/TypeId;

    .line 270
    .line 271
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 279
    .line 280
    invoke-static {v9}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    sget-object v3, Lcom/android/dx/TypeId;->CHAR:Lcom/android/dx/TypeId;

    .line 285
    .line 286
    const-string v4, "charValue"

    .line 287
    .line 288
    new-array v5, v10, [Lcom/android/dx/TypeId;

    .line 289
    .line 290
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    sput-object v0, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 298
    .line 299
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/dx/stock/ProxyBuilder;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Ljava/lang/Class;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 29
    .line 30
    return-void
.end method

.method private static boxIfRequired(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)Lcom/android/dx/Local;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Lcom/android/dx/Local<",
            "*>;",
            "Lcom/android/dx/Local<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/dx/Local<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/dx/Local;->getType()Lcom/android/dx/TypeId;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/dx/MethodId;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Lcom/android/dx/Local;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method

.method public static varargs callSuper(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/android/dx/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    throw p0
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method private static classArrayToTypeArray([Ljava/lang/Class;)[Lcom/android/dx/TypeId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lcom/android/dx/TypeId;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static forClass(Ljava/lang/Class;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/dx/stock/ProxyBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/dx/stock/ProxyBuilder;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static generateCodeForAllMethods(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;[Ljava/lang/reflect/Method;Lcom/android/dx/TypeId;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "TG;>;[",
            "Ljava/lang/reflect/Method;",
            "Lcom/android/dx/TypeId<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-class v3, Ljava/lang/reflect/InvocationHandler;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-class v4, [Ljava/lang/reflect/Method;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "$__handler"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v5}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "$__methodArray"

    .line 26
    .line 27
    invoke-virtual {v1, v4, v6}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-class v7, Ljava/lang/reflect/Method;

    .line 32
    .line 33
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const-class v8, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v8}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    sget-object v9, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    new-array v11, v10, [Lcom/android/dx/TypeId;

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    aput-object v9, v11, v12

    .line 50
    .line 51
    const/4 v13, 0x1

    .line 52
    aput-object v7, v11, v13

    .line 53
    .line 54
    const/4 v14, 0x2

    .line 55
    aput-object v8, v11, v14

    .line 56
    .line 57
    const-string v15, "invoke"

    .line 58
    .line 59
    invoke-virtual {v3, v9, v15, v11}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const/4 v11, 0x0

    .line 64
    :goto_0
    array-length v15, v2

    .line 65
    if-ge v11, v15, :cond_a

    .line 66
    .line 67
    aget-object v15, v2, v11

    .line 68
    .line 69
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    array-length v10, v12

    .line 78
    new-array v13, v10, [Lcom/android/dx/TypeId;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_1
    if-ge v2, v10, :cond_0

    .line 82
    .line 83
    aget-object v16, v12, v2

    .line 84
    .line 85
    invoke-static/range {v16 .. v16}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 86
    .line 87
    .line 88
    move-result-object v16

    .line 89
    aput-object v16, v13, v2

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    move-object/from16 v16, v9

    .line 99
    .line 100
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    move-object/from16 v17, v5

    .line 105
    .line 106
    invoke-virtual {v1, v9, v14, v13}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-class v18, Ljava/lang/AbstractMethodError;

    .line 111
    .line 112
    move/from16 v19, v10

    .line 113
    .line 114
    invoke-static/range {v18 .. v18}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    move-object/from16 v18, v6

    .line 119
    .line 120
    const/4 v6, 0x1

    .line 121
    invoke-virtual {v0, v5, v6}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5, v1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v1, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 134
    .line 135
    move-object/from16 v20, v0

    .line 136
    .line 137
    invoke-virtual {v5, v1}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object/from16 v21, v0

    .line 142
    .line 143
    sget-object v0, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 144
    .line 145
    move-object/from16 v22, v6

    .line 146
    .line 147
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    move-object/from16 v23, v6

    .line 152
    .line 153
    invoke-virtual {v5, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    move-object/from16 v24, v8

    .line 158
    .line 159
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v5, v1}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    move-object/from16 v25, v1

    .line 168
    .line 169
    invoke-virtual {v5, v9}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    move-object/from16 v26, v1

    .line 174
    .line 175
    invoke-virtual {v5, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    move-object/from16 v27, v4

    .line 180
    .line 181
    invoke-virtual {v5, v7}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object/from16 v28, v7

    .line 190
    .line 191
    sget-object v7, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    .line 192
    .line 193
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Ljava/lang/Class;

    .line 198
    .line 199
    move-object/from16 v29, v2

    .line 200
    .line 201
    if-eqz v7, :cond_1

    .line 202
    .line 203
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v5, v7}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    goto :goto_2

    .line 212
    :cond_1
    const/4 v7, 0x0

    .line 213
    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    move-object/from16 v30, v3

    .line 218
    .line 219
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    and-int/lit16 v3, v3, 0x400

    .line 224
    .line 225
    if-nez v3, :cond_2

    .line 226
    .line 227
    array-length v3, v12

    .line 228
    new-array v3, v3, [Lcom/android/dx/Local;

    .line 229
    .line 230
    invoke-virtual {v5, v9}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 231
    .line 232
    .line 233
    move-result-object v31

    .line 234
    move-object/from16 v32, v3

    .line 235
    .line 236
    move-object/from16 v3, p3

    .line 237
    .line 238
    invoke-virtual {v3, v9, v14, v13}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    move-object/from16 v33, v9

    .line 243
    .line 244
    move-object/from16 v9, v31

    .line 245
    .line 246
    const/16 v34, 0x0

    .line 247
    .line 248
    move-object/from16 v31, v10

    .line 249
    .line 250
    move-object v10, v14

    .line 251
    move-object/from16 v14, v32

    .line 252
    .line 253
    move-object/from16 v32, v12

    .line 254
    .line 255
    const/4 v12, 0x0

    .line 256
    goto :goto_3

    .line 257
    :cond_2
    move-object/from16 v3, p3

    .line 258
    .line 259
    sget-object v14, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    .line 260
    .line 261
    invoke-virtual {v5, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-virtual {v5, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 266
    .line 267
    .line 268
    move-result-object v31

    .line 269
    move-object/from16 v33, v9

    .line 270
    .line 271
    move-object/from16 v32, v12

    .line 272
    .line 273
    move-object/from16 v34, v14

    .line 274
    .line 275
    move-object/from16 v12, v31

    .line 276
    .line 277
    const/4 v9, 0x0

    .line 278
    const/4 v14, 0x0

    .line 279
    move-object/from16 v31, v10

    .line 280
    .line 281
    const/4 v10, 0x0

    .line 282
    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v5, v0, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v3, v18

    .line 290
    .line 291
    invoke-virtual {v5, v3, v1}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v4, v1, v0}, Lcom/android/dx/Code;->aget(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 295
    .line 296
    .line 297
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v5, v8, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v6, v8}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v0, v17

    .line 308
    .line 309
    move-object/from16 v8, v20

    .line 310
    .line 311
    move-object/from16 v1, v22

    .line 312
    .line 313
    invoke-virtual {v5, v0, v8, v1}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 314
    .line 315
    .line 316
    const/4 v0, 0x0

    .line 317
    invoke-virtual {v5, v2, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/android/dx/Label;

    .line 321
    .line 322
    invoke-direct {v0}, Lcom/android/dx/Label;-><init>()V

    .line 323
    .line 324
    .line 325
    sget-object v3, Lcom/android/dx/Comparison;->EQ:Lcom/android/dx/Comparison;

    .line 326
    .line 327
    invoke-virtual {v5, v3, v0, v2, v8}, Lcom/android/dx/Code;->compare(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 328
    .line 329
    .line 330
    move/from16 v2, v19

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    :goto_4
    if-ge v3, v2, :cond_3

    .line 334
    .line 335
    move/from16 v19, v2

    .line 336
    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    move/from16 v20, v11

    .line 342
    .line 343
    move-object/from16 v11, v23

    .line 344
    .line 345
    invoke-virtual {v5, v11, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    aget-object v2, v13, v3

    .line 349
    .line 350
    invoke-virtual {v5, v3, v2}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    move-object/from16 v22, v12

    .line 355
    .line 356
    move-object/from16 v12, v25

    .line 357
    .line 358
    invoke-static {v5, v2, v12}, Lcom/android/dx/stock/ProxyBuilder;->boxIfRequired(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)Lcom/android/dx/Local;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v5, v6, v11, v2}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v3, v3, 0x1

    .line 366
    .line 367
    move/from16 v2, v19

    .line 368
    .line 369
    move/from16 v11, v20

    .line 370
    .line 371
    move-object/from16 v12, v22

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_3
    move/from16 v20, v11

    .line 375
    .line 376
    move-object/from16 v22, v12

    .line 377
    .line 378
    const/4 v2, 0x3

    .line 379
    new-array v3, v2, [Lcom/android/dx/Local;

    .line 380
    .line 381
    const/4 v11, 0x0

    .line 382
    aput-object v1, v3, v11

    .line 383
    .line 384
    const/4 v12, 0x1

    .line 385
    aput-object v4, v3, v12

    .line 386
    .line 387
    const/4 v4, 0x2

    .line 388
    aput-object v6, v3, v4

    .line 389
    .line 390
    move-object/from16 v6, v16

    .line 391
    .line 392
    move-object/from16 v12, v21

    .line 393
    .line 394
    invoke-virtual {v5, v6, v12, v8, v3}, Lcom/android/dx/Code;->invokeInterface(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v8, v26

    .line 398
    .line 399
    move-object/from16 v3, v29

    .line 400
    .line 401
    invoke-static {v5, v3, v12, v8, v7}, Lcom/android/dx/stock/ProxyBuilder;->generateCodeForReturnStatement(Lcom/android/dx/Code;Ljava/lang/Class;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    and-int/lit16 v0, v0, 0x400

    .line 412
    .line 413
    if-nez v0, :cond_6

    .line 414
    .line 415
    const/4 v0, 0x0

    .line 416
    :goto_5
    array-length v7, v14

    .line 417
    if-ge v0, v7, :cond_4

    .line 418
    .line 419
    aget-object v7, v13, v0

    .line 420
    .line 421
    invoke-virtual {v5, v0, v7}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    aput-object v7, v14, v0

    .line 426
    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_4
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 431
    .line 432
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_5

    .line 437
    .line 438
    const/4 v0, 0x0

    .line 439
    invoke-virtual {v5, v10, v0, v1, v14}, Lcom/android/dx/Code;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Lcom/android/dx/Code;->returnVoid()V

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_5
    invoke-static {v10, v5, v1, v14, v9}, Lcom/android/dx/stock/ProxyBuilder;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Code;Lcom/android/dx/Local;[Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v9}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 450
    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_6
    move-object/from16 v0, v22

    .line 454
    .line 455
    move-object/from16 v14, v34

    .line 456
    .line 457
    invoke-static {v5, v15, v14, v0}, Lcom/android/dx/stock/ProxyBuilder;->throwAbstractMethodError(Lcom/android/dx/Code;Ljava/lang/reflect/Method;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 458
    .line 459
    .line 460
    :goto_6
    invoke-static {v15}, Lcom/android/dx/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    move-object/from16 v1, p1

    .line 465
    .line 466
    move-object/from16 v5, v33

    .line 467
    .line 468
    invoke-virtual {v1, v5, v0, v13}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const/4 v8, 0x1

    .line 473
    move-object/from16 v7, p0

    .line 474
    .line 475
    invoke-virtual {v7, v0, v8}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    and-int/lit16 v9, v9, 0x400

    .line 484
    .line 485
    if-nez v9, :cond_9

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    move-object/from16 v12, v32

    .line 492
    .line 493
    array-length v12, v12

    .line 494
    new-array v14, v12, [Lcom/android/dx/Local;

    .line 495
    .line 496
    const/4 v15, 0x0

    .line 497
    :goto_7
    if-ge v15, v12, :cond_7

    .line 498
    .line 499
    aget-object v2, v13, v15

    .line 500
    .line 501
    invoke-virtual {v0, v15, v2}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    aput-object v2, v14, v15

    .line 506
    .line 507
    add-int/lit8 v15, v15, 0x1

    .line 508
    .line 509
    const/4 v2, 0x3

    .line 510
    goto :goto_7

    .line 511
    :cond_7
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 512
    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_8

    .line 518
    .line 519
    const/4 v2, 0x0

    .line 520
    invoke-virtual {v0, v10, v2, v9, v14}, Lcom/android/dx/Code;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Lcom/android/dx/Code;->returnVoid()V

    .line 524
    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_8
    invoke-virtual {v0, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-static {v10, v0, v9, v14, v2}, Lcom/android/dx/stock/ProxyBuilder;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Code;Lcom/android/dx/Local;[Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 535
    .line 536
    .line 537
    goto :goto_8

    .line 538
    :cond_9
    sget-object v2, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    .line 539
    .line 540
    invoke-virtual {v0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    move-object/from16 v3, v31

    .line 545
    .line 546
    invoke-virtual {v0, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-static {v0, v15, v2, v3}, Lcom/android/dx/stock/ProxyBuilder;->throwAbstractMethodError(Lcom/android/dx/Code;Ljava/lang/reflect/Method;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 551
    .line 552
    .line 553
    :goto_8
    add-int/lit8 v0, v20, 0x1

    .line 554
    .line 555
    move-object/from16 v2, p2

    .line 556
    .line 557
    move v11, v0

    .line 558
    move-object v9, v6

    .line 559
    move-object v0, v7

    .line 560
    move-object/from16 v5, v17

    .line 561
    .line 562
    move-object/from16 v6, v18

    .line 563
    .line 564
    move-object/from16 v8, v24

    .line 565
    .line 566
    move-object/from16 v4, v27

    .line 567
    .line 568
    move-object/from16 v7, v28

    .line 569
    .line 570
    move-object/from16 v3, v30

    .line 571
    .line 572
    const/4 v10, 0x3

    .line 573
    const/4 v12, 0x0

    .line 574
    const/4 v13, 0x1

    .line 575
    const/4 v14, 0x2

    .line 576
    goto/16 :goto_0

    .line 577
    .line 578
    :cond_a
    return-void
.end method

.method private static generateCodeForReturnStatement(Lcom/android/dx/Code;Ljava/lang/Class;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p4, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/dx/stock/ProxyBuilder;->getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/android/dx/MethodId;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    new-array p2, p2, [Lcom/android/dx/Local;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/dx/Code;->returnVoid()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private static generateConstructorsAndFields(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/android/dx/TypeId;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "TG;>;",
            "Lcom/android/dx/TypeId<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, [Ljava/lang/reflect/Method;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "$__handler"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v2}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "$__methodArray"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Lcom/android/dx/stock/ProxyBuilder;->getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    array-length v0, p3

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-ge v2, v0, :cond_2

    .line 43
    .line 44
    aget-object v4, p3, v2

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/16 v6, 0x10

    .line 51
    .line 52
    if-ne v5, v6, :cond_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/dx/stock/ProxyBuilder;->classArrayToTypeArray([Ljava/lang/Class;)[Lcom/android/dx/TypeId;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p1, v4}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-virtual {p0, v5, v6}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5, p1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    array-length v7, v4

    .line 77
    new-array v8, v7, [Lcom/android/dx/Local;

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    :goto_1
    if-ge v9, v7, :cond_1

    .line 81
    .line 82
    aget-object v10, v4, v9

    .line 83
    .line 84
    invoke-virtual {v5, v9, v10}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    aput-object v10, v8, v9

    .line 89
    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p2, v4}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v5, v4, v3, v6, v8}, Lcom/android/dx/Code;->invokeDirect(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/android/dx/Code;->returnVoid()V

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method private static getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getInterfacesAsTypeIds()[Lcom/android/dx/TypeId;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Lcom/android/dx/TypeId;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Class;

    .line 27
    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v0, v2

    .line 35
    .line 36
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "$__handler"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/reflect/InvocationHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Ljava/lang/AssertionError;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :catch_1
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Not a valid proxy instance"

    .line 33
    .line 34
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method private static getMethodNameForProxyOf(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "."

    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "_"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, "_Proxy"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_6

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    and-int/lit8 v5, v5, 0x10

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    new-instance v5, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;

    .line 21
    .line 22
    invoke-direct {v5, v4}, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    and-int/lit8 v5, v5, 0x8

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    iget-boolean v5, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 62
    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "finalize"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    array-length v5, v5

    .line 93
    if-nez v5, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v5, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;

    .line 97
    .line 98
    invoke-direct {v5, v4}, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    array-length v0, p3

    .line 125
    :goto_2
    if-ge v2, v0, :cond_7

    .line 126
    .line 127
    aget-object v1, p3, v2

    .line 128
    .line 129
    invoke-direct {p0, p1, p2, v1}, Lcom/android/dx/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    return-void
.end method

.method private getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 12
    .line 13
    :goto_0
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/android/dx/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 24
    .line 25
    :goto_1
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    array-length v5, v4

    .line 33
    :goto_2
    if-ge v3, v5, :cond_1

    .line 34
    .line 35
    aget-object v6, v4, v3

    .line 36
    .line 37
    invoke-direct {p0, v0, v1, v6}, Lcom/android/dx/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Class;

    .line 65
    .line 66
    invoke-direct {p0, v0, v1, v4}, Lcom/android/dx/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    new-array v1, v1, [Ljava/lang/reflect/Method;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;

    .line 91
    .line 92
    add-int/lit8 v4, v3, 0x1

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/dx/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;

    .line 95
    .line 96
    aput-object v2, v1, v3

    .line 97
    .line 98
    move v3, v4

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    return-object v1
.end method

.method private static getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/android/dx/MethodId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/dx/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/dx/MethodId;

    .line 8
    .line 9
    return-object p0
.end method

.method private static invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Code;Lcom/android/dx/Local;[Lcom/android/dx/Local;Lcom/android/dx/Local;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p4, p2, p3}, Lcom/android/dx/Code;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "$__handler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private static launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ljava/lang/Error;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    throw p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    check-cast p0, Ljava/lang/Error;

    .line 23
    .line 24
    throw p0
.end method

.method private loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public static setInvocationHandler(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "$__handler"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :catch_1
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Not a valid proxy instance"

    .line 30
    .line 31
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private static setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "$__methodArray"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :catch_1
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method private static superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "super$"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, "$"

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 p0, 0x2e

    .line 32
    .line 33
    const/16 v2, 0x5f

    .line 34
    .line 35
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/16 v0, 0x5b

    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 v0, 0x3b

    .line 46
    .line 47
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method private static throwAbstractMethodError(Lcom/android/dx/Code;Ljava/lang/reflect/Method;Lcom/android/dx/Local;Lcom/android/dx/Local;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/Code;",
            "Ljava/lang/reflect/Method;",
            "Lcom/android/dx/Local<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/dx/Local<",
            "Ljava/lang/AbstractMethodError;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/AbstractMethodError;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Lcom/android/dx/TypeId;

    .line 9
    .line 10
    sget-object v3, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "\'"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "\' cannot be called"

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-array p1, v1, [Lcom/android/dx/Local;

    .line 45
    .line 46
    aput-object p2, p1, v4

    .line 47
    .line 48
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/dx/Code;->newInstance(Lcom/android/dx/Local;Lcom/android/dx/MethodId;[Lcom/android/dx/Local;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/android/dx/Code;->throwValue(Lcom/android/dx/Local;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v3, "handler == null"

    .line 11
    .line 12
    invoke-static {v0, v3}, Lcom/android/dx/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    iget-object v3, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 19
    .line 20
    array-length v3, v3

    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_1
    const-string v0, "constructorArgValues.length != constructorArgTypes.length"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/dx/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/dx/stock/ProxyBuilder;->buildProxyClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    iget-object v1, p0, Lcom/android/dx/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/android/dx/stock/ProxyBuilder;->setInvocationHandler(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/android/dx/stock/ProxyBuilder;->launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    throw v0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/AssertionError;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/AssertionError;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :catch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "No constructor for "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " with parameter types "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 99
    .line 100
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method

.method public buildProxyClass()Ljava/lang/Class;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 13
    .line 14
    :goto_0
    new-instance v7, Lcom/android/dx/stock/ProxyBuilder$ProxiedClass;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 19
    .line 20
    iget-boolean v5, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, v7

    .line 24
    move-object v4, v0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/dx/stock/ProxyBuilder$ProxiedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/ClassLoader;ZLcom/android/dx/stock/ProxyBuilder$1;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/android/dx/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Class;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    new-instance v2, Lcom/android/dx/DexMaker;

    .line 40
    .line 41
    invoke-direct {v2}, Lcom/android/dx/DexMaker;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v3, v4}, Lcom/android/dx/stock/ProxyBuilder;->getMethodNameForProxyOf(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v5, "L"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, ";"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    iget-object v4, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    iget-object v4, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-static {v2, v9, v12, v4}, Lcom/android/dx/stock/ProxyBuilder;->generateConstructorsAndFields(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/android/dx/TypeId;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/android/dx/stock/ProxyBuilder;->methods:[Ljava/lang/reflect/Method;

    .line 90
    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/dx/stock/ProxyBuilder;->getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :cond_2
    new-instance v5, Lcom/android/dx/stock/ProxyBuilder$1;

    .line 98
    .line 99
    invoke-direct {v5, p0}, Lcom/android/dx/stock/ProxyBuilder$1;-><init>(Lcom/android/dx/stock/ProxyBuilder;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v9, v4, v12}, Lcom/android/dx/stock/ProxyBuilder;->generateCodeForAllMethods(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;[Ljava/lang/reflect/Method;Lcom/android/dx/TypeId;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v6, ".generated"

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const/4 v11, 0x1

    .line 126
    invoke-direct {p0}, Lcom/android/dx/stock/ProxyBuilder;->getInterfacesAsTypeIds()[Lcom/android/dx/TypeId;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    move-object v8, v2

    .line 131
    invoke-virtual/range {v8 .. v13}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/TypeId;Ljava/lang/String;ILcom/android/dx/TypeId;[Lcom/android/dx/TypeId;)V

    .line 132
    .line 133
    .line 134
    iget-boolean v5, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 135
    .line 136
    if-eqz v5, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Lcom/android/dx/DexMaker;->setSharedClassLoader(Ljava/lang/ClassLoader;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-boolean v0, p0, Lcom/android/dx/stock/ProxyBuilder;->markTrusted:Z

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/dx/DexMaker;->markAsTrusted()V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-boolean v0, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    iget-object v5, p0, Lcom/android/dx/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    .line 154
    .line 155
    invoke-virtual {v2, v0, v5}, Lcom/android/dx/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 161
    .line 162
    iget-object v5, p0, Lcom/android/dx/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    .line 163
    .line 164
    invoke-virtual {v2, v0, v5}, Lcom/android/dx/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :goto_1
    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/android/dx/stock/ProxyBuilder;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    invoke-static {v0, v4}, Lcom/android/dx/stock/ProxyBuilder;->setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/AssertionError;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    throw v1

    .line 186
    :catch_1
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "cannot proxy inaccessible class "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v3, p0, Lcom/android/dx/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    throw v1
.end method

.method public varargs constructorArgTypes([Ljava/lang/Class;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs constructorArgValues([Ljava/lang/Object;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public dexCache(Ljava/io/File;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "v"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public handler(Ljava/lang/reflect/InvocationHandler;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs implementing([Ljava/lang/Class;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/dx/stock/ProxyBuilder;->interfaces:Ljava/util/List;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Not an interface: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    return-object p0
.end method

.method public markTrusted()Lcom/android/dx/stock/ProxyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/dx/stock/ProxyBuilder;->markTrusted:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public onlyMethods([Ljava/lang/reflect/Method;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->methods:[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object p0
.end method

.method public parentClassLoader(Ljava/lang/ClassLoader;)Lcom/android/dx/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/dx/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public withSharedClassLoader()Lcom/android/dx/stock/ProxyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/dx/stock/ProxyBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/dx/stock/ProxyBuilder;->sharedClassLoader:Z

    .line 3
    .line 4
    return-object p0
.end method
