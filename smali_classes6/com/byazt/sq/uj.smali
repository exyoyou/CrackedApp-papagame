.class public Lcom/byazt/sq/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x384,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sq/uj$ve;,
        Lcom/byazt/sq/uj$tt;,
        Lcom/byazt/sq/uj$c;
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/sq/uj$c;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/byazt/sq/uj;->c(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/byazt/sq/uj$tt;

    invoke-direct {p1, p0}, Lcom/byazt/sq/uj$tt;-><init>(Lcom/byazt/sq/uj$c;)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/byazt/sq/uj;->c(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/byazt/sq/uj$ve;

    invoke-direct {p1, p0}, Lcom/byazt/sq/uj$ve;-><init>(Lcom/byazt/sq/uj$c;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "proto2_ittprovider"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.bytedance.sdk.openadsdk.ITTProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Class;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/sq/uj;->c(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/byazt/sq/uj;->c(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
