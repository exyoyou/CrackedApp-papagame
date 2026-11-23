.class public Lcom/byazt/nk/my;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nk/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0x91
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/nk/sp<",
        "Lcom/byazt/oq/WriggleGuideAnimationView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:I

.field public n:Lcom/byazt/aq/sp;

.field public sp:Lcom/byazt/aq/da;

.field public tt:Lcom/byazt/oq/WriggleGuideAnimationView;

.field public uj:Lcom/byazt/tm/DynamicBaseWidget;

.field public ve:Landroid/content/Context;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Lcom/byazt/aq/da;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/nk/my;->ve:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/nk/my;->uj:Lcom/byazt/tm/DynamicBaseWidget;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/nk/my;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/nk/my;->sp:Lcom/byazt/aq/da;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/byazt/nk/my;->x:Z

    .line 15
    .line 16
    iput p7, p0, Lcom/byazt/nk/my;->c:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/byazt/nk/my;->n()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nk/my;)Lcom/byazt/oq/WriggleGuideAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    return-object p0
.end method

.method private n()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->lr()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/nk/my;->uj:Lcom/byazt/tm/DynamicBaseWidget;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/tm/DynamicBaseWidget;->getDynamicClickListener()Lcom/byazt/wl/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "convertActionType"

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/byazt/wl/c;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    nop

    .line 29
    :goto_0
    const-string v2, "18"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/byazt/nk/my;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    new-instance v2, Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/byazt/nk/my;->ve:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/byazt/xc/tt;->i(Landroid/content/Context;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v6, p0, Lcom/byazt/nk/my;->sp:Lcom/byazt/aq/da;

    .line 48
    .line 49
    iget-boolean v7, p0, Lcom/byazt/nk/my;->x:Z

    .line 50
    .line 51
    iget v8, p0, Lcom/byazt/nk/my;->c:I

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    invoke-direct/range {v3 .. v8}, Lcom/byazt/oq/WriggleGuideAnimationView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/byazt/aq/da;ZI)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->getWriggleLayout()Landroid/widget/LinearLayout;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->getWriggleLayout()Landroid/widget/LinearLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v3, v1

    .line 72
    check-cast v3, Landroid/view/View$OnClickListener;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->getTopTextView()Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->r()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    iget-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->getTopTextView()Landroid/widget/TextView;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "\u626d\u52a8\u624b\u673a \u6216 \u70b9\u51fb\u56fe\u6807"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->getTopTextView()Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/byazt/aq/sp;->r()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    new-instance v2, Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 126
    .line 127
    iget-object v5, p0, Lcom/byazt/nk/my;->ve:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v5}, Lcom/byazt/xc/tt;->i(Landroid/content/Context;)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iget-object v7, p0, Lcom/byazt/nk/my;->sp:Lcom/byazt/aq/da;

    .line 134
    .line 135
    iget-boolean v8, p0, Lcom/byazt/nk/my;->x:Z

    .line 136
    .line 137
    iget v9, p0, Lcom/byazt/nk/my;->c:I

    .line 138
    .line 139
    move-object v4, v2

    .line 140
    invoke-direct/range {v4 .. v9}, Lcom/byazt/oq/WriggleGuideAnimationView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/byazt/aq/da;ZI)V

    .line 141
    .line 142
    .line 143
    iput-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 144
    .line 145
    :cond_3
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    .line 147
    const/4 v3, -0x2

    .line 148
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    const/16 v3, 0x51

    .line 152
    .line 153
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    .line 155
    iget-object v3, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/byazt/nk/my;->ve:Landroid/content/Context;

    .line 158
    .line 159
    int-to-float v0, v0

    .line 160
    invoke-static {v4, v0}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    float-to-int v0, v0

    .line 165
    neg-int v0, v0

    .line 166
    int-to-float v0, v0

    .line 167
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 176
    .line 177
    iget-object v2, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->lt()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v2}, Lcom/byazt/oq/WriggleGuideAnimationView;->setShakeText(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/byazt/oq/WriggleGuideAnimationView;->getWriggleProgressIv()Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v2, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 199
    .line 200
    new-instance v3, Lcom/byazt/nk/my$1;

    .line 201
    .line 202
    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/nk/my$1;-><init>(Lcom/byazt/nk/my;Landroid/view/View;Lcom/byazt/wl/c;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Lcom/byazt/oq/WriggleGuideAnimationView;->setOnShakeViewListener(Lcom/byazt/oq/WriggleGuideAnimationView$c;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/nk/my;)Lcom/byazt/aq/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nk/my;->n:Lcom/byazt/aq/sp;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    invoke-virtual {v0}, Lcom/byazt/oq/WriggleGuideAnimationView;->c()V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public uj()Lcom/byazt/oq/WriggleGuideAnimationView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/my;->tt:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic ve()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nk/my;->uj()Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
