.class public Lcom/byazt/fcd/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/ve;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public c:Z

.field public final synthetic tt:Lcom/byazt/fcd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/ve$1;->tt:Lcom/byazt/fcd/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/fcd/ve$1;->c:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/byazt/fcd/ve$1;->c:Z

    .line 4
    iget-object p2, p0, Lcom/byazt/fcd/ve$1;->tt:Lcom/byazt/fcd/ve;

    iget-object p2, p2, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    invoke-virtual {p2, p1}, Lcom/byazt/kcl/n;->c(Z)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/xl/yp;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/ve$1;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve$1;->tt:Lcom/byazt/fcd/ve;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    move-result-object v0

    new-instance v1, Lcom/byazt/fcd/ve$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/fcd/ve$1$1;-><init>(Lcom/byazt/fcd/ve$1;Landroid/view/View;Lcom/byazt/xl/yp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
