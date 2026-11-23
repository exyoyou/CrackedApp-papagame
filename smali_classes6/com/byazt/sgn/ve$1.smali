.class public Lcom/byazt/sgn/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/ve;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/ve$1;->c:Lcom/byazt/sgn/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/sgn/ve$1;->c:Lcom/byazt/sgn/ve;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/sgn/ve;->c(Lcom/byazt/sgn/ve;)Lcom/byazt/sgn/ve$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/sgn/ve$1;->c:Lcom/byazt/sgn/ve;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/sgn/ve;->c(Lcom/byazt/sgn/ve;)Lcom/byazt/sgn/ve$c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/byazt/sgn/ve$1;->c:Lcom/byazt/sgn/ve;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/byazt/sgn/ve$c;->n(Landroid/app/Dialog;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
