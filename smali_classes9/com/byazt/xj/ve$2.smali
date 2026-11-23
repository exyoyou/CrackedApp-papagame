.class public Lcom/byazt/xj/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5bf,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xj/ve;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xj/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xj/ve$2;->c:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/xj/ve$2;->c:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/byazt/xj/ve;->ve(Lcom/byazt/xj/ve;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/xj/ve$2;->c:Lcom/byazt/xj/ve;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/byazt/xj/ve;->gx:Ljava/util/Map;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/byazt/sz/m;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/xj/ve$2;->c:Lcom/byazt/xj/ve;

    .line 31
    .line 32
    invoke-interface {v0, p1, v1, v1}, Lcom/byazt/sz/rh;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
