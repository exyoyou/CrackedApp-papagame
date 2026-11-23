.class abstract Lcom/melnykov/fab/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/melnykov/fab/ObservableScrollView$a;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ScrollView;IIII)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/melnykov/fab/e;->a:I

    .line 2
    .line 3
    sub-int p1, p3, p1

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p2, p0, Lcom/melnykov/fab/e;->b:I

    .line 10
    .line 11
    if-le p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget p1, p0, Lcom/melnykov/fab/e;->a:I

    .line 19
    .line 20
    if-le p3, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/melnykov/fab/e;->c()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/e;->b()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_1
    iput p3, p0, Lcom/melnykov/fab/e;->a:I

    .line 30
    .line 31
    return-void
.end method

.method abstract b()V
.end method

.method abstract c()V
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/e;->b:I

    .line 2
    .line 3
    return-void
.end method
