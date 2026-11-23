.class public Lcom/byazt/py/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/py/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x757,
        0xf
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
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/os/Handler;Lcom/byazt/nbs/tt;Lcom/byazt/py/tt;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/byazt/py/tt;->run()V

    :cond_0
    return-void
.end method
