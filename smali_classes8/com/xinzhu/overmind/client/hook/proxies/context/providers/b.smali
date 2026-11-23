.class public Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/proxies/context/providers/d;


# static fields
.field public static final c:Ljava/lang/String; = "b"

.field public static final d:Ljava/lang/String; = "android:query-arg-sql-selection"

.field public static final e:Ljava/lang/String; = "android:query-arg-sql-selection-args"

.field public static final f:Ljava/lang/String; = "android:query-arg-sql-sort-order"

.field private static final g:Ljava/lang/String; = "notificationpackage"

.field private static final h:Ljava/lang/String; = "notificationclass"

.field public static final i:Ljava/lang/String; = "is_visible_in_downloads_ui"

.field public static final j:Ljava/lang/String; = "visibility"

.field public static final k:Ljava/lang/String; = "description"

.field public static final l:Ljava/lang/String; = "hint"


# instance fields
.field private b:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->injectHook()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/IInterface;

    .line 11
    .line 12
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "asBinder"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    if-eqz p3, :cond_2

    .line 21
    .line 22
    array-length p1, p3

    .line 23
    if-lez p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    aget-object v0, p3, p1

    .line 27
    .line 28
    instance-of v1, v0, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    aput-object v0, p3, p1

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->a()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p3, p1}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ltz p1, :cond_2

    .line 55
    .line 56
    aget-object v0, p3, p1

    .line 57
    .line 58
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appos/a;->a(Ljava/lang/Object;)Landroid/content/AttributionSource;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    aput-object v0, p3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    const-string v0, "insert"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    const-string v0, "query"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 96
    .line 97
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    array-length p1, p3

    .line 103
    add-int/lit8 p1, p1, -0x4

    .line 104
    .line 105
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    add-int/lit8 p1, p1, 0x2

    .line 112
    .line 113
    aget-object p1, p3, p1

    .line 114
    .line 115
    check-cast p1, Landroid/os/Bundle;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    const-string v0, "android:query-arg-sql-selection"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "android:query-arg-sql-selection-args"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "android:query-arg-sql-sort-order"

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const/4 v0, 0x0

    .line 139
    move-object p1, v0

    .line 140
    move-object v1, p1

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    add-int/lit8 v0, p1, 0x2

    .line 143
    .line 144
    aget-object v0, p3, v0

    .line 145
    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    .line 148
    add-int/lit8 v1, p1, 0x3

    .line 149
    .line 150
    aget-object v1, p3, v1

    .line 151
    .line 152
    check-cast v1, [Ljava/lang/String;

    .line 153
    .line 154
    add-int/lit8 p1, p1, 0x4

    .line 155
    .line 156
    aget-object p1, p3, p1

    .line 157
    .line 158
    check-cast p1, Ljava/lang/String;

    .line 159
    .line 160
    :goto_1
    sget-object v2, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->c:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v4, "content provider <query>, selection "

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " selectionArgs "

    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, " sortOrder "

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 203
    .line 204
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :cond_6
    const-class p1, Landroid/net/Uri;

    .line 210
    .line 211
    invoke-static {p3, p1}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    const/4 v0, 0x1

    .line 216
    add-int/2addr p1, v0

    .line 217
    aget-object v1, p3, p1

    .line 218
    .line 219
    check-cast v1, Landroid/content/ContentValues;

    .line 220
    .line 221
    const-string v2, "notificationpackage"

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    sget-object v4, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->c:Ljava/lang/String;

    .line 228
    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v6, "content provider <insert>, notificationPkg "

    .line 235
    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    if-nez v3, :cond_7

    .line 250
    .line 251
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 252
    .line 253
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    return-object p1

    .line 258
    :cond_7
    const-string v4, "hint"

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    if-eqz v5, :cond_8

    .line 265
    .line 266
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_8
    const-string v3, "visibility"

    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    aput-object v1, p3, p1

    .line 294
    .line 295
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b:Landroid/os/IInterface;

    .line 296
    .line 297
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    return-object p1
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method
