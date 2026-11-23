.class public Lcom/byazt/kt/t$1;
.super Lcom/byazt/kt/RecyclerView$yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public c:Z

.field public final synthetic tt:Lcom/byazt/kt/t;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/t$1;->tt:Lcom/byazt/kt/t;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$yp;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/kt/t$1;->c:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/kt/RecyclerView$yp;->c(Lcom/byazt/kt/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/byazt/kt/t$1;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/kt/t$1;->c:Z

    .line 4
    iget-object p1, p0, Lcom/byazt/kt/t$1;->tt:Lcom/byazt/kt/t;

    invoke-virtual {p1}, Lcom/byazt/kt/t;->c()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/byazt/kt/t$1;->c:Z

    :cond_1
    return-void
.end method
