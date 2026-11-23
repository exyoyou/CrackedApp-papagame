.class public Lcom/byazt/uo/tt$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x99c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt$9;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/tt$9;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt$9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$9$1;->c:Lcom/byazt/uo/tt$9;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/tt$9$1;->c:Lcom/byazt/uo/tt$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/uo/tt$9;->c:Lcom/byazt/uo/tt;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/ete/gr$c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/ete/gr$c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/uo/tt$9$1;->c:Lcom/byazt/uo/tt$9;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/byazt/uo/tt$9;->c:Lcom/byazt/uo/tt;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
