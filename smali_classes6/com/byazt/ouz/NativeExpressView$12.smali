.class public Lcom/byazt/ouz/NativeExpressView$12;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x52c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/NativeExpressView;->a(Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/n;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/ouz/NativeExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressView;Ljava/lang/String;Lcom/byazt/ete/n;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView$12;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView$12;->c:Lcom/byazt/ete/n;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView$12;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$12;->c:Lcom/byazt/ete/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView$12;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-interface {v1, v2, v0}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ete/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/byazt/ouz/NativeExpressView$12$1;

    .line 20
    .line 21
    const-string v2, "pl_udlf"

    .line 22
    .line 23
    invoke-direct {v1, p0, v2, v0}, Lcom/byazt/ouz/NativeExpressView$12$1;-><init>(Lcom/byazt/ouz/NativeExpressView$12;Ljava/lang/String;Lcom/byazt/ete/uj;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
