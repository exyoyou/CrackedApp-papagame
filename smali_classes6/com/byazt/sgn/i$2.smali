.class public Lcom/byazt/sgn/i$2;
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
        0xcd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/i;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/i;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/i$2;->c:Lcom/byazt/sgn/i;

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
    sget-object p1, Lcom/byazt/sgn/i;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/sgn/i$2;->c:Lcom/byazt/sgn/i;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/sgn/i$2;->c:Lcom/byazt/sgn/i;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/byazt/sgn/i;->ve:Lcom/byazt/sgn/i$c;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/sgn/i$c;->c(Landroid/app/Dialog;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
