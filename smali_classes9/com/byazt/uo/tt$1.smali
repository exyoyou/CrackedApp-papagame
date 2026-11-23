.class public Lcom/byazt/uo/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/uo/SlideInterceptView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/uo/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$1;->c:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ouz/n;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/tt$1;->c:Lcom/byazt/uo/tt;

    invoke-static {v0}, Lcom/byazt/uo/tt;->tt(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/n;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/gr;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/tt$1;->c:Lcom/byazt/uo/tt;

    invoke-static {v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/tt$1;->c:Lcom/byazt/uo/tt;

    invoke-static {v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/tt$1;->c:Lcom/byazt/uo/tt;

    invoke-virtual {p1}, Lcom/byazt/uo/tt;->a()V

    return-void
.end method
