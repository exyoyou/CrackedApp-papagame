.class public Lcom/byazt/pro/EffectView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x17b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/EffectView;->c(Lorg/json/JSONObject;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic ve:Lcom/byazt/pro/EffectView;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/EffectView;Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/EffectView$3;->ve:Lcom/byazt/pro/EffectView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/pro/EffectView$3;->c:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/pro/EffectView$3;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/EffectView$3;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jlk/tt;->c(Landroid/view/View;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/byazt/pro/EffectView$3;->ve:Lcom/byazt/pro/EffectView;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/byazt/pro/EffectView;->ve:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/pro/EffectView$3;->tt:Lorg/json/JSONObject;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/byazt/jlk/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;Z)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/byazt/atv/tt$c;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/byazt/atv/tt$c;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/byazt/xl/u$c;->c(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/byazt/ouz/gt;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/byazt/ouz/gt;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/byazt/atv/tt$c;->c(Lcom/byazt/sz/qy;)Lcom/byazt/atv/tt$c;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/pro/EffectView$3;->c:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lcom/byazt/pro/EffectView$3;->c:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {v1, v0}, Lcom/byazt/atv/tt$c;->tt(F)Lcom/byazt/atv/tt$c;

    .line 50
    .line 51
    .line 52
    int-to-float v0, v2

    .line 53
    invoke-virtual {v1, v0}, Lcom/byazt/atv/tt$c;->c(F)Lcom/byazt/atv/tt$c;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/byazt/omf/x;->uj()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {v1, v0}, Lcom/byazt/xl/u$c;->c(Z)Lcom/byazt/xl/u$c;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/pro/EffectView$3;->ve:Lcom/byazt/pro/EffectView;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/byazt/pro/EffectView;->ve:Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {v1, v0}, Lcom/byazt/xl/u$c;->da(I)Lcom/byazt/xl/u$c;

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-virtual {v1, v0}, Lcom/byazt/atv/tt$c;->sl(I)Lcom/byazt/atv/tt$c;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/byazt/atv/tt$c;->tt()Lcom/byazt/atv/tt;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/byazt/atv/sp;

    .line 87
    .line 88
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/byazt/pro/EffectView$3;->ve:Lcom/byazt/pro/EffectView;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/byazt/pro/EffectView;->ve:Lcom/byazt/ete/ic;

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/byazt/atv/sp;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/byazt/pro/EffectView$3$1;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/byazt/pro/EffectView$3$1;-><init>(Lcom/byazt/pro/EffectView$3;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/x;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/byazt/pro/EffectView$3$2;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/byazt/pro/EffectView$3$2;-><init>(Lcom/byazt/pro/EffectView$3;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/x;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/byazt/pro/EffectView$3$3;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/byazt/pro/EffectView$3$3;-><init>(Lcom/byazt/pro/EffectView$3;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/sp;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
