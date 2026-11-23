.class public Lcom/byazt/dk/z$n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x7ea
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dk/z$n;->ve(Lcom/byazt/e/tt;)Lcom/byazt/dk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/e/tt;

.field public final synthetic tt:Lcom/byazt/dk/z$n;


# direct methods
.method public constructor <init>(Lcom/byazt/dk/z$n;Lcom/byazt/e/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/z$n$2;->tt:Lcom/byazt/dk/z$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dk/z$n$2;->c:Lcom/byazt/e/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$n$2;->c:Lcom/byazt/e/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/e/tt;->x:Lcom/byazt/e/tt$tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/e/tt$tt;->c(Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tt(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$n$2;->c:Lcom/byazt/e/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/e/tt;->x:Lcom/byazt/e/tt$tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0, p1}, Lcom/byazt/e/tt$tt;->tt(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public ve(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$n$2;->c:Lcom/byazt/e/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/e/tt;->x:Lcom/byazt/e/tt$tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/e/tt$tt;->ve(Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
