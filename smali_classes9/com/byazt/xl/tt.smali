.class public Lcom/byazt/xl/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b3,
        0xd
    }
.end annotation


# instance fields
.field public a:I

.field public c:Landroid/content/Context;

.field public n:Lcom/byazt/xl/u;

.field public tt:Lcom/byazt/mt/c;

.field public uj:Lcom/byazt/xl/x;

.field public ve:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/x;Lcom/byazt/wl/c;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/byazt/xl/tt;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/x;Lcom/byazt/wl/c;Lcom/byazt/mt/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/x;Lcom/byazt/wl/c;Lcom/byazt/mt/c;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/xl/tt;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/byazt/xl/tt;->n:Lcom/byazt/xl/u;

    .line 5
    iput-object p3, p0, Lcom/byazt/xl/tt;->ve:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 6
    iput-object p6, p0, Lcom/byazt/xl/tt;->uj:Lcom/byazt/xl/x;

    if-eqz p8, :cond_0

    .line 7
    iput-object p8, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p6, Lcom/byazt/mt/c;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/mt/c;-><init>(Landroid/content/Context;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/u;Lcom/byazt/wl/c;)V

    iput-object p6, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    iget-object p2, p0, Lcom/byazt/xl/tt;->uj:Lcom/byazt/xl/x;

    invoke-virtual {p1, p2}, Lcom/byazt/mt/c;->c(Lcom/byazt/xl/x;)V

    .line 10
    instance-of p1, p5, Lcom/byazt/du/sp;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/byazt/xl/tt;->a:I

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/byazt/xl/tt;->a:I

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xl/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/xl/tt;->a:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/xl/tt;)Lcom/byazt/xl/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xl/tt;->n:Lcom/byazt/xl/u;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/xl/tt;)Lcom/byazt/mt/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/mt/c;->tt()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    invoke-virtual {v0, p1}, Lcom/byazt/mt/c;->tt(Z)V

    return-void
.end method

.method public c(Lcom/byazt/xl/da$c;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/xl/tt;->n:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v0

    iget v1, p0, Lcom/byazt/xl/tt;->a:I

    invoke-interface {v0, v1}, Lcom/byazt/xl/i;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    new-instance v1, Lcom/byazt/xl/tt$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/xl/tt$1;-><init>(Lcom/byazt/xl/tt;Lcom/byazt/xl/da$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/mt/c;->c(Lcom/byazt/xl/sp;)V

    const/4 p1, 0x1

    return p1
.end method

.method public tt()Lcom/byazt/kn/uj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/xl/tt;->tt:Lcom/byazt/mt/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/mt/c;->a()Lcom/byazt/tm/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
