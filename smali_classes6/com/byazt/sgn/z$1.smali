.class public Lcom/byazt/sgn/z$1;
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
        0x1e8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/z;->c(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/z;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/z$1;->c:Lcom/byazt/sgn/z;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/sgn/z$1;->c:Lcom/byazt/sgn/z;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/sgn/z;->c(Lcom/byazt/sgn/z;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/sgn/z$1;->c:Lcom/byazt/sgn/z;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/byazt/sgn/z;->tt(Lcom/byazt/sgn/z;)Lcom/byazt/un/tt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/sgn/z$1;->c:Lcom/byazt/sgn/z;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/sgn/z;->tt(Lcom/byazt/sgn/z;)Lcom/byazt/un/tt;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/byazt/sgn/z$c;->ve:Lcom/byazt/sgn/z$c;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/byazt/un/tt;->c(Lcom/byazt/sgn/z$c;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
