.class public final Lcom/byazt/dk/sl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sgn/da$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x594
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dk/sl;->c(Landroid/app/Activity;Lcom/byazt/dk/c;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dk/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dk/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/sl$2;->c:Lcom/byazt/dk/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/sl$2;->c:Lcom/byazt/dk/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dk/c;->a:Lcom/byazt/dk/tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/dk/tt;->c(Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tt(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/sl$2;->c:Lcom/byazt/dk/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dk/c;->a:Lcom/byazt/dk/tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/dk/tt;->tt(Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
