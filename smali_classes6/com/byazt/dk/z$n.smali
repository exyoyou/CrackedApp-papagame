.class public Lcom/byazt/dk/z$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/u;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x8c8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/dk/z$n;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method private ve(Lcom/byazt/e/tt;)Lcom/byazt/dk/c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/dk/c;->c()Lcom/byazt/dk/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/byazt/e/tt;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->c(Ljava/lang/String;)Lcom/byazt/dk/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/byazt/e/tt;->ve:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->tt(Ljava/lang/String;)Lcom/byazt/dk/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p1, Lcom/byazt/e/tt;->n:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->uj(Ljava/lang/String;)Lcom/byazt/dk/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/byazt/e/tt;->uj:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->ve(Ljava/lang/String;)Lcom/byazt/dk/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p1, Lcom/byazt/e/tt;->sp:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->c(Landroid/graphics/drawable/Drawable;)Lcom/byazt/dk/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/byazt/dk/z$n$2;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/byazt/dk/z$n$2;-><init>(Lcom/byazt/dk/z$n;Lcom/byazt/e/tt;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/byazt/dk/c;->c(Lcom/byazt/dk/tt;)Lcom/byazt/dk/c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/e/tt;)Landroid/app/AlertDialog;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, p1, Lcom/byazt/e/tt;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    iget-object v1, p1, Lcom/byazt/e/tt;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget v4, p1, Lcom/byazt/e/tt;->da:I

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/dk/z$n;->ve(Lcom/byazt/e/tt;)Lcom/byazt/dk/c;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/byazt/dk/uj;->c(Landroid/app/Activity;ZLcom/byazt/dk/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v1

    iget-object v4, p0, Lcom/byazt/dk/z$n;->c:Ljava/lang/ref/WeakReference;

    iget v5, p1, Lcom/byazt/e/tt;->da:I

    if-ne v5, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p0, p1}, Lcom/byazt/dk/z$n;->ve(Lcom/byazt/e/tt;)Lcom/byazt/dk/c;

    move-result-object p1

    invoke-interface {v1, v4, v2, p1}, Lcom/byazt/dk/uj;->c(Ljava/lang/ref/WeakReference;ZLcom/byazt/dk/c;)V

    :cond_4
    return-object v0
.end method

.method public c(ILandroid/content/Context;Lcom/byazt/su/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    new-instance p1, Lcom/byazt/dk/z$n$1;

    const-string p3, "tt_download_toast"

    invoke-direct {p1, p0, p3, p2, p4}, Lcom/byazt/dk/z$n$1;-><init>(Lcom/byazt/dk/z$n;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "showToastWithDuration e "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LibUIFactory"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic tt(Lcom/byazt/e/tt;)Landroid/app/Dialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/dk/z$n;->c(Lcom/byazt/e/tt;)Landroid/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
