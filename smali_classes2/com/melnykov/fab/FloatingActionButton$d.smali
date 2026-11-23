.class Lcom/melnykov/fab/FloatingActionButton$d;
.super Lcom/melnykov/fab/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private c:Lcom/melnykov/fab/d;

.field private d:Lcom/melnykov/fab/ObservableScrollView$a;

.field final synthetic e:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$d;->e:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$d;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic e(Lcom/melnykov/fab/FloatingActionButton$d;Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$d;->g(Lcom/melnykov/fab/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$d;->c:Lcom/melnykov/fab/d;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ScrollView;IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$d;->d:Lcom/melnykov/fab/ObservableScrollView$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lcom/melnykov/fab/ObservableScrollView$a;->a(Landroid/widget/ScrollView;IIII)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/melnykov/fab/e;->a(Landroid/widget/ScrollView;IIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$d;->e:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->A()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$d;->c:Lcom/melnykov/fab/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/melnykov/fab/d;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$d;->e:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->t()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$d;->c:Lcom/melnykov/fab/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/melnykov/fab/d;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public f(Lcom/melnykov/fab/ObservableScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$d;->d:Lcom/melnykov/fab/ObservableScrollView$a;

    .line 2
    .line 3
    return-void
.end method
