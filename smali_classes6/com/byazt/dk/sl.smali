.class public Lcom/byazt/dk/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x9e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/dk/sl$c;
    }
.end annotation


# direct methods
.method private static c(Landroid/app/Activity;ILcom/byazt/dk/c;)Landroid/app/AlertDialog;
    .locals 2

    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p1, p2, Lcom/byazt/dk/c;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/byazt/dk/c;->tt:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/byazt/dk/c;->ve:Ljava/lang/String;

    new-instance v1, Lcom/byazt/dk/sl$6;

    invoke-direct {v1, p2}, Lcom/byazt/dk/sl$6;-><init>(Lcom/byazt/dk/c;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/byazt/dk/c;->uj:Ljava/lang/String;

    new-instance v1, Lcom/byazt/dk/sl$5;

    invoke-direct {v1, p2}, Lcom/byazt/dk/sl$5;-><init>(Lcom/byazt/dk/c;)V

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/byazt/dk/sl$4;

    invoke-direct {v0, p2}, Lcom/byazt/dk/sl$4;-><init>(Lcom/byazt/dk/c;)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 22
    iget-object p2, p2, Lcom/byazt/dk/c;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_2

    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-object p1
.end method

.method private static c(Landroid/app/Activity;Lcom/byazt/dk/c;)Landroid/app/AlertDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/sgn/da;

    invoke-direct {v0, p0}, Lcom/byazt/sgn/da;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/byazt/dk/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p0}, Lcom/byazt/sgn/da;->c(Ljava/lang/String;)Lcom/byazt/sgn/da;

    move-result-object p0

    iget-object v0, p1, Lcom/byazt/dk/c;->tt:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->tt(Ljava/lang/String;)Lcom/byazt/sgn/da;

    move-result-object p0

    iget-object v0, p1, Lcom/byazt/dk/c;->ve:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->ve(Ljava/lang/String;)Lcom/byazt/sgn/da;

    move-result-object p0

    iget-object v0, p1, Lcom/byazt/dk/c;->uj:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->uj(Ljava/lang/String;)Lcom/byazt/sgn/da;

    move-result-object p0

    iget-object v0, p1, Lcom/byazt/dk/c;->n:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->c(Landroid/graphics/drawable/Drawable;)Lcom/byazt/sgn/da;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/sl$2;

    invoke-direct {v0, p1}, Lcom/byazt/dk/sl$2;-><init>(Lcom/byazt/dk/c;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->c(Lcom/byazt/sgn/da$c;)Lcom/byazt/sgn/da;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/sl$1;

    invoke-direct {v0, p1}, Lcom/byazt/dk/sl$1;-><init>(Lcom/byazt/dk/c;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/sgn/da;->c(Landroid/content/DialogInterface$OnCancelListener;)Lcom/byazt/sgn/da;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/app/Activity;ZLcom/byazt/dk/c;)Landroid/app/AlertDialog;
    .locals 0

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p0, p2}, Lcom/byazt/dk/sl;->c(Landroid/app/Activity;Lcom/byazt/dk/c;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-object p1

    :cond_1
    const p1, 0x1030132

    .line 15
    invoke-static {p0, p1, p2}, Lcom/byazt/dk/sl;->c(Landroid/app/Activity;ILcom/byazt/dk/c;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/ref/WeakReference;ZLcom/byazt/dk/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z",
            "Lcom/byazt/dk/c;",
            ")V"
        }
    .end annotation

    .line 9
    new-instance v6, Lcom/byazt/dk/sl$3;

    invoke-direct {v6, p2}, Lcom/byazt/dk/sl$3;-><init>(Lcom/byazt/dk/c;)V

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/byazt/dk/c;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/byazt/dk/c;->tt:Ljava/lang/String;

    iget-object v4, p2, Lcom/byazt/dk/c;->ve:Ljava/lang/String;

    iget-object v5, p2, Lcom/byazt/dk/c;->uj:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/byazt/dk/c;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/byazt/dk/c;->tt:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2, v6}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    return-void
.end method
