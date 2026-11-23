.class public Lcom/byazt/r/c;
.super Lcom/byazt/s/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3bd,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/r/c$c;
    }
.end annotation


# instance fields
.field public c:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/s/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/s/t;
    .locals 2

    .line 9
    new-instance v0, Lcom/byazt/r/c$c;

    iget-object v1, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/byazt/r/c$c;-><init>(Landroid/app/AlertDialog$Builder;)V

    return-object v0
.end method

.method public c(Landroid/content/DialogInterface$OnCancelListener;)Lcom/byazt/s/u;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/byazt/s/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/s/u;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public tt(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/r/c;->c:Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method
