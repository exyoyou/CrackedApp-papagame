.class public Lcom/beizi/ad/internal/view/a/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/internal/view/a/a$c;,
        Lcom/beizi/ad/internal/view/a/a$e;,
        Lcom/beizi/ad/internal/view/a/a$d;,
        Lcom/beizi/ad/internal/view/a/a$a;,
        Lcom/beizi/ad/internal/view/a/a$b;
    }
.end annotation


# static fields
.field private static b:Lcom/beizi/ad/internal/view/a/a$e;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/ad/internal/view/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/beizi/ad/internal/view/a/a;->a:Ljava/util/List;

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/beizi/ad/internal/view/a/a;->c:I

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/beizi/ad/internal/view/a/a;->b()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/beizi/ad/internal/view/a/a;->a:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Lcom/beizi/ad/internal/view/a/a$e;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2}, Lcom/beizi/ad/internal/view/a/a$e;-><init>(Lcom/beizi/ad/internal/view/a/a;Landroid/content/Context;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/beizi/ad/internal/view/a/a;->b:Lcom/beizi/ad/internal/view/a/a$e;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/view/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/internal/view/a/a;->c:I

    return p0
.end method

.method static synthetic a()Lcom/beizi/ad/internal/view/a/a$e;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/ad/internal/view/a/a;->b:Lcom/beizi/ad/internal/view/a/a$e;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beizi/ad/internal/view/a/a$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u5783\u573e\u5e7f\u544a"

    .line 7
    .line 8
    const-string v2, "\u611f\u89c9\u6709\u88ab\u5192\u72af\u6216\u88ab\u6b67\u89c6"

    .line 9
    .line 10
    const-string v3, "\u5e7f\u544a\u6d89\u53ca\u6b3a\u8bc8\u9020\u5047"

    .line 11
    .line 12
    const-string v4, "\u5e7f\u544a\u6d89\u53ca\u8272\u60c5\u66b4\u529b"

    .line 13
    .line 14
    const-string v5, "\u5e7f\u544a\u6d89\u53ca\u8fdd\u7981\u5546\u54c1/\u670d\u52a1"

    .line 15
    .line 16
    const-string v6, "\u5bf9\u5e7f\u544a\u5185\u5bb9\u4e0d\u611f\u5174\u8da3"

    .line 17
    .line 18
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    const/4 v3, 0x6

    .line 24
    if-ge v2, v3, :cond_0

    .line 25
    .line 26
    aget-object v3, v1, v2

    .line 27
    .line 28
    new-instance v4, Lcom/beizi/ad/internal/view/a/a$c;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Lcom/beizi/ad/internal/view/a/a$c;-><init>(Lcom/beizi/ad/internal/view/a/a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Lcom/beizi/ad/internal/view/a/a$c;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lcom/beizi/ad/internal/view/a/a;->c:I

    .line 37
    .line 38
    invoke-virtual {v4, v3}, Lcom/beizi/ad/internal/view/a/a$c;->a(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method
