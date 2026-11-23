.class public Lcom/byazt/apd/EcMallWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62c,
        0x885
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/apd/EcMallWebView;->c(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/apd/EcMallWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/apd/EcMallWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/apd/EcMallWebView$2;->tt:Lcom/byazt/apd/EcMallWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/apd/EcMallWebView$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/byazt/apd/EcMallWebView$2;->tt:Lcom/byazt/apd/EcMallWebView;

    invoke-static {p1}, Lcom/byazt/apd/EcMallWebView;->c(Lcom/byazt/apd/EcMallWebView;)Lcom/byazt/ete/ic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/apd/EcMallWebView$2;->tt:Lcom/byazt/apd/EcMallWebView;

    .line 4
    invoke-static {p1}, Lcom/byazt/apd/EcMallWebView;->c(Lcom/byazt/apd/EcMallWebView;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/byazt/ocd/tt;

    invoke-static {p1, v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ocd/tt;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/byazt/ocd/tt;->c(ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "EcMallWebView"

    const-string v0, "onSendReward failed meta null"

    .line 6
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/apd/EcMallWebView$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/apd/EcMallWebView$2;->tt:Lcom/byazt/apd/EcMallWebView;

    .line 8
    invoke-static {v0}, Lcom/byazt/apd/EcMallWebView;->c(Lcom/byazt/apd/EcMallWebView;)Lcom/byazt/ete/ic;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method
