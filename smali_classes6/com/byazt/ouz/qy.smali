.class public Lcom/byazt/ouz/qy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x6e
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:D

.field public i:Lcom/byazt/ouz/NativeExpressView;

.field public n:Ljava/lang/String;

.field public sp:Z

.field public tt:I

.field public uj:I

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ete/m;",
            ">;"
        }
    .end annotation
.end field

.field public x:I


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/ouz/qy;->uj:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ouz/qy;->x:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/byazt/ouz/qy;->sp:Z

    .line 11
    .line 12
    iput-object p3, p0, Lcom/byazt/ouz/qy;->i:Lcom/byazt/ouz/NativeExpressView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/byazt/ouz/qy;->x:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string p3, "slide_threshold"

    .line 24
    .line 25
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p0, Lcom/byazt/ouz/qy;->c:D

    .line 32
    .line 33
    const-string p3, "direction"

    .line 34
    .line 35
    const/16 v1, 0x1e

    .line 36
    .line 37
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    iput p3, p0, Lcom/byazt/ouz/qy;->tt:I

    .line 42
    .line 43
    const-string p3, "type"

    .line 44
    .line 45
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iput p3, p0, Lcom/byazt/ouz/qy;->uj:I

    .line 50
    .line 51
    const-string p3, "rgb_color"

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    iput-object p3, p0, Lcom/byazt/ouz/qy;->n:Ljava/lang/String;

    .line 58
    .line 59
    const-string p3, "rects"

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    new-instance p3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, Lcom/byazt/ouz/qy;->ve:Ljava/util/List;

    .line 73
    .line 74
    const/4 p3, 0x0

    .line 75
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ge p3, v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    invoke-static {v0}, Lcom/byazt/ete/m;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/m;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    iget-object v1, p0, Lcom/byazt/ouz/qy;->ve:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/byazt/ouz/qy;->ve:Ljava/util/List;

    .line 102
    .line 103
    if-nez p2, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p3, "priority:"

    .line 113
    .line 114
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget p3, p0, Lcom/byazt/ouz/qy;->x:I

    .line 118
    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p3, " dirction:"

    .line 123
    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget p3, p0, Lcom/byazt/ouz/qy;->tt:I

    .line 128
    .line 129
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p3, " type:"

    .line 133
    .line 134
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget p3, p0, Lcom/byazt/ouz/qy;->uj:I

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p3, " hold:"

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v0, p0, Lcom/byazt/ouz/qy;->c:D

    .line 148
    .line 149
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p3, " size:"

    .line 153
    .line 154
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string p2, "xdy"

    .line 165
    .line 166
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public c(Landroid/view/MotionEvent;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/byazt/ouz/qy;->i:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/v;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/byazt/ouz/qy;->i:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/v;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ouz/NativeExpressView;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/qy;->ve:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/qy;->ve:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/m;

    .line 4
    new-instance v9, Lcom/byazt/ete/v;

    iget v4, p0, Lcom/byazt/ouz/qy;->uj:I

    iget-wide v5, p0, Lcom/byazt/ouz/qy;->c:D

    iget v7, p0, Lcom/byazt/ouz/qy;->tt:I

    iget v8, p0, Lcom/byazt/ouz/qy;->x:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/byazt/ete/v;-><init>(IDII)V

    .line 5
    new-instance v3, Lcom/byazt/ouz/SiteGestureView;

    invoke-direct {v3, v0, v9, p0}, Lcom/byazt/ouz/SiteGestureView;-><init>(Landroid/content/Context;Lcom/byazt/ete/v;Lcom/byazt/ouz/qy;)V

    .line 6
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-wide v5, v2, Lcom/byazt/ete/m;->ve:D

    double-to-float v5, v5

    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iget-wide v6, v2, Lcom/byazt/ete/m;->uj:D

    double-to-float v6, v6

    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-wide v5, v2, Lcom/byazt/ete/m;->c:D

    double-to-float v5, v5

    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 8
    iget-wide v5, v2, Lcom/byazt/ete/m;->tt:D

    double-to-float v5, v5

    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    :try_start_0
    iget-object v5, p0, Lcom/byazt/ouz/qy;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    iget-object v5, p0, Lcom/byazt/ouz/qy;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 11
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    :cond_0
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/byazt/ete/m;->c:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/byazt/ete/m;->tt:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/byazt/ete/m;->ve:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/byazt/ete/m;->uj:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xdy"

    invoke-static {v3, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/byazt/ouz/qy;->a:Ljava/util/List;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/qy;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/qy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/xj/ve;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/qy;->i:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->gt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/qy;->sp:Z

    .line 3
    .line 4
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ouz/qy;->sp:Z

    .line 2
    .line 3
    return v0
.end method
