.class public Lcom/byazt/tl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tl/c;->c(Lcom/byazt/nc/a;Ljava/lang/String;Landroid/app/Dialog;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tl/c;


# direct methods
.method public constructor <init>(Lcom/byazt/tl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "stats_feedback_cannot_close"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const-string v3, "render_control"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "ad_info"

    .line 77
    .line 78
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/byazt/tl/c$1;->c:Lcom/byazt/tl/c;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/byazt/tl/c;->c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-string v3, "render_sequence"

    .line 92
    .line 93
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 101
    .line 102
    .line 103
    :cond_0
    return-object v0
.end method
