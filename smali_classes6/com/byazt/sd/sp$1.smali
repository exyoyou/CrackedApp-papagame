.class public Lcom/byazt/sd/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/u;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sd/sp;->c(Landroid/content/Context;)Lcom/byazt/s/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Landroid/content/DialogInterface$OnCancelListener;

.field public final synthetic c:Landroid/content/Context;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic tt:Lcom/byazt/sd/sp;

.field public uj:Landroid/content/DialogInterface$OnClickListener;

.field public ve:Lcom/byazt/e/tt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/sd/sp;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sd/sp$1;->tt:Lcom/byazt/sd/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sd/sp$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/byazt/e/tt$c;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/byazt/e/tt$c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sd/sp$1;->uj:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sd/sp$1;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sd/sp$1;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/s/t;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    new-instance v1, Lcom/byazt/sd/sp$1$1;

    invoke-direct {v1, p0}, Lcom/byazt/sd/sp$1$1;-><init>(Lcom/byazt/sd/sp$1;)V

    invoke-virtual {v0, v1}, Lcom/byazt/e/tt$c;->c(Lcom/byazt/e/tt$tt;)Lcom/byazt/e/tt$c;

    .line 9
    invoke-static {}, Lcom/byazt/sd/sp;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThemedAlertDlgBuilder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/e/tt$c;->c(I)Lcom/byazt/e/tt$c;

    .line 11
    invoke-static {}, Lcom/byazt/gq/t;->ve()Lcom/byazt/ou/u;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    invoke-virtual {v1}, Lcom/byazt/e/tt$c;->c()Lcom/byazt/e/tt;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/ou/u;->tt(Lcom/byazt/e/tt;)Landroid/app/Dialog;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/byazt/sd/sp$c;

    invoke-direct {v1, v0}, Lcom/byazt/sd/sp$c;-><init>(Landroid/app/Dialog;)V

    return-object v1
.end method

.method public c(Landroid/content/DialogInterface$OnCancelListener;)Lcom/byazt/s/u;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/sd/sp$1;->a:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/byazt/s/u;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/byazt/e/tt$c;->c(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/byazt/e/tt$c;->ve(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    .line 5
    iput-object p2, p0, Lcom/byazt/sd/sp$1;->uj:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/s/u;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    invoke-virtual {v0, p1}, Lcom/byazt/e/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/s/u;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    invoke-virtual {v0, p1}, Lcom/byazt/e/tt$c;->c(Z)Lcom/byazt/e/tt$c;

    return-object p0
.end method

.method public tt(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/sd/sp$1;->ve:Lcom/byazt/e/tt$c;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/byazt/e/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    .line 3
    iput-object p2, p0, Lcom/byazt/sd/sp$1;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
