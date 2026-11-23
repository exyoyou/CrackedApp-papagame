.class public Lcom/byazt/sgn/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/uj;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/uj$1;->c:Lcom/byazt/sgn/uj;

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
    sget-object p1, Lcom/byazt/sgn/uj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/sgn/uj$1;->c:Lcom/byazt/sgn/uj;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/byazt/sgn/uj;->n:Lcom/byazt/sgn/uj$c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/sgn/uj$c;->c(Landroid/app/Dialog;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
