.class public Lcom/byazt/sgn/ve;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/ve$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public c:Landroid/content/Context;

.field public d:Landroid/view/View;

.field public da:Lcom/byazt/ff/TTRatingBar2;

.field public eo:Lcom/byazt/sgn/ve$c;

.field public gr:Ljava/lang/String;

.field public gt:Ljava/lang/String;

.field public gu:Ljava/lang/String;

.field public h:Landroid/widget/RelativeLayout;

.field public i:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/TextView;

.field public md:F

.field public my:Ljava/lang/String;

.field public n:Landroid/widget/TextView;

.field public nu:Landroid/widget/Button;

.field public p:Lorg/json/JSONArray;

.field public qy:Ljava/lang/String;

.field public rh:Lcom/byazt/si/tt;

.field public rl:Ljava/lang/String;

.field public sl:Landroid/widget/TextView;

.field public sp:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public tt:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroid/widget/TextView;

.field public uj:Lcom/byazt/ff/TTRoundRectImageView;

.field public ve:Landroid/widget/ImageView;

.field public x:Landroid/widget/LinearLayout;

.field public yp:Landroid/widget/TextView;

.field public yv:Ljava/lang/String;

.field public z:Landroid/widget/TextView;

.field public zb:Ljava/lang/String;

.field public zm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 5
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    .line 6
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 8
    iget-object v4, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 9
    iget-object v4, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 10
    iget-object v4, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 11
    iget-object v4, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 12
    new-instance v1, Lcom/byazt/vfu/ve;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/byazt/vfu/ve;-><init>(I)V

    const/high16 v4, -0x1000000

    .line 13
    invoke-virtual {v1, v4}, Lcom/byazt/vfu/ve;->c(I)V

    .line 14
    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/byazt/vfu/ve;->c(F)V

    .line 15
    iget-object v4, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0xf

    .line 20
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x4

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    const-string v2, "#161823"

    .line 22
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v2, "\u5e94\u7528\u8be6\u60c5"

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    iget-object v1, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/byazt/sgn/ve;->c(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Landroid/view/View;
    .locals 7

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/sgn/ve;->tt(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42200000    # 40.0f

    if-nez p1, :cond_0

    .line 12
    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->a()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x3

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    .line 16
    :goto_0
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 17
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v5, 0x1

    .line 18
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    new-instance v2, Lcom/byazt/ff/TTRoundRectImageView;

    iget-object v6, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/byazt/ff/TTRoundRectImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    .line 22
    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v2, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 23
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_1

    .line 25
    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v3, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 27
    :goto_1
    iget-object v3, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 28
    iget-object v3, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 29
    iget-object v3, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 30
    iget-object v3, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 31
    iget-object v2, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v2, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    invoke-direct {p0, p1, v0, v1, v4}, Lcom/byazt/sgn/ve;->c(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 4

    .line 240
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "#E8E8E8"

    .line 244
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 245
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 246
    iget-object p1, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private c(ILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 8

    if-nez p1, :cond_0

    .line 153
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    .line 154
    iget-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 155
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 157
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 158
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 159
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 160
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0xa

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x15

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iget-object v2, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    iget-object v2, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 167
    iget-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 168
    iget-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 169
    iget-object v1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 170
    new-instance v1, Lcom/byazt/vfu/tt;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/byazt/vfu/tt;-><init>(I)V

    const-string v0, "#66161823"

    .line 171
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/vfu/tt;->c(I)V

    .line 172
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 173
    invoke-virtual {v1, v0}, Lcom/byazt/vfu/tt;->c(F)V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 174
    new-instance v1, Lcom/byazt/vfu/ve;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/byazt/vfu/ve;-><init>(I)V

    const/4 v2, -0x1

    .line 175
    invoke-virtual {v1, v2}, Lcom/byazt/vfu/ve;->c(I)V

    .line 176
    invoke-virtual {v1, v0}, Lcom/byazt/vfu/ve;->c(F)V

    const/4 v0, 0x1

    aput-object v1, p1, v0

    .line 177
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    .line 178
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 179
    iget-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    const/4 v3, 0x1

    move v4, v7

    move v5, v7

    move v6, v7

    .line 180
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 181
    iget-object p1, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object p1, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method private c(ILandroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;
    .locals 9

    .line 62
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hg()I

    move-result v0

    .line 63
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->jg()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 64
    new-instance v0, Lcom/byazt/sgn/ShakeButton;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/sgn/ShakeButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 65
    new-instance v0, Lcom/byazt/sgn/ShineButton;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/sgn/ShineButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 68
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setId(I)V

    .line 70
    new-instance v8, Landroid/view/View;

    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setId(I)V

    .line 72
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    if-ne p1, v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/byazt/sgn/ve;->c(ILandroid/view/ViewGroup;)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v1, 0x42b20000    # 89.0f

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/byazt/sgn/ve;->c(II)V

    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    .line 76
    invoke-direct/range {v3 .. v8}, Lcom/byazt/sgn/ve;->c(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private c(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 7

    .line 77
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 80
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 81
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    .line 83
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 84
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 85
    :goto_0
    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 86
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 87
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    const-string v6, "#4D161823"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_1

    .line 89
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    :goto_1
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 95
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne p1, v3, :cond_2

    .line 96
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 98
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_2
    if-ne p1, v3, :cond_3

    .line 99
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    :cond_3
    const/16 v1, 0xc

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/byazt/sgn/ve;->tt(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private c(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;I)Landroid/widget/LinearLayout;
    .locals 8

    .line 118
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->n()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    iput p6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 122
    iput p6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 123
    iget-object v2, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    const-string v3, "#66161823"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 127
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    const-string v7, "\u9690\u79c1"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/byazt/sgn/ve;->gr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->n()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    new-instance v0, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    iput p6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 136
    iput p6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 137
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {p6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {p6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p6, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p6

    iget p6, p6, Landroid/content/res/Configuration;->orientation:I

    if-ne p6, v6, :cond_1

    .line 141
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {p6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    :goto_1
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    const-string v0, "\u5907\u6848"

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p6, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    :cond_2
    iget-object p6, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p6, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez p1, :cond_3

    return-object p2

    .line 146
    :cond_3
    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p6, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p6, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p6

    const/4 v0, -0x1

    invoke-direct {p4, v0, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-object p6, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {p6, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p6

    iput p6, p4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 148
    iget-object p6, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {p6}, Landroid/view/View;->getId()I

    move-result p6

    invoke-virtual {p4, v6, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    invoke-virtual {p5, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p4, "#E8E8E8"

    .line 150
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p5, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    iget-object p4, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    invoke-direct {p0, p3, p1}, Lcom/byazt/sgn/ve;->c(II)V

    return-object p2
.end method

.method private c(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;
    .locals 7

    .line 34
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x31

    .line 36
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41600000    # 14.0f

    if-nez p1, :cond_0

    .line 37
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 39
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 40
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    const-string v3, "#161823"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 48
    iget-object v0, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    .line 50
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53
    iget-object v1, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 56
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/sgn/ve;->tt(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/sgn/ve;)Lcom/byazt/sgn/ve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/ve;->eo:Lcom/byazt/sgn/ve$c;

    return-object p0
.end method

.method private c(II)V
    .locals 5

    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 203
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 205
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 209
    iget-object v1, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v3, "#F93F3F"

    .line 211
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 212
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 213
    iget-object v3, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    const-string v3, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 217
    iget-object v3, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    iget-object v0, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-ne p2, p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/byazt/sgn/ve;->yv:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 224
    new-instance p2, Lcom/byazt/si/tt;

    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/byazt/si/tt;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "src"

    .line 225
    iget-object v1, p0, Lcom/byazt/sgn/ve;->yv:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "loop"

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "autoPlay"

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "height"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    const-string v0, "scaleType"

    const-string v1, "fitXY"

    invoke-virtual {p2, v0, v1}, Lcom/byazt/si/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 232
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    iget-object p1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    iget-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v0, 0x42920000    # 73.0f

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 235
    iget-object p1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    neg-int p1, p1

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 236
    iget-object p1, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object p1, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/ga/LottieAnimationView;

    if-nez p1, :cond_1

    return-void

    .line 238
    :cond_1
    iget-object p2, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    invoke-virtual {p2}, Lcom/byazt/si/tt;->tt()V

    .line 239
    iget-object p2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private c(ILandroid/view/ViewGroup;)V
    .locals 3

    .line 183
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-ne p1, v0, :cond_0

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v1, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 188
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 189
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 190
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    iget-object v1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x800003

    .line 194
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    iget-object v1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    iget-object v0, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const-string v1, "#57161823"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    :goto_1
    iget-object p1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 106
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 109
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 110
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 112
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    const-string v0, "#66161823"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object p2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 114
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    :goto_0
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    const-string v0, "\u529f\u80fd"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p2, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/ve;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/sgn/ve;->ve(I)V

    return-void
.end method

.method private n()Landroid/widget/ImageView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 3
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#D8D8D8"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private sp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/ve;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/byazt/sgn/ve;->d:Landroid/view/View;

    new-instance v2, Lcom/byazt/sgn/ve$7;

    invoke-direct {v2, p0, v0}, Lcom/byazt/sgn/ve$7;-><init>(Lcom/byazt/sgn/ve;I)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tt(I)Landroid/widget/LinearLayout;
    .locals 6

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#99000000"

    .line 60
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 63
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    const v5, 0x3ec28f5c    # 0.38f

    .line 65
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 70
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    const v3, 0x3f1eb852    # 0.62f

    .line 71
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x1

    .line 72
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 74
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75
    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v2, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 76
    iget-object v2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v1, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/byazt/sgn/ve;->c(ILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private tt(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 9

    const/high16 v0, 0x41000000    # 8.0f

    if-nez p1, :cond_0

    .line 31
    invoke-direct {p0, p1, p4}, Lcom/byazt/sgn/ve;->c(ILandroid/view/ViewGroup;)V

    .line 32
    iget-object v1, p0, Lcom/byazt/sgn/ve;->gu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x11

    .line 36
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "#D8D8D8"

    .line 38
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v8

    .line 41
    invoke-direct {p0, p4, v8}, Lcom/byazt/sgn/ve;->c(Landroid/widget/LinearLayout;I)V

    .line 42
    invoke-direct {p0, p4, v8}, Lcom/byazt/sgn/ve;->tt(Landroid/widget/LinearLayout;I)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 43
    invoke-direct/range {v2 .. v8}, Lcom/byazt/sgn/ve;->c(ILandroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/view/View;I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private tt(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object v3, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    .line 9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 11
    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41800000    # 16.0f

    if-nez p1, :cond_0

    .line 12
    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 13
    :cond_0
    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    new-instance v0, Lcom/byazt/ff/TTRatingBar2;

    iget-object v3, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/byazt/ff/TTRatingBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    .line 17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 18
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    iget-object v4, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    .line 22
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 24
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 25
    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 26
    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    const-string v2, "#161823"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v0, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    invoke-direct {p0, p1, p2, p4}, Lcom/byazt/sgn/ve;->c(ILandroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method private tt(Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->n()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 48
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 49
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    const-string v0, "#66161823"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 53
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    :goto_0
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    const-string v0, "\u6743\u9650"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p2, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ve(I)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v1, :cond_4

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    if-ne v2, v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    :cond_5
    iget-object v0, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_6

    .line 18
    iget-object v2, p0, Lcom/byazt/sgn/ve;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 6
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 10
    iget-object v1, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 15
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v2, 0x42540000    # 53.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 17
    iget-object v1, p0, Lcom/byazt/sgn/ve;->rh:Lcom/byazt/si/tt;

    invoke-virtual {v1, v0}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/byazt/sgn/ve;->gu:Ljava/lang/String;

    return-object p0
.end method

.method public c(F)Lcom/byazt/sgn/ve;
    .locals 0

    .line 249
    iput p1, p0, Lcom/byazt/sgn/ve;->md:F

    return-object p0
.end method

.method public c(Lcom/byazt/sgn/ve$c;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/byazt/sgn/ve;->eo:Lcom/byazt/sgn/ve$c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/byazt/sgn/ve;->my:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONArray;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/byazt/sgn/ve;->p:Lorg/json/JSONArray;

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/byazt/sgn/ve;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/ve;->d:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/byazt/sgn/ve;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/ve;->d:Landroid/view/View;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/ve;->zb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/sgn/ve;->qy:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/ve;->eo:Lcom/byazt/sgn/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/byazt/sgn/ve$c;->ve(Landroid/app/Dialog;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/byazt/vfu/sp;->tt(Landroid/app/AlertDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/byazt/sgn/ve;->c()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/byazt/sgn/ve;->tt()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/sgn/ve;->ve()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/sgn/ve;->gr:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/byazt/sgn/ve;->gt:Ljava/lang/String;

    return-object p0
.end method

.method public tt()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 83
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/byazt/sgn/ve;->tt:Ljava/util/Stack;

    iget-object v1, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-direct {p0}, Lcom/byazt/sgn/ve;->sp()V

    .line 89
    iget-object v0, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/sgn/ve$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$1;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/sgn/ve;->gr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/sgn/ve$2;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$2;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/sgn/ve$3;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$3;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/byazt/sgn/ve;->ve:Landroid/widget/ImageView;

    new-instance v1, Lcom/byazt/sgn/ve$4;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$4;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/sgn/ve$5;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$5;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/byazt/sgn/ve;->nu:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/ve$6;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/ve$6;-><init>(Lcom/byazt/sgn/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/ve;->rl:Ljava/lang/String;

    return-object p0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/sgn/ve;->zb:Ljava/lang/String;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/byazt/sgn/ve;->yv:Ljava/lang/String;

    return-object p0
.end method

.method public ve()V
    .locals 12

    .line 19
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 22
    iget-object v1, p0, Lcom/byazt/sgn/ve;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 23
    iget-object v3, p0, Lcom/byazt/sgn/ve;->my:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/byazt/sgn/ve;->gt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/byazt/sgn/ve;->gt:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    invoke-interface {v1, v3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    goto :goto_1

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/byazt/sgn/ve;->uj:Lcom/byazt/ff/TTRoundRectImageView;

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, Lcom/byazt/sgn/ve;->rl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    iget-object v1, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 33
    :cond_5
    iget-object v1, p0, Lcom/byazt/sgn/ve;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/byazt/sgn/ve;->rl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_f

    .line 35
    iget-object v1, p0, Lcom/byazt/sgn/ve;->p:Lorg/json/JSONArray;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_7

    goto/16 :goto_8

    .line 36
    :cond_7
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_8

    .line 37
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_a

    .line 38
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 39
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v5, v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    int-to-float v5, v5

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    int-to-double v5, v1

    const-wide v7, 0x3fd851eb851eb852L    # 0.38

    mul-double v7, v7, v5

    sub-double/2addr v5, v7

    double-to-int v1, v5

    add-int/lit8 v1, v1, -0x50

    goto :goto_4

    .line 41
    :cond_9
    iget-object v1, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    int-to-float v5, v5

    invoke-static {v1, v5}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x24

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 42
    :goto_4
    iget-object v5, p0, Lcom/byazt/sgn/ve;->p:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_b

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/byazt/sgn/ve;->p:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v6, :cond_f

    .line 43
    iget-object v7, p0, Lcom/byazt/sgn/ve;->p:Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 45
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41400000    # 12.0f

    .line 47
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v9, "#161823"

    .line 48
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x3f400000    # 0.75f

    .line 49
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    const-string v9, "#0F161823"

    .line 50
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    iget-object v9, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v9, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    .line 52
    invoke-virtual {v8, v9, v4, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iget-object v10, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v10, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v10

    .line 55
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 56
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 59
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 60
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v7, v4, v11, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 62
    iget-object v9, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v9, v7}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    sub-int/2addr v1, v7

    if-ltz v1, :cond_c

    .line 63
    iget-object v7, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 64
    :cond_c
    iget-object v1, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_f

    .line 65
    iget-object v1, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 66
    :cond_e
    :goto_8
    iget-object v1, p0, Lcom/byazt/sgn/ve;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_f
    :goto_9
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 68
    iget v1, p0, Lcom/byazt/sgn/ve;->md:F

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_11

    .line 69
    iget-object v1, p0, Lcom/byazt/sgn/ve;->i:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_10
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_11
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v5, v1, v2

    if-lez v5, :cond_12

    const/high16 v1, 0x40a00000    # 5.0f

    .line 73
    :cond_12
    iput v1, p0, Lcom/byazt/sgn/ve;->md:F

    .line 74
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, ".0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/byazt/sgn/ve;->sl:Landroid/widget/TextView;

    iget v5, p0, Lcom/byazt/sgn/ve;->md:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    iget v2, p0, Lcom/byazt/sgn/ve;->md:F

    float-to-double v5, v2

    invoke-virtual {v1, v5, v6}, Lcom/byazt/ff/TTRatingBar2;->setRating(D)V

    .line 77
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v2, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/byazt/ff/TTRatingBar2;->c(II)V

    .line 78
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    iget-object v2, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/byazt/ff/TTRatingBar2;->c(IIII)V

    .line 79
    iget-object v1, p0, Lcom/byazt/sgn/ve;->da:Lcom/byazt/ff/TTRatingBar2;

    invoke-virtual {v1}, Lcom/byazt/ff/TTRatingBar2;->c()V

    .line 80
    :cond_13
    :goto_a
    iget-object v1, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    .line 81
    iget-object v1, p0, Lcom/byazt/sgn/ve;->qy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "\u7248\u672c\u53f7\uff1a%1$s"

    if-eqz v1, :cond_14

    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "\u6682\u65e0"

    aput-object v6, v1, v4

    .line 82
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_14
    new-array v1, v3, [Ljava/lang/Object;

    .line 83
    iget-object v6, p0, Lcom/byazt/sgn/ve;->qy:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    if-ne v0, v2, :cond_1a

    .line 84
    iget-object v5, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v4, v7, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    iget-object v5, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/byazt/aas/pf;->i(Landroid/content/Context;)I

    move-result v5

    int-to-double v7, v5

    const-wide v9, 0x3fd999999999999aL    # 0.4

    mul-double v9, v9, v7

    sub-double/2addr v7, v9

    double-to-int v5, v7

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/byazt/sgn/ve;->c:Landroid/content/Context;

    const/high16 v8, 0x42d40000    # 106.0f

    invoke-static {v7, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v5, v7

    .line 89
    iget-object v7, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    if-eqz v7, :cond_15

    .line 90
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 91
    iget-object v8, p0, Lcom/byazt/sgn/ve;->yp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 93
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    .line 94
    :cond_15
    iget-object v7, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    if-eqz v7, :cond_16

    .line 95
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 96
    iget-object v8, p0, Lcom/byazt/sgn/ve;->sp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    .line 99
    :cond_16
    iget-object v7, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    if-eqz v7, :cond_17

    .line 100
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 101
    iget-object v8, p0, Lcom/byazt/sgn/ve;->m:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    .line 104
    :cond_17
    iget-object v7, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/byazt/sgn/ve;->gr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 105
    iget-object v7, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 106
    iget-object v8, p0, Lcom/byazt/sgn/ve;->z:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x0

    goto :goto_c

    :cond_18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 108
    :goto_c
    invoke-virtual {v7, v8, v4, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    :cond_19
    if-gtz v5, :cond_1a

    .line 110
    iget-object v5, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 111
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_1a
    if-ne v0, v3, :cond_1c

    .line 112
    iget-object v5, p0, Lcom/byazt/sgn/ve;->t:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1b
    const-string v1, ""

    .line 113
    :cond_1c
    :goto_d
    iget-object v5, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    if-eqz v5, :cond_1f

    .line 114
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 115
    iget-object v5, p0, Lcom/byazt/sgn/ve;->zm:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "\u5f00\u53d1\u8005\uff1a%1$s"

    if-eqz v5, :cond_1d

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    aput-object v5, v3, v4

    .line 116
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_1d
    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    iget-object v5, p0, Lcom/byazt/sgn/ve;->zm:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_e
    if-ne v0, v2, :cond_1e

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_1e
    iget-object v0, p0, Lcom/byazt/sgn/ve;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/sgn/ve;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/byazt/sgn/ve;->zm:Ljava/lang/String;

    return-object p0
.end method
