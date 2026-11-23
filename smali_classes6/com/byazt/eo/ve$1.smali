.class public Lcom/byazt/eo/ve$1;
.super Lcom/byazt/oc/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/eo/ve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/am/tt;

.field public final synthetic tt:Lcom/byazt/eo/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/eo/ve;Lcom/byazt/am/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/ve$1;->tt:Lcom/byazt/eo/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/eo/ve$1;->c:Lcom/byazt/am/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/oc/uj;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/oc/ve;)Landroid/view/View;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/eo/ve$1;->c:Lcom/byazt/am/tt;

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/xw/uj;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/byazt/xw/uj;-><init>(Lcom/byazt/oc/ve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/am/tt;->c(Lcom/byazt/dw/c;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method
