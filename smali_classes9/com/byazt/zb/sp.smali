.class public Lcom/byazt/zb/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb8,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zb/sp$c;
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/zb/sp$c;


# direct methods
.method public static c(Lcom/byazt/zb/sp$c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/zb/sp;->c:Lcom/byazt/zb/sp$c;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/byazt/zb/sp;->c:Lcom/byazt/zb/sp$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 5
    :cond_1
    sget-object v0, Lcom/byazt/zb/sp;->c:Lcom/byazt/zb/sp$c;

    invoke-interface {v0, p0, p1, p2}, Lcom/byazt/zb/sp$c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/zb/sp;->c:Lcom/byazt/zb/sp$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
