.class public Lcom/byazt/cj/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x43
    }
.end annotation


# instance fields
.field public a:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public c:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public da:Lcom/byazt/zd/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "pip_controller"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_tag"
    .end annotation
.end field

.field public n:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app_info"
    .end annotation
.end field

.field public volatile sl:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_click_button"
    .end annotation
.end field

.field public sp:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_downloader"
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public uj:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "deep_link"
    .end annotation
.end field

.field public ve:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public x:Lcom/byazt/pop/ve;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_adapter"
    .end annotation
.end field


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
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/cj/u;->n:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/omf/c;->tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Lcom/byazt/bb/sp;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cj/u;->tt:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/cj/u;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0, v2, p2}, Lcom/byazt/bb/sp;-><init>(Lcom/byazt/ete/n;Landroid/content/Context;Lcom/byazt/eia/sl;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/cj/u;->ve:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/byazt/bb/sp;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/byazt/bb/ve;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/cj/u;->c:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/byazt/cj/u;->ve:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v4, Lcom/byazt/ete/nu;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/cj/u;->uj:Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lcom/byazt/ete/nu;-><init>(Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Lcom/byazt/cj/u;->tt:Landroid/content/Context;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v0, p1

    .line 38
    move-object v6, p2

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/byazt/bb/ve;-><init>(Lcom/byazt/hl/c;Lcom/byazt/eia/sl;Ljava/lang/String;Lcom/byazt/ete/nu;Landroid/content/Context;Ljava/util/Map;Z)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/byazt/cj/u;->sp:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->tt(Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/byazt/cj/u;->a:Z

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->c(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/cj/u;->x:Lcom/byazt/pop/ve;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->c(Lcom/byazt/pop/ve;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/cj/u;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->c(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/cj/u;->da:Lcom/byazt/zd/tt;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->c(Lcom/byazt/zd/tt;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/byazt/cj/u;->sl:Z

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/byazt/bb/ve;->ve(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p3, p2, p1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    const/4 p1, 0x1

    .line 87
    return p1
.end method
