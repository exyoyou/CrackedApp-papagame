.class public final Lcom/byazt/e/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bb,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/e/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Landroid/view/View;

.field public da:Lcom/byazt/e/tt$tt;

.field public i:Landroid/graphics/drawable/Drawable;

.field public n:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:Landroid/content/Context;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/e/tt$c;->ve:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/byazt/e/tt$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/e/tt$c;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/e/tt$c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->ve:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/e/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/e/tt$c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/e/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/e/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/e/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/e/tt$c;)Lcom/byazt/e/tt$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/tt$c;->da:Lcom/byazt/e/tt$tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/e/tt$c;
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/e/tt$c;->tt:I

    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/e/tt$c;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c(Lcom/byazt/e/tt$tt;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/e/tt$c;->da:Lcom/byazt/e/tt$tt;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/tt$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/e/tt$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/e/tt$c;->x:Z

    return-object p0
.end method

.method public c()Lcom/byazt/e/tt;
    .locals 2

    .line 7
    new-instance v0, Lcom/byazt/e/tt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/e/tt;-><init>(Lcom/byazt/e/tt$c;Lcom/byazt/e/tt$1;)V

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/tt$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/tt$c;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/e/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/tt$c;->a:Ljava/lang/String;

    return-object p0
.end method
