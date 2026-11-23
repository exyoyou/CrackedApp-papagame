.class public Lcom/byazt/xw/tt;
.super Lcom/byazt/dw/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe2,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yf/tt;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Map;Lcom/byazt/oc/ve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/oc/ve;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/dw/ve;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/byazt/oc/ve;->c(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/yf/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xw/tt;->c:Lcom/byazt/yf/tt;

    return-void

    .line 3
    :cond_0
    invoke-interface {p3, p1}, Lcom/byazt/oc/ve;->c(Landroid/app/Activity;)Lcom/byazt/yf/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xw/tt;->c:Lcom/byazt/yf/tt;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/byazt/yf/tt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/byazt/dw/ve;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/byazt/xw/tt;->c:Lcom/byazt/yf/tt;

    return-void
.end method


# virtual methods
.method public setDislikeCallback(Lcom/byazt/am/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xw/tt;->c:Lcom/byazt/yf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/xw/tt$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/xw/tt$1;-><init>(Lcom/byazt/xw/tt;Lcom/byazt/am/c;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/byazt/yf/tt;->c(Lcom/byazt/yf/sp;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xw/tt;->c:Lcom/byazt/yf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/yf/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
