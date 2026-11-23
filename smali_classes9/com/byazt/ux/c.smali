.class public abstract Lcom/byazt/ux/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/sl;
.implements Lcom/byazt/ux/uj;
.implements Lcom/byazt/ux/ve;
.implements Lcom/byazt/ux/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ux/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/qj/c;

.field public c:Lcom/byazt/seg/c;

.field public da:Ljava/util/concurrent/atomic/AtomicInteger;

.field public gr:Lcom/byazt/ux/a;

.field public gt:Lcom/byazt/ux/c$c;

.field public gu:Z

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public my:Lcom/byazt/ux/tt;

.field public n:Lcom/byazt/ete/ic;

.field public nu:I

.field public qy:Z

.field public rh:I

.field public rl:Ljava/util/concurrent/atomic/AtomicInteger;

.field public sl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public tt:Landroid/content/Context;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/ddx/sp;

.field public ve:Landroid/view/ViewGroup;

.field public x:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Lorg/json/JSONObject;

.field public yv:Z

.field public z:I

.field public zm:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ux/c;->qy:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/ux/c;->gu:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/byazt/ux/c;->ve:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/byazt/ux/c;->t:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/byazt/ux/c;->c:Lcom/byazt/seg/c;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    .line 46
    .line 47
    new-instance p1, Lcom/byazt/ux/a;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    .line 52
    .line 53
    move-object v0, p1

    .line 54
    move-object v3, p4

    .line 55
    move-object v4, p5

    .line 56
    move v5, p6

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ux/a;-><init>(Landroid/content/Context;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/uj;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/ve;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ts()Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object p1, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/x;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ux/c;)Lcom/byazt/ux/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    return-object p0
.end method

.method private c(Lcom/byazt/ete/ic;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "device_info_new"

    .line 63
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    .line 64
    invoke-interface {v0}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result v0

    .line 65
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v1

    .line 66
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result v2

    .line 67
    new-instance v4, Lcom/byazt/ete/i$c;

    invoke-direct {v4}, Lcom/byazt/ete/i$c;-><init>()V

    const/high16 v5, -0x40800000    # -1.0f

    .line 68
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 70
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    const-wide/16 v5, -0x1

    .line 72
    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    move-result-object v4

    const/4 v5, -0x1

    .line 74
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    move-result-object v4

    const/16 v5, -0x400

    .line 76
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 77
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/omf/x;->tt()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v2

    const-string v0, "click"

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v5, p2

    .line 83
    invoke-static/range {v0 .. v8}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ux/c;Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/ux/c;->tt(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    return-void
.end method

.method private m()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x41900000    # 18.0f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    .line 19
    .line 20
    const-string v1, "#99000000"

    .line 21
    .line 22
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/byazt/oq/GifView;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/byazt/oq/GifView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "shop_page_guide_gif.gif"

    .line 46
    .line 47
    invoke-static {v1}, Lcom/byazt/fh/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-interface {v1, v2}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    invoke-interface {v1, v2}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lcom/byazt/ux/c$5;

    .line 67
    .line 68
    invoke-direct {v2, p0, v0}, Lcom/byazt/ux/c$5;-><init>(Lcom/byazt/ux/c;Lcom/byazt/oq/GifView;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 75
    .line 76
    const/high16 v2, 0x42f00000    # 120.0f

    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .line 84
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x11

    .line 88
    .line 89
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    .line 91
    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 92
    .line 93
    const/high16 v4, 0x41200000    # 10.0f

    .line 94
    .line 95
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "\u9700\u8981\u6d4f\u89c8\u9875\u9762\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const/high16 v2, 0x41600000    # 14.0f

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    .line 125
    .line 126
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 130
    .line 131
    .line 132
    const-string v2, "#ffffff"

    .line 133
    .line 134
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    .line 143
    const/4 v3, -0x2

    .line 144
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    .line 149
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 150
    .line 151
    const/high16 v3, 0x428c0000    # 70.0f

    .line 152
    .line 153
    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 168
    .line 169
    new-instance v1, Lcom/byazt/lo/ve;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 172
    .line 173
    new-instance v3, Lcom/byazt/ux/c$6;

    .line 174
    .line 175
    invoke-direct {v3, p0}, Lcom/byazt/ux/c$6;-><init>(Lcom/byazt/ux/c;)V

    .line 176
    .line 177
    .line 178
    const/16 v4, 0xc8

    .line 179
    .line 180
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/lo/ve;-><init>(Landroid/content/Context;Lcom/byazt/lo/ve$c;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 187
    .line 188
    new-instance v1, Lcom/byazt/ux/c$7;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/byazt/ux/c$7;-><init>(Lcom/byazt/ux/c;)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v2, 0xbb8

    .line 194
    .line 195
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 199
    .line 200
    return-object v0
.end method

.method private tt(Lcom/byazt/ete/ic;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/byazt/lo/c;->tt()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {v0}, Lcom/byazt/ete/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/yp;->ve()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/yp;->ve()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/yp;)V

    :cond_1
    return-void
.end method

.method private tt(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v1

    .line 5
    new-instance v2, Lcom/byazt/hkv/c;

    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 6
    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {v2, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/vis/c;

    invoke-virtual {v1}, Lcom/byazt/vis/c;->n()Ljava/util/Map;

    move-result-object v1

    const-string v3, "click_element_type"

    .line 7
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/byazt/ux/c;->u:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/byazt/yih/x;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object p1

    .line 12
    const-class v0, Lcom/byazt/nat/c;

    invoke-virtual {v2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 13
    new-instance v0, Lcom/byazt/ete/da;

    invoke-direct {v0}, Lcom/byazt/ete/da;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Lcom/byazt/ux/c$3;

    invoke-direct {v0, p0, p2}, Lcom/byazt/ux/c$3;-><init>(Lcom/byazt/ux/c;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    instance-of p2, p1, Lcom/byazt/fh/tt;

    if-eqz p2, :cond_2

    .line 16
    check-cast p1, Lcom/byazt/fh/tt;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/byazt/fh/tt;->c(I)V

    :cond_2
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ux/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ux/c;->yv:Z

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/ux/c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->zm:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ux/c;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ux/c;->m()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/ic;

    .line 14
    new-instance v2, Lcom/byazt/pj/ve;

    invoke-direct {v2}, Lcom/byazt/pj/ve;-><init>()V

    .line 15
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v3, "voice_btn_position"

    .line 16
    iget-object v4, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v4}, Lcom/byazt/ete/my;->nu(Lcom/byazt/ete/ic;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v3, -0x7f3a9fd0

    .line 17
    invoke-virtual {v2, v3}, Lcom/byazt/pj/ve;->c(I)V

    .line 18
    invoke-virtual {v2, v1}, Lcom/byazt/pj/ve;->c(Lorg/json/JSONObject;)V

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V
    .locals 5

    .line 20
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mute"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->id()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 23
    instance-of v0, p1, Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_1

    .line 24
    check-cast p1, Lcom/byazt/qzm/tt;

    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->x()Z

    move-result v0

    const/16 v3, 0x140

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Lcom/byazt/qzm/tt;->uj(Z)V

    .line 26
    instance-of p1, p2, Lcom/byazt/vn/tt;

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    new-instance v0, Lcom/byazt/ux/c$9;

    invoke-direct {v0, p0, p2}, Lcom/byazt/ux/c$9;-><init>(Lcom/byazt/ux/c;Lcom/byazt/xj/ve;)V

    const-string p2, "tt_unmute"

    invoke-static {p1, p2, v0, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p1, v2}, Lcom/byazt/qzm/tt;->uj(Z)V

    .line 29
    instance-of p1, p2, Lcom/byazt/vn/tt;

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    new-instance v0, Lcom/byazt/ux/c$10;

    invoke-direct {v0, p0, p2}, Lcom/byazt/ux/c$10;-><init>(Lcom/byazt/ux/c;Lcom/byazt/xj/ve;)V

    const-string p2, "tt_mute"

    invoke-static {p1, p2, v0, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    :cond_1
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/ux/c;->qy:Z

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/ux/c;->u:Ljava/util/Map;

    invoke-direct {p0, v0, v3}, Lcom/byazt/ux/c;->c(Lcom/byazt/ete/ic;Ljava/util/Map;)V

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/byazt/ux/c;->t:Ljava/lang/String;

    const-string v3, "ugeno_coin_eCommerce_click_content"

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 35
    iget-object v0, p0, Lcom/byazt/ux/c;->t:Ljava/lang/String;

    const-string v3, "page_click"

    invoke-static {p1, v0, v3, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 36
    iput-boolean v1, p0, Lcom/byazt/ux/c;->qy:Z

    .line 37
    :cond_4
    invoke-direct {p0, p1}, Lcom/byazt/ux/c;->tt(Lcom/byazt/ete/ic;)V

    .line 38
    instance-of v0, p0, Lcom/byazt/lo/uj;

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {p1, v2}, Lcom/byazt/ete/ic;->sl(I)V

    .line 40
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_5

    .line 41
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/seg/c;)V

    .line 42
    :cond_5
    invoke-static {p1, v2}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/eia/i;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    new-instance v0, Lcom/byazt/wdw/ve;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->my()Lcom/byazt/ete/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/byazt/wdw/ve;-><init>(Lcom/byazt/eia/i;Lcom/byazt/ete/yp;Landroid/content/Context;Ljava/util/Map;)V

    .line 44
    new-instance v1, Lcom/byazt/ux/c$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ux/c$11;-><init>(Lcom/byazt/ux/c;Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    invoke-virtual {v0, v1}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve$tt;)V

    .line 45
    new-instance p1, Lcom/byazt/ux/c$2;

    invoke-direct {p1, p0}, Lcom/byazt/ux/c$2;-><init>(Lcom/byazt/ux/c;)V

    invoke-virtual {v0, p1}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve$c;)I

    return-void

    .line 46
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/byazt/ux/c;->tt(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/qj/c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    return-void
.end method

.method public c(Lcom/byazt/ux/c$c;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/byazt/ux/c;->gt:Lcom/byazt/ux/c$c;

    return-void
.end method

.method public c(Lcom/byazt/ux/tt;)V
    .locals 1

    .line 7
    iput-object p1, p0, Lcom/byazt/ux/c;->my:Lcom/byazt/ux/tt;

    .line 8
    iget-object v0, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 2

    .line 10
    new-instance v0, Lcom/byazt/ux/c$8;

    const-string v1, "shop_page"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/ux/c$8;-><init>(Lcom/byazt/ux/c;Ljava/lang/String;Lcom/byazt/xj/ve;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/byazt/ux/c;->u:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "is_slide"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 52
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/pf/c;->uj()V

    .line 53
    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/byazt/aas/cu;->c(I)V

    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    iget-boolean v4, p0, Lcom/byazt/ux/c;->gu:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 56
    :cond_3
    iget-object v4, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "timestamp"

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    invoke-static {p1, v0, v3, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->tt()V

    .line 5
    iget-object v0, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    invoke-virtual {v0, p0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ouz/sl;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ux/c;->gr:Lcom/byazt/ux/a;

    new-instance v1, Lcom/byazt/ux/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/ux/c$4;-><init>(Lcom/byazt/ux/c;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/ux/a;->c(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V

    return-void
.end method

.method public abstract sl()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation
.end method

.method public t()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/ux/c;->sl()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ux/c;->c:Lcom/byazt/seg/c;

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/ux/c$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/byazt/ux/c$1;-><init>(Lcom/byazt/ux/c;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/ux/n;->c(Lcom/byazt/seg/c;Lcom/byazt/ux/n$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, -0x3

    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, v2}, Lcom/byazt/qj/c;->c(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/xj/ve;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ts()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->tt(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/ux/c;->yv:Z

    return-void
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "interactionWebView"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_0
    return v1
.end method

.method public yp()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ux/c;->m:I

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ux/c;->z:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/byazt/ux/c;->nu:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/byazt/ux/c;->nu:I

    .line 12
    .line 13
    sub-int v1, v0, v1

    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x0

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
