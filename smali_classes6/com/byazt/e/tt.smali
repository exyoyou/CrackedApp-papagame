.class public Lcom/byazt/e/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bb,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/e/tt$tt;,
        Lcom/byazt/e/tt$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Landroid/content/Context;

.field public da:I

.field public i:Landroid/view/View;

.field public n:Ljava/lang/String;

.field public sp:Landroid/graphics/drawable/Drawable;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/e/tt$tt;


# direct methods
.method private constructor <init>(Lcom/byazt/e/tt$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/e/tt;->a:Z

    .line 4
    invoke-static {p1}, Lcom/byazt/e/tt$c;->c(Lcom/byazt/e/tt$c;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->c:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/byazt/e/tt$c;->tt(Lcom/byazt/e/tt$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->tt:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/byazt/e/tt$c;->ve(Lcom/byazt/e/tt$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->ve:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/byazt/e/tt$c;->uj(Lcom/byazt/e/tt$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->uj:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/byazt/e/tt$c;->n(Lcom/byazt/e/tt$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->n:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/byazt/e/tt$c;->a(Lcom/byazt/e/tt$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/e/tt;->a:Z

    .line 10
    invoke-static {p1}, Lcom/byazt/e/tt$c;->sp(Lcom/byazt/e/tt$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->sp:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {p1}, Lcom/byazt/e/tt$c;->x(Lcom/byazt/e/tt$c;)Lcom/byazt/e/tt$tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/e/tt;->x:Lcom/byazt/e/tt$tt;

    .line 12
    iget-object v0, p1, Lcom/byazt/e/tt$c;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/byazt/e/tt;->i:Landroid/view/View;

    .line 13
    iget p1, p1, Lcom/byazt/e/tt$c;->tt:I

    iput p1, p0, Lcom/byazt/e/tt;->da:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/e/tt$c;Lcom/byazt/e/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/e/tt;-><init>(Lcom/byazt/e/tt$c;)V

    return-void
.end method
