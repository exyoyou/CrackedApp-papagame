.class public Lcom/byazt/hef/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hef/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b2,
        0x36
    }
.end annotation


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


# virtual methods
.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->t()V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/aas/DeviceUtils;->uj(Landroid/content/Context;)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/tlc/tt;->tt()Lcom/byazt/tlc/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/tlc/tt;->ve()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public ve()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
