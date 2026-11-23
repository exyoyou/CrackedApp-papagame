.class public final Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HiddenApiBypass"

.field private static final b:Lsun/misc/Unsafe;

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$Executable;

    .line 2
    .line 3
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$Class;

    .line 4
    .line 5
    const-class v2, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    .line 13
    .line 14
    :try_start_0
    const-class v3, Lsun/misc/Unsafe;

    .line 15
    .line 16
    const-string v4, "getUnsafe"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    new-array v6, v5, [Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-array v4, v5, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lsun/misc/Unsafe;

    .line 33
    .line 34
    sput-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 35
    .line 36
    const-string v4, "artMethod"

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    .line 47
    .line 48
    const-string v4, "declaringClass"

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->d:J

    .line 59
    .line 60
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;

    .line 61
    .line 62
    const-string v4, "artFieldOrMethod"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    .line 73
    .line 74
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandleImpl;

    .line 75
    .line 76
    const-string v4, "info"

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    sput-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 87
    .line 88
    const-string v0, "methods"

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    sput-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    .line 99
    .line 100
    const-string v0, "iFields"

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v10

    .line 110
    sput-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->h:J

    .line 111
    .line 112
    const-string v0, "sFields"

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->i:J

    .line 123
    .line 124
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$HandleInfo;

    .line 125
    .line 126
    const-string v1, "member"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    .line 137
    .line 138
    const-string v0, "a"

    .line 139
    .line 140
    new-array v1, v5, [Ljava/lang/Class;

    .line 141
    .line 142
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "b"

    .line 147
    .line 148
    new-array v4, v5, [Ljava/lang/Class;

    .line 149
    .line 150
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const/4 v4, 0x1

    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v5, v0}, Lcn/fly/tools/a/i;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5, v1}, Lcn/fly/tools/a/i;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v12

    .line 181
    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    invoke-virtual {v3, v2, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v8

    .line 189
    sub-long/2addr v0, v12

    .line 190
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    .line 191
    .line 192
    sub-long/2addr v12, v8

    .line 193
    sub-long/2addr v12, v0

    .line 194
    sput-wide v12, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    .line 195
    .line 196
    const-string v0, "i"

    .line 197
    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "j"

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-static {v4, v0}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-static {v4, v1}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    invoke-virtual {v3, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    sub-long/2addr v0, v4

    .line 243
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    .line 244
    .line 245
    sub-long/2addr v4, v2

    .line 246
    sput-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 251
    .line 252
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    .line 9
    if-ge v0, v1, :cond_a

    .line 10
    .line 11
    aget-object v1, p0, v0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_8

    .line 18
    .line 19
    aget-object v1, p0, v0

    .line 20
    .line 21
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    aget-object v3, p1, v0

    .line 26
    .line 27
    instance-of v3, v3, Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    aget-object v3, p1, v0

    .line 37
    .line 38
    instance-of v3, v3, Ljava/lang/Byte;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne v1, v3, :cond_3

    .line 46
    .line 47
    aget-object v3, p1, v0

    .line 48
    .line 49
    instance-of v3, v3, Ljava/lang/Character;

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    if-ne v1, v3, :cond_4

    .line 57
    .line 58
    aget-object v3, p1, v0

    .line 59
    .line 60
    instance-of v3, v3, Ljava/lang/Boolean;

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    return v2

    .line 65
    :cond_4
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne v1, v3, :cond_5

    .line 68
    .line 69
    aget-object v3, p1, v0

    .line 70
    .line 71
    instance-of v3, v3, Ljava/lang/Double;

    .line 72
    .line 73
    if-nez v3, :cond_5

    .line 74
    .line 75
    return v2

    .line 76
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne v1, v3, :cond_6

    .line 79
    .line 80
    aget-object v3, p1, v0

    .line 81
    .line 82
    instance-of v3, v3, Ljava/lang/Float;

    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    return v2

    .line 87
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    if-ne v1, v3, :cond_7

    .line 90
    .line 91
    aget-object v3, p1, v0

    .line 92
    .line 93
    instance-of v3, v3, Ljava/lang/Long;

    .line 94
    .line 95
    if-nez v3, :cond_7

    .line 96
    .line 97
    return v2

    .line 98
    :cond_7
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    if-ne v1, v3, :cond_9

    .line 101
    .line 102
    aget-object v1, p1, v0

    .line 103
    .line 104
    instance-of v1, v1, Ljava/lang/Short;

    .line 105
    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    return v2

    .line 109
    :cond_8
    aget-object v1, p1, v0

    .line 110
    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    aget-object v3, p0, v0

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_9

    .line 120
    .line 121
    return v2

    .line 122
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_a
    const/4 p0, 0x1

    .line 126
    return p0
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-array p0, p0, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static clearHiddenApiExemptions()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/a;->a(Ljava/lang/Object;)Ljava/lang/reflect/Executable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/c;->a(Ljava/lang/reflect/Executable;)[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    array-length v3, p1

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_1
    array-length v3, p1

    .line 39
    if-ge v2, v3, :cond_3

    .line 40
    .line 41
    aget-object v3, p1, v2

    .line 42
    .line 43
    aget-object v4, v1, v2

    .line 44
    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 55
    .line 56
    const-string p1, "Cannot find matching constructor"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/a;->a(Ljava/lang/Object;)Ljava/lang/reflect/Executable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/b;->a(Ljava/lang/reflect/Executable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/c;->a(Ljava/lang/reflect/Executable;)[Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v2, v1

    .line 44
    array-length v3, p2

    .line 45
    if-eq v2, v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_1
    array-length v3, p2

    .line 50
    if-ge v2, v3, :cond_4

    .line 51
    .line 52
    aget-object v3, p2, v2

    .line 53
    .line 54
    aget-object v4, v1, v2

    .line 55
    .line 56
    if-eq v3, v4, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    check-cast v0, Ljava/lang/reflect/Method;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 66
    .line 67
    const-string p1, "Cannot find matching method"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Executable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    .line 20
    .line 21
    const-string v2, "a"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    new-array v4, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, v1}, Lcn/fly/tools/a/i;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 43
    .line 44
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    .line 45
    .line 46
    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v10

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    cmp-long p0, v10, v4

    .line 53
    .line 54
    if-nez p0, :cond_1

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {v2, v10, v11}, Lsun/misc/Unsafe;->getInt(J)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    :goto_0
    if-ge v3, p0, :cond_2

    .line 62
    .line 63
    int-to-long v4, v3

    .line 64
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    .line 65
    .line 66
    mul-long v4, v4, v6

    .line 67
    .line 68
    add-long/2addr v4, v10

    .line 69
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    .line 70
    .line 71
    add-long v8, v4, v6

    .line 72
    .line 73
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 74
    .line 75
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    .line 76
    .line 77
    move-object v4, v2

    .line 78
    move-object v5, v1

    .line 79
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 80
    .line 81
    .line 82
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :try_start_1
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/hiddenapibypass/d;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :catchall_0
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 96
    .line 97
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 98
    .line 99
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4}, Lcom/xinzhu/overmind/hiddenapibypass/e;->a(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandleInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    .line 108
    .line 109
    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/xinzhu/overmind/hiddenapibypass/a;->a(Ljava/lang/Object;)Ljava/lang/reflect/Executable;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getInstanceFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    .line 20
    .line 21
    const-string v2, "i"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, v1}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 40
    .line 41
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->h:J

    .line 42
    .line 43
    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    cmp-long p0, v9, v3

    .line 50
    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_0
    if-ge v2, p0, :cond_2

    .line 60
    .line 61
    int-to-long v3, v2

    .line 62
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    .line 63
    .line 64
    mul-long v3, v3, v5

    .line 65
    .line 66
    add-long/2addr v3, v9

    .line 67
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J

    .line 68
    .line 69
    add-long v7, v3, v5

    .line 70
    .line 71
    sget-object v11, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 72
    .line 73
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    .line 74
    .line 75
    move-object v3, v11

    .line 76
    move-object v4, v1

    .line 77
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 78
    .line 79
    .line 80
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3, v1}, Lcom/xinzhu/overmind/hiddenapibypass/d;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_0
    sget-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 94
    .line 95
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 96
    .line 97
    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/xinzhu/overmind/hiddenapibypass/e;->a(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandleInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    .line 106
    .line 107
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/reflect/Field;

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getStaticFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    .line 20
    .line 21
    const-string v2, "s"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, v1}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 40
    .line 41
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->i:J

    .line 42
    .line 43
    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    cmp-long p0, v9, v3

    .line 50
    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_0
    if-ge v2, p0, :cond_2

    .line 60
    .line 61
    int-to-long v3, v2

    .line 62
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    .line 63
    .line 64
    mul-long v3, v3, v5

    .line 65
    .line 66
    add-long/2addr v3, v9

    .line 67
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J

    .line 68
    .line 69
    add-long v7, v3, v5

    .line 70
    .line 71
    sget-object v11, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 72
    .line 73
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    .line 74
    .line 75
    move-object v3, v11

    .line 76
    move-object v4, v1

    .line 77
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 78
    .line 79
    .line 80
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3, v1}, Lcom/xinzhu/overmind/hiddenapibypass/d;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_0
    sget-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 94
    .line 95
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    .line 96
    .line 97
    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/xinzhu/overmind/hiddenapibypass/e;->a(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandleInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    .line 106
    .line 107
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/reflect/Field;

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "this object is not an instance of the given class"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 23
    new-array v3, v2, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v4, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v4, v3, v5

    .line 29
    .line 30
    const-class v4, Lcom/xinzhu/overmind/hiddenapibypass/Helper$InvokeStub;

    .line 31
    .line 32
    const-string v6, "invoke"

    .line 33
    .line 34
    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 42
    .line 43
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    .line 44
    .line 45
    move-object v4, p0

    .line 46
    invoke-virtual {v2, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v13

    .line 50
    const-wide/16 v6, 0x0

    .line 51
    .line 52
    const-string v4, "Cannot find matching method"

    .line 53
    .line 54
    cmp-long v8, v13, v6

    .line 55
    .line 56
    if-eqz v8, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_1
    if-ge v5, v2, :cond_3

    .line 63
    .line 64
    int-to-long v6, v5

    .line 65
    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    .line 66
    .line 67
    mul-long v6, v6, v8

    .line 68
    .line 69
    add-long/2addr v6, v13

    .line 70
    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    .line 71
    .line 72
    add-long v11, v6, v8

    .line 73
    .line 74
    sget-object v7, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 75
    .line 76
    sget-wide v9, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    .line 77
    .line 78
    move-object v8, v3

    .line 79
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    move-object/from16 v7, p2

    .line 87
    .line 88
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6, v1}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_2

    .line 103
    .line 104
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 113
    .line 114
    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 119
    .line 120
    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-class v5, [Ljava/lang/Object;

    .line 10
    .line 11
    aput-object v5, v3, v4

    .line 12
    .line 13
    const-class v6, Lcom/xinzhu/overmind/hiddenapibypass/Helper$InvokeStub;

    .line 14
    .line 15
    const-string v7, "invoke"

    .line 16
    .line 17
    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v7, v2, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v5, v7, v4

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 33
    .line 34
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    .line 35
    .line 36
    invoke-virtual {v2, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    const-wide/16 v8, 0x0

    .line 41
    .line 42
    const-string v14, "Cannot find matching constructor"

    .line 43
    .line 44
    cmp-long v10, v6, v8

    .line 45
    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2, v6, v7}, Lsun/misc/Unsafe;->getInt(J)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_0
    if-ge v4, v2, :cond_1

    .line 53
    .line 54
    int-to-long v8, v4

    .line 55
    sget-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    .line 56
    .line 57
    mul-long v8, v8, v10

    .line 58
    .line 59
    add-long/2addr v8, v6

    .line 60
    sget-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    .line 61
    .line 62
    add-long v15, v8, v10

    .line 63
    .line 64
    sget-object v12, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    .line 65
    .line 66
    sget-wide v17, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    .line 67
    .line 68
    move-object v8, v12

    .line 69
    move-object v9, v3

    .line 70
    move-wide/from16 v10, v17

    .line 71
    .line 72
    move-object/from16 v19, v12

    .line 73
    .line 74
    move-wide v12, v15

    .line 75
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 76
    .line 77
    .line 78
    const-string v8, "<init>"

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_0

    .line 89
    .line 90
    move-object/from16 v8, v19

    .line 91
    .line 92
    move-object v9, v5

    .line 93
    move-wide/from16 v10, v17

    .line 94
    .line 95
    move-wide v12, v15

    .line 96
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 97
    .line 98
    .line 99
    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->d:J

    .line 100
    .line 101
    move-object/from16 v10, v19

    .line 102
    .line 103
    invoke-virtual {v10, v5, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v8, v1}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_0

    .line 115
    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 125
    .line 126
    invoke-direct {v0, v14}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 131
    .line 132
    invoke-direct {v0, v14}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 6
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Ldalvik/system/VMRuntime;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "getRuntime"

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v0, v4, v2, v3}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "setHiddenApiExemptions"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    new-array v5, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p0, v5, v1

    .line 19
    .line 20
    invoke-static {v0, v2, v3, v5}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return v4

    .line 24
    :catchall_0
    return v1
.end method
