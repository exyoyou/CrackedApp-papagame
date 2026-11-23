.class final Lcom/kwad/sdk/api/loader/ApiReflect$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/ApiReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final aHI:Ljava/lang/reflect/Method;

.field private static final aHJ:Ljava/lang/reflect/Method;

.field private static final aHK:Ljava/lang/reflect/Method;

.field private static final aHL:Ljava/lang/reflect/Method;

.field private static final aHM:Ljava/lang/reflect/Method;

.field private static final aHN:Ljava/lang/reflect/Method;

.field private static final aHO:Ljava/lang/reflect/Method;

.field private static final aHP:Ljava/lang/reflect/Method;

.field private static final aHQ:Ljava/lang/reflect/Method;

.field private static final aHR:Ljava/lang/reflect/Method;

.field private static final aHS:Ljava/lang/reflect/Method;

.field private static final aHT:Ljava/lang/reflect/Method;

.field private static final aHU:Ljava/lang/reflect/Method;

.field private static final aHV:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, [Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Class;

    .line 6
    .line 7
    :try_start_0
    const-string v3, "forName"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    new-array v5, v4, [Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-object v1, v5, v6

    .line 14
    .line 15
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHI:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    const-string v3, "forName"

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    new-array v5, v5, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v1, v5, v6

    .line 27
    .line 28
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v7, v5, v4

    .line 31
    .line 32
    const-class v7, Ljava/lang/ClassLoader;

    .line 33
    .line 34
    const/4 v8, 0x2

    .line 35
    aput-object v7, v5, v8

    .line 36
    .line 37
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHJ:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    const-string v3, "getDeclaredField"

    .line 44
    .line 45
    new-array v5, v4, [Ljava/lang/Class;

    .line 46
    .line 47
    aput-object v1, v5, v6

    .line 48
    .line 49
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHK:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    const-string v3, "getDeclaredFields"

    .line 56
    .line 57
    new-array v5, v6, [Ljava/lang/Class;

    .line 58
    .line 59
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHL:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    const-string v3, "getDeclaredMethod"

    .line 66
    .line 67
    new-array v5, v8, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v1, v5, v6

    .line 70
    .line 71
    aput-object v0, v5, v4

    .line 72
    .line 73
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHM:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    const-string v3, "getDeclaredMethods"

    .line 80
    .line 81
    new-array v5, v6, [Ljava/lang/Class;

    .line 82
    .line 83
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHN:Ljava/lang/reflect/Method;

    .line 88
    .line 89
    const-string v3, "getDeclaredConstructor"

    .line 90
    .line 91
    new-array v5, v4, [Ljava/lang/Class;

    .line 92
    .line 93
    aput-object v0, v5, v6

    .line 94
    .line 95
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHO:Ljava/lang/reflect/Method;

    .line 100
    .line 101
    const-string v3, "getDeclaredConstructors"

    .line 102
    .line 103
    new-array v5, v6, [Ljava/lang/Class;

    .line 104
    .line 105
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHP:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    const-string v3, "getField"

    .line 112
    .line 113
    new-array v5, v4, [Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v1, v5, v6

    .line 116
    .line 117
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHQ:Ljava/lang/reflect/Method;

    .line 122
    .line 123
    const-string v3, "getFields"

    .line 124
    .line 125
    new-array v5, v6, [Ljava/lang/Class;

    .line 126
    .line 127
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    sput-object v3, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHR:Ljava/lang/reflect/Method;

    .line 132
    .line 133
    const-string v3, "getMethod"

    .line 134
    .line 135
    new-array v5, v8, [Ljava/lang/Class;

    .line 136
    .line 137
    aput-object v1, v5, v6

    .line 138
    .line 139
    aput-object v0, v5, v4

    .line 140
    .line 141
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sput-object v1, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHS:Ljava/lang/reflect/Method;

    .line 146
    .line 147
    const-string v1, "getMethods"

    .line 148
    .line 149
    new-array v3, v6, [Ljava/lang/Class;

    .line 150
    .line 151
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sput-object v1, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHT:Ljava/lang/reflect/Method;

    .line 156
    .line 157
    const-string v1, "getConstructor"

    .line 158
    .line 159
    new-array v3, v4, [Ljava/lang/Class;

    .line 160
    .line 161
    aput-object v0, v3, v6

    .line 162
    .line 163
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHU:Ljava/lang/reflect/Method;

    .line 168
    .line 169
    const-string v0, "getConstructors"

    .line 170
    .line 171
    new-array v1, v6, [Ljava/lang/Class;

    .line 172
    .line 173
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHV:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;

    .line 182
    .line 183
    invoke-direct {v1, v0}, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v1
.end method

.method static varargs a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .line 5
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHO:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw p1
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHK:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/NoSuchFieldException;

    invoke-direct {p1}, Ljava/lang/NoSuchFieldException;-><init>()V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw p1
.end method

.method static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHQ:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/NoSuchFieldException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/NoSuchFieldException;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHM:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw p1
.end method

.method static c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2

    .line 5
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHN:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHS:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw p1
.end method

.method static d(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2

    .line 5
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static e(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHP:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/ApiReflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/api/loader/ApiReflect$a;->aHI:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p0, v1, v2

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    throw v0
.end method
