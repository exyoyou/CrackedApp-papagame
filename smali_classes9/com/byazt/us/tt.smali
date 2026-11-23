.class public Lcom/byazt/us/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0xd
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
.method public c(Lcom/byazt/dd/tt;Lcom/byazt/us/sp;I)V
    .locals 2
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/us/sp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/us/tt$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/us/tt$1;-><init>(Lcom/byazt/us/tt;Lcom/byazt/dd/tt;Lcom/byazt/us/sp;)V

    .line 8
    .line 9
    .line 10
    int-to-long p1, p3

    .line 11
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
