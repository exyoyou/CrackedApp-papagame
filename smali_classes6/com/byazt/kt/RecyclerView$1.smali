.class public Lcom/byazt/kt/RecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x49b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$1;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$1;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->my:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$1;->c:Lcom/byazt/kt/RecyclerView;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->nu:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->requestLayout()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->rl:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->gt:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->uj()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method
