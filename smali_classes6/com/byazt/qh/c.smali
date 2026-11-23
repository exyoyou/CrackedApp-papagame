.class public Lcom/byazt/qh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x32b,
        0x14
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;


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

.method private static c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.bytedance.sdk"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\."

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c([CLjava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    return-object p1

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 73
    array-length v0, p0

    const/4 v1, 0x0

    .line 74
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 75
    aget-char v2, p1, v1

    rem-int v3, v1, v0

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/qh/c;->tt(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "sp_apm_record"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c([Ljava/lang/StackTraceElement;)V
    .locals 14

    if-eqz p0, :cond_9

    .line 3
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/16 v2, 0x11

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x5f5e0f3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 8
    array-length v1, v0

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 9
    :cond_1
    const-class v1, Ljava/lang/StackTraceElement;

    const-string v2, "declaringClass"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_8

    .line 12
    aget-object v5, p0, v4

    if-eqz v5, :cond_7

    .line 13
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "java"

    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "org"

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 17
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 18
    const-class v7, Lcom/byazt/zqa/c;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/byazt/zqa/c;

    if-eqz v6, :cond_2

    .line 19
    invoke-interface {v6}, Lcom/byazt/zqa/c;->c()[I

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_7

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    array-length v8, v0

    sub-int/2addr v8, v2

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    .line 22
    :goto_2
    array-length v10, v6

    if-ge v9, v10, :cond_6

    .line 23
    aget v10, v6, v9

    if-ltz v10, :cond_4

    .line 24
    array-length v11, v0

    if-lt v10, v11, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    aget-object v10, v0, v10

    invoke-static {v8, v10}, Lcom/byazt/qh/c;->c([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    array-length v10, v6

    sub-int/2addr v10, v2

    if-eq v9, v10, :cond_5

    const-string v10, "."

    .line 27
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    :goto_3
    const-string v11, "NpthUtils"

    .line 28
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "nameIndex error:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", length:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void

    :catchall_0
    move-exception p0

    .line 30
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const-string v1, "report"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public static c()Z
    .locals 14

    const-string v0, ";"

    const/4 v1, 0x1

    .line 31
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->xd()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 33
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    .line 35
    aget-object v5, v2, v3

    .line 36
    aget-object v2, v2, v1

    const-wide/16 v6, -0x1

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    mul-long v7, v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v5, "apm"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "error"

    aput-object v7, v4, v3

    .line 41
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v4}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, -0x1

    .line 42
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-ltz v9, :cond_d

    if-ltz v2, :cond_d

    const/16 v4, 0x3c

    if-le v2, v4, :cond_2

    goto/16 :goto_4

    .line 43
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v9, v4, v7

    if-eqz v9, :cond_c

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 44
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v7, v2

    div-long/2addr v4, v7

    const-wide/16 v7, 0x1388

    cmp-long v9, v4, v7

    if-gez v9, :cond_4

    return v3

    .line 45
    :cond_4
    invoke-static {}, Lcom/byazt/qh/c;->tt()Ljava/lang/String;

    move-result-object v4

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 49
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qh/c;->c(Ljava/lang/String;)V

    return v1

    .line 51
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 52
    array-length v9, v4

    if-lt v9, v2, :cond_a

    if-nez v9, :cond_6

    goto :goto_2

    .line 53
    :cond_6
    aget-object v10, v4, v3

    .line 54
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 55
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v7, v10

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-lez v6, :cond_7

    const/4 v3, 0x1

    :cond_7
    sub-int v2, v9, v2

    move v6, v2

    :goto_1
    if-ge v6, v9, :cond_9

    .line 56
    aget-object v10, v4, v6

    if-eq v6, v2, :cond_8

    .line 57
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 58
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_9
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qh/c;->c(Ljava/lang/String;)V

    return v3

    :cond_a
    :goto_2
    if-ge v3, v9, :cond_b

    .line 61
    aget-object v2, v4, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 62
    :cond_b
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qh/c;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :cond_c
    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1

    :catch_1
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static synthetic c(Ljava/lang/Throwable;Ljava/lang/Thread;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/qh/c;->tt(Ljava/lang/Throwable;Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method private static n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.byted.pangle"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qh/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static tt()Ljava/lang/String;
    .locals 3

    .line 54
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "sp_apm_record"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 57
    :cond_1
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    const/16 v3, 0x8

    .line 58
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v2

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v2, v3, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 63
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v1
.end method

.method private static tt(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/qh/c$1;

    invoke-direct {v0}, Lcom/byazt/qh/c$1;-><init>()V

    invoke-static {v0}, Lcom/byazt/uy/sp;->c(Lcom/byazt/uy/a;)V

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0xa

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/byazt/qh/c$2;

    invoke-direct {v4, p0}, Lcom/byazt/qh/c$2;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ogz/sl;->rp()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->rp()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 7
    :cond_2
    invoke-static {v3, v4, p0, v1}, Lcom/byazt/uy/sp;->c(Landroid/content/Context;Lcom/byazt/uy/n;ZZ)V

    .line 8
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/byazt/qh/c$3;

    invoke-direct {v0}, Lcom/byazt/qh/c$3;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static tt(Ljava/lang/Throwable;Ljava/lang/Thread;)Z
    .locals 9

    .line 9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 12
    :goto_0
    sget p1, Lcom/byazt/omf/p;->uj:I

    const/16 v2, 0x1ce8

    if-lt p1, v2, :cond_4

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/16 v2, 0x10

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x5f5e0f3

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 16
    invoke-static {p1}, Lcom/byazt/qh/c;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/byazt/qh/c;->c:Ljava/lang/String;

    .line 17
    :cond_3
    const-class p1, Lcom/byazt/qh/c;

    invoke-static {p1}, Lcom/byazt/qh/c;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p0}, Lcom/byazt/qh/c;->c([Ljava/lang/StackTraceElement;)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 19
    :goto_1
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.byazt.ub"

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "bykvm"

    const-string v4, "com.bytedance.sdk.openadsdk.mediation"

    const-string v5, "com.bytedance.sdk.gromore"

    const-string v6, "com.bytedance.msdk"

    const/4 v7, 0x1

    if-nez v2, :cond_6

    const-string v2, "com.byazt.ak"

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.bykv.vk"

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.byted.csj.ext_impl"

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.bytedance.adsdk"

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 25
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 27
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.byakv"

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.byazt"

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_7

    .line 31
    sget-object v8, Lcom/byazt/qh/c;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 32
    sget-object v2, Lcom/byazt/qh/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_7
    if-nez v2, :cond_8

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_8
    if-eqz v2, :cond_11

    .line 35
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/uj;->tt()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v1, "com.byazt.ouz"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "true"

    if-eqz v1, :cond_9

    const-string v1, "express"

    .line 37
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_9
    const-class v1, Lcom/byazt/apd/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.bytedance.sdk.openadsdk.live"

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.bykv.vk.openvk.live"

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "live_sdk"

    .line 42
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "live_sdk_version"

    .line 43
    invoke-static {}, Lcom/byazt/qh/c;->ve()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_b
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, "mediation"

    if-nez v1, :cond_d

    .line 45
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 46
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    const-string p0, "false"

    .line 48
    invoke-interface {p1, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 49
    :cond_d
    :goto_4
    invoke-interface {p1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_5
    sget-boolean p0, Lcom/byazt/omf/p;->ve:Z

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/byazt/qh/c;->n()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "second_plugin_version"

    .line 52
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_f
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/omf/uj;->tt()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/uy/sp;->c(Ljava/util/Map;)V

    :cond_10
    return v7

    :cond_11
    return v1
.end method

.method public static synthetic uj()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qh/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.byted.live.lite"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qh/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
