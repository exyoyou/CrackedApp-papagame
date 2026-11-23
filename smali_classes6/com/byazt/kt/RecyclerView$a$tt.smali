.class public Lcom/byazt/kt/RecyclerView$a$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x688
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tt"
.end annotation


# instance fields
.field public c:I

.field public tt:I

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$a$tt;->c(Lcom/byazt/kt/RecyclerView$gu;I)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;I)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Lcom/byazt/kt/RecyclerView$a$tt;->ve:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/RecyclerView$a$tt;->uj:I

    return-object p0
.end method
