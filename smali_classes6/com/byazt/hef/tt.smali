.class public Lcom/byazt/hef/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b2,
        0xd
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/hef/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/hef/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/hef/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/hef/tt;->c:Lcom/byazt/hef/c;

    .line 7
    .line 8
    return-void
.end method

.method public static c()V
    .locals 1

    .line 3
    sget-object v0, Lcom/byazt/hef/tt;->c:Lcom/byazt/hef/c;

    invoke-interface {v0}, Lcom/byazt/hef/c;->c()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method public static tt()V
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/hef/tt;->c:Lcom/byazt/hef/c;

    invoke-interface {v0}, Lcom/byazt/hef/c;->tt()V

    return-void
.end method

.method public static tt(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static uj()V
    .locals 0

    return-void
.end method

.method public static ve()I
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/hef/tt;->c:Lcom/byazt/hef/c;

    invoke-interface {v0}, Lcom/byazt/hef/c;->ve()I

    move-result v0

    return v0
.end method

.method public static ve(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/hef/tt;->c:Lcom/byazt/hef/c;

    invoke-interface {v0, p0}, Lcom/byazt/hef/c;->c(Landroid/content/Context;)V

    return-void
.end method
