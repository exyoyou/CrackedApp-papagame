.class public Lcom/byazt/pg/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/gt;
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x52a,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pg/tt$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public n:Lcom/byazt/sz/gt;

.field public sp:I

.field public tt:Lcom/byazt/ddx/sp;

.field public uj:Lcom/byazt/pg/tt$c;

.field public ve:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ddx/sp;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pg/tt;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pg/tt;->tt:Lcom/byazt/ddx/sp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/pg/tt;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/pg/tt;->sp:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pg/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/pg/tt;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    return-void
.end method

.method private tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/sz/z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/pg/tt;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/byazt/pg/tt;->ve:Lcom/byazt/xj/ve;

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/pg/tt;->tt:Lcom/byazt/ddx/sp;

    .line 17
    .line 18
    const/4 p2, -0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v0, "ugeno render fail"

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p3, :cond_1

    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    invoke-interface {p3, p2, p1}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/gt;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/pg/tt;->tt:Lcom/byazt/ddx/sp;

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/byazt/ddx/sp;->c(J)V

    .line 48
    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/pg/tt;->ve:Lcom/byazt/xj/ve;

    .line 53
    .line 54
    invoke-interface {p3, p1}, Lcom/byazt/ux/sp;->c(Lcom/byazt/xj/ve;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pg/tt$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pg/tt;->uj:Lcom/byazt/pg/tt$c;

    return-void
.end method

.method public c(Lcom/byazt/sz/gt;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/pg/tt;->n:Lcom/byazt/sz/gt;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 9
    iget-object p2, p0, Lcom/byazt/pg/tt;->uj:Lcom/byazt/pg/tt$c;

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2, p1}, Lcom/byazt/pg/tt$c;->c(Lcom/byazt/sz/m;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/pg/tt;->n:Lcom/byazt/sz/gt;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/byazt/sz/gt;->c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/pg/tt;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/pg/tt$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/pg/tt$1;-><init>(Lcom/byazt/pg/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
