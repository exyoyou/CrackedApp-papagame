.class public Lcom/byazt/pg/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x52a,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pg/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pg/c;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    iget-object p2, p2, Lcom/byazt/pg/c;->ve:Lcom/byazt/qj/c;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/byazt/qj/c;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    invoke-static {v0, p1}, Lcom/byazt/pg/c;->c(Lcom/byazt/pg/c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    .line 4
    iget-object v0, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    invoke-static {v0}, Lcom/byazt/pg/c;->tt(Lcom/byazt/pg/c;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->or()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->cu()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    iget-object v0, v0, Lcom/byazt/pg/c;->ve:Lcom/byazt/qj/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/qj/c;->c(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    invoke-static {v0}, Lcom/byazt/pg/c;->ve(Lcom/byazt/pg/c;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/pg/c$4;->c:Lcom/byazt/pg/c;

    invoke-virtual {v0, p1}, Lcom/byazt/pg/c;->c(Lcom/byazt/xj/ve;)V

    return-void
.end method
