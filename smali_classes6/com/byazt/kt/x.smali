.class public abstract Lcom/byazt/kt/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x47
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/kt/RecyclerView$i;

.field public final tt:Landroid/graphics/Rect;

.field public ve:I


# direct methods
.method private constructor <init>(Lcom/byazt/kt/RecyclerView$i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lcom/byazt/kt/x;->ve:I

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/byazt/kt/x;->tt:Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/kt/x;-><init>(Lcom/byazt/kt/RecyclerView$i;)V

    return-void
.end method

.method public static c(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;
    .locals 1

    .line 5
    new-instance v0, Lcom/byazt/kt/x$1;

    invoke-direct {v0, p0}, Lcom/byazt/kt/x$1;-><init>(Lcom/byazt/kt/RecyclerView$i;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/kt/RecyclerView$i;I)Lcom/byazt/kt/x;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/byazt/kt/x;->tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/byazt/kt/x;->c(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object p0

    return-object p0
.end method

.method public static tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/kt/x$2;

    invoke-direct {v0, p0}, Lcom/byazt/kt/x$2;-><init>(Lcom/byazt/kt/RecyclerView$i;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kt/x;->a()I

    move-result v0

    iput v0, p0, Lcom/byazt/kt/x;->ve:I

    return-void
.end method

.method public abstract c(I)V
.end method

.method public abstract n()I
.end method

.method public abstract n(Landroid/view/View;)I
.end method

.method public abstract sp()I
.end method

.method public tt()I
    .locals 2

    const/high16 v0, -0x80000000

    .line 1
    iget v1, p0, Lcom/byazt/kt/x;->ve:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kt/x;->a()I

    move-result v0

    iget v1, p0, Lcom/byazt/kt/x;->ve:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract tt(Landroid/view/View;)I
.end method

.method public abstract uj()I
.end method

.method public abstract uj(Landroid/view/View;)I
.end method

.method public abstract ve()I
.end method

.method public abstract ve(Landroid/view/View;)I
.end method

.method public abstract x()I
.end method
