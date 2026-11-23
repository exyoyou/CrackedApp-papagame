.class public Lcom/byazt/xj/ve$1;
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
        0x4f
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
    iput-object p1, p0, Lcom/byazt/xj/ve$1;->c:Lcom/byazt/xj/ve;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/xj/ve$1;->c:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/byazt/xj/ve;->xd:Lcom/byazt/sz/da;

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
    iget-object p1, p0, Lcom/byazt/xj/ve$1;->c:Lcom/byazt/xj/ve;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/byazt/xj/ve;->xd:Lcom/byazt/sz/da;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/sz/da;->c(Lcom/byazt/xj/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
