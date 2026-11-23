.class public Lcom/byazt/sgn/x;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x47
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/xs/c;

.field public c:Lorg/json/JSONObject;

.field public n:Ljava/lang/String;

.field public sp:Lcom/byazt/ux/sp;

.field public tt:Lorg/json/JSONObject;

.field public uj:Lcom/byazt/sgn/sp$c;

.field public ve:Landroid/content/Context;

.field public x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/byazt/sgn/x;->sp:Lcom/byazt/ux/sp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/sgn/x;->ve:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/sgn/x;->c:Lorg/json/JSONObject;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/sgn/x;->n:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/byazt/sgn/x;->tt:Lorg/json/JSONObject;

    .line 13
    .line 14
    new-instance p1, Lcom/byazt/xs/c;

    .line 15
    .line 16
    invoke-direct {p1, p2, p6}, Lcom/byazt/xs/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/sgn/x;->a:Lcom/byazt/xs/c;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/x;)Lcom/byazt/ux/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/x;->sp:Lcom/byazt/ux/sp;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/sgn/x;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/sgn/x;->x:Z

    return p1
.end method

.method private tt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/x;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/sgn/x;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/sgn/x;->a:Lcom/byazt/xs/c;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/byazt/sgn/x;->x:Z

    .line 16
    .line 17
    new-instance v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/sgn/x;->ve:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/sgn/x;->a:Lcom/byazt/xs/c;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/sgn/x;->c:Lorg/json/JSONObject;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/byazt/sgn/x;->tt:Lorg/json/JSONObject;

    .line 29
    .line 30
    new-instance v4, Lcom/byazt/sgn/x$1;

    .line 31
    .line 32
    invoke-direct {v4, p0, v0}, Lcom/byazt/sgn/x$1;-><init>(Lcom/byazt/sgn/x;Landroid/widget/FrameLayout;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/xs/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/byazt/sgn/sp$c;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/byazt/sgn/x;->uj:Lcom/byazt/sgn/sp$c;

    .line 5
    iget-object v0, p0, Lcom/byazt/sgn/x;->a:Lcom/byazt/xs/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/xs/c;->c(Lcom/byazt/sgn/sp$c;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ux/sp;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/sgn/x;->sp:Lcom/byazt/ux/sp;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/x;->uj:Lcom/byazt/sgn/sp$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/byazt/sgn/sp$c;->ve(Landroid/app/Dialog;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/byazt/vfu/sp;->tt(Landroid/app/AlertDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/sgn/x;->tt()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/sgn/x;->x:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
