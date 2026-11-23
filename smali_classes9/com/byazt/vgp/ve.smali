.class public Lcom/byazt/vgp/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b1,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/zb/x;

.field public tt:Lcom/byazt/zb/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/el/SSWebView;Lcom/byazt/zb/ve;Lcom/byazt/zb/c;Ljava/util/Set;Lcom/byazt/zb/x$c;)Lcom/byazt/zb/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/el/SSWebView;",
            "Lcom/byazt/zb/ve;",
            "Lcom/byazt/zb/c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/byazt/zb/x$c;",
            ")",
            "Lcom/byazt/zb/x;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vgp/ve;->c:Lcom/byazt/zb/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-static/range {v1 .. v7}, Lcom/byazt/zb/x;->c(Landroid/content/Context;Lcom/byazt/nl/uj;Lcom/byazt/zb/ve;Lcom/byazt/zb/c;Ljava/util/Set;Lcom/byazt/zb/x$c;Z)Lcom/byazt/zb/x;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/byazt/vgp/ve;->c:Lcom/byazt/zb/x;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Lcom/byazt/zb/x;->uj(Z)Lcom/byazt/zb/x;

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object p4, p0, Lcom/byazt/vgp/ve;->tt:Lcom/byazt/zb/c;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/byazt/vgp/ve;->c:Lcom/byazt/zb/x;

    .line 25
    .line 26
    return-object p1
.end method
