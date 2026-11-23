.class public Lcom/byazt/kt/RecyclerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kt/yp$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x49e
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
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v0, Lcom/byazt/kt/RecyclerView;->yp:Lcom/byazt/kt/RecyclerView$i;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->n:Lcom/byazt/kt/RecyclerView$m;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;Lcom/byazt/kt/RecyclerView$m;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->n:Lcom/byazt/kt/RecyclerView$m;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$m;->ve(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView;->tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->gu:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->zm:Lcom/byazt/kt/RecyclerView$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/byazt/kt/RecyclerView$a;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->z()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->zm:Lcom/byazt/kt/RecyclerView$a;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView$a;->ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$3;->c:Lcom/byazt/kt/RecyclerView;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->z()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
