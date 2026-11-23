.class public Lcom/kingja/loadsir/callback/HintCallback$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingja/loadsir/callback/HintCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->d:I

    .line 8
    .line 9
    iput v0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->e:I

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/kingja/loadsir/callback/HintCallback$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/kingja/loadsir/callback/HintCallback$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/kingja/loadsir/callback/HintCallback$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/kingja/loadsir/callback/HintCallback$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/kingja/loadsir/callback/HintCallback$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->e:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Lcom/kingja/loadsir/callback/HintCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/kingja/loadsir/callback/HintCallback;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kingja/loadsir/callback/HintCallback;-><init>(Lcom/kingja/loadsir/callback/HintCallback$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public g(I)Lcom/kingja/loadsir/callback/HintCallback$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/kingja/loadsir/callback/HintCallback$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/kingja/loadsir/callback/HintCallback$a;->i(Ljava/lang/String;I)Lcom/kingja/loadsir/callback/HintCallback$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public i(Ljava/lang/String;I)Lcom/kingja/loadsir/callback/HintCallback$a;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->d:I

    .line 4
    .line 5
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/kingja/loadsir/callback/HintCallback$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/kingja/loadsir/callback/HintCallback$a;->k(Ljava/lang/String;I)Lcom/kingja/loadsir/callback/HintCallback$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Ljava/lang/String;I)Lcom/kingja/loadsir/callback/HintCallback$a;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/kingja/loadsir/callback/HintCallback$a;->e:I

    .line 4
    .line 5
    return-object p0
.end method
