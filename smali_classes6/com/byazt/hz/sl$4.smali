.class public Lcom/byazt/hz/sl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rn/RefreshableBannerView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x595
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/sl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/sl;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/sl$4;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/hz/sl$4;->c:Lcom/byazt/hz/sl;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/hz/sl;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/sl$4;->c:Lcom/byazt/hz/sl;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/hz/sl;->ve(Lcom/byazt/hz/sl;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/byazt/hz/sl$4;->c:Lcom/byazt/hz/sl;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/byazt/hz/sl;->uj(Lcom/byazt/hz/sl;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
