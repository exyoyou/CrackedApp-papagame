.class public Lcom/byazt/cty/BaseLandingPageActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xab,
        0xac
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cty/BaseLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public tt:Lcom/byazt/ete/ic;

.field public uj:Ljava/lang/String;

.field public ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->c:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->ve:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->uj:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->n:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->c:Ljava/util/Map;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/byazt/pop/ve;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2, p3}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->ve:Landroid/content/Context;

    .line 33
    .line 34
    iget-object p4, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->tt:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    iget-object p5, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->uj:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p2, p1, p4, p5}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object p4, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->tt:Lcom/byazt/ete/ic;

    .line 43
    .line 44
    invoke-static {p4}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    invoke-interface {p2, p4}, Lcom/byazt/pop/ve;->c(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p4, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->n:Z

    .line 52
    .line 53
    invoke-interface {p2, p4}, Lcom/byazt/pop/ve;->uj(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p4, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->c:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$c;->tt:Lcom/byazt/ete/ic;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p2, p1, p3}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
