.class public Lcom/byazt/ri/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9cf,
        0x14
    }
.end annotation


# static fields
.field public static c:I = 0xa

.field public static n:Lcom/byazt/fk/c; = null

.field public static tt:I = 0xa

.field public static uj:I = 0xa

.field public static ve:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 1

    .line 19
    sget-object v0, Lcom/byazt/ri/c;->n:Lcom/byazt/fk/c;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/byazt/fk/c;->clearCache()V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/ns/c;->c()Lcom/byazt/ns/c;

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/fk/c;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/byazt/ri/c;->n:Lcom/byazt/fk/c;

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MediaConfig"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "splash"

    const/16 v2, 0xa

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/byazt/ri/c;->c:I

    const-string v1, "reward"

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/byazt/ri/c;->tt:I

    const-string v1, "brand"

    .line 5
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/byazt/ri/c;->ve:I

    const-string v1, "other"

    .line 6
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/byazt/ri/c;->uj:I

    .line 7
    sget v1, Lcom/byazt/ri/c;->c:I

    if-gez v1, :cond_1

    .line 8
    sput v2, Lcom/byazt/ri/c;->c:I

    .line 9
    :cond_1
    sget v1, Lcom/byazt/ri/c;->tt:I

    if-gez v1, :cond_2

    .line 10
    sput v2, Lcom/byazt/ri/c;->tt:I

    .line 11
    :cond_2
    sget v1, Lcom/byazt/ri/c;->ve:I

    if-gez v1, :cond_3

    .line 12
    sput v2, Lcom/byazt/ri/c;->ve:I

    :cond_3
    if-gez p0, :cond_4

    .line 13
    sput v2, Lcom/byazt/ri/c;->uj:I

    :cond_4
    const/16 p0, 0x8

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "splash="

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 14
    sget v1, Lcom/byazt/ri/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    const-string v1, ",reward="

    const/4 v2, 0x2

    aput-object v1, p0, v2

    sget v1, Lcom/byazt/ri/c;->tt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p0, v2

    const-string v1, ",brand="

    const/4 v2, 0x4

    aput-object v1, p0, v2

    sget v1, Lcom/byazt/ri/c;->ve:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, p0, v2

    const-string v1, ",other="

    const/4 v2, 0x6

    aput-object v1, p0, v2

    sget v1, Lcom/byazt/ri/c;->uj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, p0, v2

    .line 16
    invoke-static {v0, p0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ri/c;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public static tt()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ri/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public static uj()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ri/c;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public static ve()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ri/c;->tt:I

    .line 2
    .line 3
    return v0
.end method
