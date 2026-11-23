.class Lcn/fly/tools/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static varargs declared-synchronized a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {}, Lcn/fly/tools/a/c$a;->b()Z

    move-result v1

    .line 112
    sget-boolean v2, Lcn/fly/tools/a/c$a;->m:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 113
    const-class v1, Lcn/fly/tools/a/c$b$e;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 115
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 117
    sget-wide v1, Lcn/fly/tools/a/c$a;->e:J

    invoke-static {p0, v1, v2}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long p0, v1, v6

    if-eqz p0, :cond_3

    .line 118
    invoke-static {v1, v2}, Lcn/fly/tools/a/c$c;->a(J)I

    move-result p0

    :goto_2
    if-ge v3, p0, :cond_3

    int-to-long v6, v3

    .line 119
    sget-wide v8, Lcn/fly/tools/a/c$a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    mul-long v6, v6, v8

    add-long/2addr v6, v1

    :try_start_1
    sget-wide v8, Lcn/fly/tools/a/c$a;->j:J

    add-long/2addr v6, v8

    .line 120
    sget-wide v8, Lcn/fly/tools/a/c$a;->a:J

    invoke-static {v5, v8, v9, v6, v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 121
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 123
    invoke-static {v4, p3}, Lcn/fly/tools/a/c$a;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 124
    :try_start_2
    invoke-virtual {v5, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit v0

    return-object v4

    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    :cond_3
    :try_start_3
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V

    .line 128
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n2"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_4
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x22"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_5
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "x2 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcn/fly/tools/a/c$a;->m:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-static {}, Lcn/fly/tools/a/c$a;->b()Z

    move-result v1

    .line 133
    sget-boolean v2, Lcn/fly/tools/a/c$a;->m:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 134
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v1

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_7

    .line 135
    const-class v1, Lcn/fly/tools/a/c$b$h;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 136
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    .line 137
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    if-nez p2, :cond_0

    .line 138
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 140
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-static {v1, v7}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_6

    if-nez p2, :cond_3

    .line 141
    sget-wide v7, Lcn/fly/tools/a/c$a;->g:J

    goto :goto_3

    :cond_3
    sget-wide v7, Lcn/fly/tools/a/c$a;->f:J

    :goto_3
    invoke-static {p0, v7, v8}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-eqz p0, :cond_5

    .line 142
    invoke-static {v7, v8}, Lcn/fly/tools/a/c$c;->a(J)I

    move-result p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_5

    int-to-long v9, v2

    .line 143
    sget-wide v11, Lcn/fly/tools/a/c$a;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v9, v10}, Ljava/lang/Long;->signum(J)I

    mul-long v9, v9, v11

    add-long/2addr v9, v7

    :try_start_1
    sget-wide v11, Lcn/fly/tools/a/c$a;->l:J

    add-long/2addr v9, v11

    .line 144
    sget-wide v11, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v1, v11, v12, v9, v10}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 145
    sget-wide v9, Lcn/fly/tools/a/c$a;->d:J

    invoke-static {v1, v9, v10, v5}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    :try_start_2
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "012ZciFe\'cc4ecf%ekchciWebh"

    invoke-static {v10}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Class;

    invoke-static {}, Lcn/fly/tools/a/k;->a()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 148
    invoke-virtual {v9, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v3

    .line 149
    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :catchall_0
    :try_start_3
    sget-wide v9, Lcn/fly/tools/a/c$a;->d:J

    invoke-static {v1, v9, v10}, Lcn/fly/tools/a/c$c;->b(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 151
    sget-wide v9, Lcn/fly/tools/a/c$a;->h:J

    invoke-static {v4, v9, v10}, Lcn/fly/tools/a/c$c;->b(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 152
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    :try_start_4
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 155
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    monitor-exit v0

    return-object v4

    :catchall_1
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 157
    :cond_5
    :try_start_5
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V

    .line 158
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n3"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_6
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x34"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_7
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x33"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_8
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "x3 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcn/fly/tools/a/c$a;->m:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {}, Lcn/fly/tools/a/c$a;->b()Z

    move-result v1

    .line 88
    sget-boolean v2, Lcn/fly/tools/a/c$a;->m:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 89
    const-class v1, Lcn/fly/tools/a/c$b$e;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 91
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 92
    const-class v1, Lcn/fly/tools/a/c$b$e;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 94
    sget-wide v6, Lcn/fly/tools/a/c$a;->e:J

    invoke-static {p0, v6, v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 95
    invoke-static {v6, v7}, Lcn/fly/tools/a/c$c;->a(J)I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    int-to-long v8, v3

    .line 96
    sget-wide v10, Lcn/fly/tools/a/c$a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v8, v9}, Ljava/lang/Long;->signum(J)I

    mul-long v8, v8, v10

    add-long/2addr v8, v6

    :try_start_1
    sget-wide v10, Lcn/fly/tools/a/c$a;->j:J

    add-long/2addr v8, v10

    .line 97
    sget-wide v10, Lcn/fly/tools/a/c$a;->a:J

    invoke-static {v5, v10, v11, v8, v9}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    const-string v4, "006.hdchWd+ch*hQhf"

    .line 98
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    sget-wide v10, Lcn/fly/tools/a/c$a;->a:J

    invoke-static {v1, v10, v11, v8, v9}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 100
    sget-wide v8, Lcn/fly/tools/a/c$a;->b:J

    invoke-static {v1, v8, v9, p0}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 102
    invoke-static {v4, p1}, Lcn/fly/tools/a/c$a;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 103
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 104
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit v0

    return-object v4

    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_3
    :try_start_3
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V

    .line 107
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n1"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x22"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_5
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x1 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/fly/tools/a/c$a;->m:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(I)V
    .locals 3

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    move-result-object v1

    const-string v2, "usf"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/fly/commons/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/z;

    move-result-object p0

    invoke-virtual {p0}, Lcn/fly/commons/z;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/fly/tools/a/c$a;

    monitor-enter v0

    :try_start_0
    const-string v1, "3xu ck"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    invoke-static {v1, v3}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_0

    .line 5
    monitor-exit v0

    return v2

    .line 6
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/fly/tools/a/c$c;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 7
    invoke-static {}, Lcn/fly/tools/a/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcn/fly/tools/a/c$a;->d()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    goto/16 :goto_14

    :cond_1
    :try_start_2
    const-string v1, ""

    .line 8
    const-class v4, Lcn/fly/tools/a/c$b$c;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 9
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 10
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    .line 11
    invoke-static {v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Lcn/fly/tools/a/c$a;->a:J

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    sget-wide v5, Lcn/fly/tools/a/c$a;->a:J

    invoke-static {v1, v5, v6}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    .line 13
    monitor-exit v0

    return v2

    .line 14
    :cond_4
    :try_start_3
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 15
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcn/fly/tools/a/c$b$b;

    if-ne v8, v9, :cond_5

    .line 16
    invoke-static {v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcn/fly/tools/a/c$a;->b:J

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_6
    :goto_3
    sget-wide v4, Lcn/fly/tools/a/c$a;->b:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    .line 18
    monitor-exit v0

    return v2

    .line 19
    :cond_7
    :try_start_4
    const-class v4, Lcn/fly/tools/a/c$b$f;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 20
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 21
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 22
    invoke-static {v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcn/fly/tools/a/c$a;->c:J

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 23
    :cond_9
    :goto_5
    sget-wide v4, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_a

    .line 24
    monitor-exit v0

    return v2

    .line 25
    :cond_a
    :try_start_5
    const-class v4, Lcn/fly/tools/a/c$b$g;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 26
    array-length v5, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 27
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcn/fly/tools/a/c$b$b;

    if-ne v8, v9, :cond_b

    .line 28
    invoke-static {v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcn/fly/tools/a/c$a;->d:J

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 29
    :cond_c
    :goto_7
    sget-wide v4, Lcn/fly/tools/a/c$a;->d:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_d

    .line 30
    monitor-exit v0

    return v2

    .line 31
    :cond_d
    :try_start_6
    const-class v4, Lcn/fly/tools/a/c$b$b;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 32
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_8
    const/4 v8, 0x2

    if-ge v6, v5, :cond_11

    aget-object v9, v4, v6

    .line 33
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_10

    if-ne v7, v3, :cond_e

    .line 34
    invoke-static {v9}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcn/fly/tools/a/c$a;->f:J

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    if-ne v7, v8, :cond_f

    .line 35
    invoke-static {v9}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcn/fly/tools/a/c$a;->e:J

    goto :goto_9

    :cond_f
    const/4 v10, 0x3

    if-ne v7, v10, :cond_10

    .line 36
    invoke-static {v9}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcn/fly/tools/a/c$a;->g:J

    goto :goto_b

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 37
    :cond_11
    :goto_b
    sget-wide v4, Lcn/fly/tools/a/c$a;->f:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_12

    .line 38
    monitor-exit v0

    return v2

    .line 39
    :cond_12
    :try_start_7
    sget-wide v4, Lcn/fly/tools/a/c$a;->e:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_13

    .line 40
    monitor-exit v0

    return v2

    .line 41
    :cond_13
    :try_start_8
    sget-wide v4, Lcn/fly/tools/a/c$a;->g:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_14

    .line 42
    monitor-exit v0

    return v2

    .line 43
    :cond_14
    :try_start_9
    const-class v4, Lcn/fly/tools/a/c$b$d;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 44
    array-length v5, v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_16

    aget-object v7, v4, v6

    .line 45
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/reflect/Member;

    if-ne v9, v10, :cond_15

    .line 46
    invoke-static {v7}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcn/fly/tools/a/c$a;->h:J

    goto :goto_d

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 47
    :cond_16
    :goto_d
    sget-wide v4, Lcn/fly/tools/a/c$a;->h:J

    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_17

    .line 48
    monitor-exit v0

    return v2

    .line 49
    :cond_17
    :try_start_a
    const-class v4, Lcn/fly/tools/a/c$b$i;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 50
    array-length v5, v4

    const-wide/16 v6, 0x0

    move-wide v11, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_e
    if-ge v9, v5, :cond_1a

    aget-object v13, v4, v9

    .line 51
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_19

    if-ne v10, v3, :cond_18

    .line 52
    invoke-virtual {v13, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v11

    invoke-static {v11, v13}, Lcn/fly/tools/a/i;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v11

    .line 54
    sget-wide v12, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v11, v12, v13}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_18
    if-ne v10, v8, :cond_19

    .line 55
    invoke-virtual {v13, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-static {v4, v13}, Lcn/fly/tools/a/i;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 57
    sget-wide v5, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v4, v5, v6}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    goto :goto_10

    :cond_19
    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1a
    :goto_10
    sub-long/2addr v6, v11

    .line 58
    sput-wide v6, Lcn/fly/tools/a/c$a;->i:J

    .line 59
    invoke-static {v1, v6, v7}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_1b

    .line 60
    monitor-exit v0

    return v2

    .line 61
    :cond_1b
    :try_start_b
    const-class v4, Lcn/fly/tools/a/c$b$i;

    sget-wide v5, Lcn/fly/tools/a/c$a;->e:J

    invoke-static {v4, v5, v6}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v4

    sub-long/2addr v11, v4

    .line 62
    sget-wide v4, Lcn/fly/tools/a/c$a;->i:J

    sub-long/2addr v11, v4

    sput-wide v11, Lcn/fly/tools/a/c$a;->j:J

    .line 63
    invoke-static {v1, v11, v12}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_1c

    .line 64
    monitor-exit v0

    return v2

    .line 65
    :cond_1c
    :try_start_c
    const-class v4, Lcn/fly/tools/a/c$b$h;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 66
    array-length v5, v4

    const/4 v6, 0x0

    move-object v10, v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_11
    if-ge v7, v5, :cond_1f

    aget-object v11, v4, v7

    .line 67
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_1e

    if-ne v9, v3, :cond_1d

    .line 68
    invoke-virtual {v11, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 69
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v10

    invoke-static {v10, v11}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1d
    if-ne v9, v8, :cond_1e

    .line 70
    invoke-virtual {v11, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 71
    invoke-static {}, Lcn/fly/tools/a/h;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-static {v4, v11}, Lcn/fly/tools/a/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    goto :goto_13

    :cond_1e
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 72
    :cond_1f
    :goto_13
    sget-wide v4, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v10, v4, v5}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 73
    sget-wide v7, Lcn/fly/tools/a/c$a;->c:J

    invoke-static {v6, v7, v8}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 74
    sput-wide v6, Lcn/fly/tools/a/c$a;->k:J

    .line 75
    invoke-static {v1, v6, v7}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v6, :cond_20

    .line 76
    monitor-exit v0

    return v2

    .line 77
    :cond_20
    :try_start_d
    const-class v6, Lcn/fly/tools/a/c$b$h;

    sget-wide v7, Lcn/fly/tools/a/c$a;->f:J

    invoke-static {v6, v7, v8}, Lcn/fly/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 78
    sput-wide v4, Lcn/fly/tools/a/c$a;->l:J

    .line 79
    invoke-static {v1, v4, v5}, Lcn/fly/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v1, :cond_21

    .line 80
    monitor-exit v0

    return v2

    .line 81
    :cond_21
    :try_start_e
    invoke-static {}, Lcn/fly/tools/a/c;->a()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 82
    :catchall_0
    :try_start_f
    invoke-static {}, Lcn/fly/tools/a/c$a;->c()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_15

    .line 83
    :cond_22
    :goto_14
    monitor-exit v0

    return v2

    .line 84
    :cond_23
    :goto_15
    :try_start_10
    sput-boolean v3, Lcn/fly/tools/a/c$a;->m:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 85
    monitor-exit v0

    return v3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;J)Z
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "3xu ckZr "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0

    :cond_0
    return v2
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 165
    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_c

    array-length v1, p1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 166
    :cond_1
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x0

    .line 167
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_c

    .line 168
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 169
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_3

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    return v3

    .line 170
    :cond_3
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_4

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-nez v4, :cond_4

    return v3

    .line 171
    :cond_4
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_5

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Character;

    if-nez v4, :cond_5

    return v3

    .line 172
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_6

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Boolean;

    if-nez v4, :cond_6

    return v3

    .line 173
    :cond_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_7

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_7

    return v3

    .line 174
    :cond_7
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_8

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_8

    return v3

    .line 175
    :cond_8
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_9

    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_9

    return v3

    .line 176
    :cond_9
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_b

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_b

    return v3

    .line 177
    :cond_a
    aget-object v2, p1, v1

    if-eqz v2, :cond_b

    aget-object v4, p0, v1

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v3

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    :goto_1
    return v0
.end method

.method private static declared-synchronized b()Z
    .locals 5

    .line 1
    const-class v0, Lcn/fly/tools/a/c$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "usf"

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v1, v2, v4}, Lcn/fly/commons/z;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ne v1, v4, :cond_0

    .line 28
    .line 29
    const-string v1, "3xu ckFe f"

    .line 30
    .line 31
    new-array v3, v2, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return v2

    .line 38
    :cond_0
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0

    .line 44
    return v2

    .line 45
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {v4}, Lcn/fly/tools/a/c$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return v4

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0

    .line 52
    throw v1
.end method

.method private static declared-synchronized c()V
    .locals 2

    .line 1
    const-class v0, Lcn/fly/tools/a/c$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v1}, Lcn/fly/tools/a/c$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method private static d()Z
    .locals 10

    .line 1
    const-string v0, "|m"

    .line 2
    .line 3
    const-string v1, "|f"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, ""

    .line 7
    .line 8
    const-class v4, Lcn/fly/tools/a/c$b$f;

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    array-length v4, v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "f"

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v5, 0x5

    .line 36
    const-string v6, "3xu ckHpCz "

    .line 37
    .line 38
    if-eq v4, v5, :cond_0

    .line 39
    .line 40
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-array v1, v2, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_0
    const-class v4, Lcn/fly/tools/a/c$b$g;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    array-length v4, v4

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/4 v7, 0x1

    .line 87
    if-eq v4, v7, :cond_1

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-array v1, v2, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_1
    const-class v4, Lcn/fly/tools/a/c$b$d;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    array-length v4, v4

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/4 v8, 0x2

    .line 136
    if-eq v4, v8, :cond_2

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-array v1, v2, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :cond_2
    const-class v4, Lcn/fly/tools/a/c$b$b;

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    array-length v4, v4

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    const/16 v9, 0x1a

    .line 185
    .line 186
    if-eq v4, v9, :cond_3

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-array v1, v2, [Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v2

    .line 209
    :cond_3
    const-class v4, Lcn/fly/tools/a/c$b$a;

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    array-length v4, v4

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    if-eq v4, v7, :cond_4

    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-array v1, v2, [Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return v2

    .line 257
    :cond_4
    const-class v4, Lcn/fly/tools/a/c$b$c;

    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    array-length v4, v4

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    if-eq v4, v5, :cond_5

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-array v1, v2, [Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return v2

    .line 305
    :cond_5
    const-class v4, Lcn/fly/tools/a/c$b$h;

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    array-length v4, v4

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const/4 v3, 0x4

    .line 331
    if-eq v4, v3, :cond_6

    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-array v1, v2, [Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return v2

    .line 354
    :cond_6
    const-class v3, Lcn/fly/tools/a/c$b$i;

    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    array-length v3, v3

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    if-ge v3, v8, :cond_7

    .line 380
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    new-array v1, v2, [Ljava/lang/String;

    .line 397
    .line 398
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return v2

    .line 402
    :cond_7
    const-class v3, Lcn/fly/tools/a/c$b$e;

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    array-length v3, v3

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    if-ge v3, v7, :cond_8

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-array v1, v2, [Ljava/lang/String;

    .line 445
    .line 446
    invoke-static {v0, v1}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .line 448
    .line 449
    return v2

    .line 450
    :cond_8
    return v7

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    invoke-static {v0}, Lcn/fly/tools/a/f;->a(Ljava/lang/Throwable;)V

    .line 453
    .line 454
    .line 455
    return v2
.end method
