.class public Lcom/byazt/atv/uj$c$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x23a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/uj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation


# instance fields
.field public final a:Lcom/byazt/atv/uj$c$c;

.field public final c:Lcom/byazt/xj/ve;

.field public final n:Z

.field public final tt:Landroid/view/MotionEvent;

.field public final uj:Lcom/byazt/pm/sl;

.field public final ve:Lcom/byazt/ji/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;Lcom/byazt/ji/tt;Lcom/byazt/pm/sl;ZLcom/byazt/atv/uj$c$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/atv/uj$c$tt;->c:Lcom/byazt/xj/ve;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/atv/uj$c$tt;->tt:Landroid/view/MotionEvent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/atv/uj$c$tt;->ve:Lcom/byazt/ji/tt;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/atv/uj$c$tt;->uj:Lcom/byazt/pm/sl;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/byazt/atv/uj$c$tt;->n:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/atv/uj$c$tt;->a:Lcom/byazt/atv/uj$c$c;

    .line 15
    .line 16
    return-void
.end method

.method private a()Lcom/byazt/atv/uj$c$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->a:Lcom/byazt/atv/uj$c$c;

    return-object v0
.end method

.method public static synthetic a(Lcom/byazt/atv/uj$c$tt;)Lcom/byazt/xj/ve;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->c()Lcom/byazt/xj/ve;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/atv/uj$c$tt;)Landroid/view/MotionEvent;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->tt()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/byazt/xj/ve;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->c:Lcom/byazt/xj/ve;

    return-object v0
.end method

.method private n()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/atv/uj$c$tt;->n:Z

    return v0
.end method

.method public static synthetic n(Lcom/byazt/atv/uj$c$tt;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->sp()Z

    move-result p0

    return p0
.end method

.method public static synthetic sp(Lcom/byazt/atv/uj$c$tt;)Lcom/byazt/pm/sl;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->uj()Lcom/byazt/pm/sl;

    move-result-object p0

    return-object p0
.end method

.method private sp()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->uj:Lcom/byazt/pm/sl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tt()Landroid/view/MotionEvent;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->tt:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/atv/uj$c$tt;)Lcom/byazt/ji/tt;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->ve()Lcom/byazt/ji/tt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/atv/uj$c$tt;)Lcom/byazt/atv/uj$c$c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->a()Lcom/byazt/atv/uj$c$c;

    move-result-object p0

    return-object p0
.end method

.method private uj()Lcom/byazt/pm/sl;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->uj:Lcom/byazt/pm/sl;

    return-object v0
.end method

.method private ve()Lcom/byazt/ji/tt;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$tt;->ve:Lcom/byazt/ji/tt;

    return-object v0
.end method

.method public static synthetic ve(Lcom/byazt/atv/uj$c$tt;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$tt;->n()Z

    move-result p0

    return p0
.end method
