.class public Lcom/byazt/zk/a;
.super Lcom/byazt/zk/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zk/a$c;
    }
.end annotation


# instance fields
.field public final da:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/widget/LinearLayout$LayoutParams;

.field public m:I

.field public my:Lcom/byazt/ga/i$tt;

.field public nu:I

.field public rh:Landroid/graphics/Camera;

.field public final sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public u:Lcom/byazt/zk/a$c;

.field public x:Landroid/widget/LinearLayout;

.field public yp:Landroid/text/SpannableStringBuilder;

.field public z:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/zk/sp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    .line 6
    const/4 p2, -0x2

    .line 7
    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/zk/a;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/zk/a;->da:Ljava/util/List;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/zk/a;->sl:Ljava/util/List;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/byazt/ga/i;->ve()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-lez p2, :cond_3

    .line 41
    .line 42
    new-instance p2, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lcom/byazt/ga/i$ve;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/byazt/ga/i$ve;->da:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/byazt/zk/a;->tt(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x50

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/byazt/zk/a;->z()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v9, 0x0

    .line 87
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ge v9, v2, :cond_2

    .line 92
    .line 93
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v10, v2

    .line 98
    check-cast v10, Lcom/byazt/ga/i$ve;

    .line 99
    .line 100
    new-instance v11, Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-direct {v11, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ge v9, v2, :cond_0

    .line 112
    .line 113
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    const-string v2, ""

    .line 121
    .line 122
    :goto_1
    move-object v5, v2

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    add-int/lit8 v7, v2, -0x1

    .line 128
    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v8, v2

    .line 134
    check-cast v8, Lcom/byazt/ga/i$ve;

    .line 135
    .line 136
    move-object v2, p0

    .line 137
    move-object v3, v11

    .line 138
    move-object v4, v10

    .line 139
    move v6, v9

    .line 140
    invoke-direct/range {v2 .. v8}, Lcom/byazt/zk/a;->c(Landroid/widget/TextView;Lcom/byazt/ga/i$ve;Ljava/lang/String;IILcom/byazt/ga/i$ve;)V

    .line 141
    .line 142
    .line 143
    iget v2, v10, Lcom/byazt/ga/i$ve;->i:I

    .line 144
    .line 145
    if-eqz v2, :cond_1

    .line 146
    .line 147
    iget-object v3, p0, Lcom/byazt/zk/a;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .line 149
    int-to-float v2, v2

    .line 150
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    mul-float v2, v2, v4

    .line 155
    .line 156
    float-to-int v2, v2

    .line 157
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 158
    .line 159
    iget-object v2, p0, Lcom/byazt/zk/a;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    .line 161
    invoke-virtual {p2, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_1
    invoke-virtual {p2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iget-object p2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/byazt/ga/i;->c()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    int-to-float p2, p2

    .line 182
    mul-float p2, p2, p1

    .line 183
    .line 184
    float-to-int p2, p2

    .line 185
    iput p2, p0, Lcom/byazt/zk/a;->m:I

    .line 186
    .line 187
    iget-object p2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/byazt/ga/i;->tt()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    int-to-float p2, p2

    .line 194
    mul-float p2, p2, p1

    .line 195
    .line 196
    float-to-int p1, p2

    .line 197
    iput p1, p0, Lcom/byazt/zk/a;->nu:I

    .line 198
    .line 199
    iget-object p2, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    iget p3, p0, Lcom/byazt/zk/a;->m:I

    .line 202
    .line 203
    invoke-static {p2, p3, p1}, Lcom/byazt/zk/a;->c(Landroid/view/View;II)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/byazt/ga/i;->sl()Lcom/byazt/ga/i$tt;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    .line 213
    .line 214
    if-eqz p1, :cond_3

    .line 215
    .line 216
    new-instance p1, Landroid/graphics/Camera;

    .line 217
    .line 218
    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    .line 222
    .line 223
    :cond_3
    return-void
.end method

.method private static c(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 55
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 56
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private c(Landroid/widget/TextView;Lcom/byazt/ga/i$ve;Ljava/lang/String;IILcom/byazt/ga/i$ve;)V
    .locals 6

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->ve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->ve:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    :cond_3
    iget v0, p2, Lcom/byazt/ga/i$ve;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 11
    invoke-virtual {p1, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_2
    const/16 v0, 0x11

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    iget v0, p2, Lcom/byazt/ga/i$ve;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->sp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/byazt/zk/ve;->tt:Lcom/byazt/ga/x;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    :try_start_0
    iget-object v1, p2, Lcom/byazt/ga/i$ve;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/ga/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    int-to-float v0, v0

    .line 20
    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 22
    :cond_5
    :goto_3
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->sl:Lcom/byazt/ga/i$ve$c;

    const/16 v1, 0x21

    if-eqz v0, :cond_8

    iget v4, v0, Lcom/byazt/ga/i$ve$c;->c:I

    if-lez v4, :cond_8

    iget-object v0, v0, Lcom/byazt/ga/i$ve$c;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_6

    .line 24
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    if-nez v0, :cond_7

    .line 26
    new-instance v0, Lcom/byazt/zk/a$c;

    invoke-direct {v0}, Lcom/byazt/zk/a$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    iget-object v4, p2, Lcom/byazt/ga/i$ve;->sl:Lcom/byazt/ga/i$ve$c;

    iget-object v4, v4, Lcom/byazt/ga/i$ve$c;->tt:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/byazt/zk/a$c;->c(Lcom/byazt/zk/a$c;I)I

    .line 28
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    iget-object v4, p2, Lcom/byazt/ga/i$ve;->sl:Lcom/byazt/ga/i$ve$c;

    iget v4, v4, Lcom/byazt/ga/i$ve$c;->c:I

    int-to-float v4, v4

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v5

    mul-float v4, v4, v5

    invoke-static {v0, v4}, Lcom/byazt/zk/a$c;->c(Lcom/byazt/zk/a$c;F)F

    .line 29
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 30
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 31
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33
    iget-object v0, p0, Lcom/byazt/zk/a;->yp:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_8
    iget-object v0, p2, Lcom/byazt/ga/i$ve;->t:Lcom/byazt/ga/i$ve$c;

    if-eqz v0, :cond_b

    iget v4, v0, Lcom/byazt/ga/i$ve$c;->c:I

    if-lez v4, :cond_b

    iget-object v0, v0, Lcom/byazt/ga/i$ve$c;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    iget-object v0, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_9

    .line 36
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    if-nez v0, :cond_a

    .line 38
    new-instance v0, Lcom/byazt/zk/a$c;

    invoke-direct {v0}, Lcom/byazt/zk/a$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    iget-object v4, p2, Lcom/byazt/ga/i$ve;->t:Lcom/byazt/ga/i$ve$c;

    iget-object v4, v4, Lcom/byazt/ga/i$ve$c;->tt:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/byazt/zk/a$c;->tt(Lcom/byazt/zk/a$c;I)I

    .line 40
    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    iget-object p2, p2, Lcom/byazt/ga/i$ve;->t:Lcom/byazt/ga/i$ve$c;

    iget p2, p2, Lcom/byazt/ga/i$ve$c;->c:I

    int-to-float p2, p2

    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result v4

    mul-float p2, p2, v4

    invoke-static {v0, p2}, Lcom/byazt/zk/a$c;->tt(Lcom/byazt/zk/a$c;F)F

    .line 41
    iget-object p2, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 42
    iget-object p2, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 43
    iget-object p2, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44
    iget-object p2, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/byazt/zk/a;->u:Lcom/byazt/zk/a$c;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v0, v2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    iget-object p2, p0, Lcom/byazt/zk/a;->z:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_b
    iget p2, p6, Lcom/byazt/ga/i$ve;->yp:I

    if-lez p2, :cond_e

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    iget p2, p6, Lcom/byazt/ga/i$ve;->u:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_c

    if-nez p4, :cond_c

    .line 49
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    :cond_c
    iget p2, p6, Lcom/byazt/ga/i$ve;->u:I

    if-ne p2, v3, :cond_d

    if-nez p4, :cond_d

    .line 51
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    :cond_d
    iget p2, p6, Lcom/byazt/ga/i$ve;->u:I

    if-nez p2, :cond_e

    if-ne p4, p5, :cond_e

    .line 53
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_e
    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private ve(F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/i;->ve()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_6

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/byazt/ga/i$ve;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/byazt/ga/i$ve;->da:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/byazt/zk/a;->tt(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gtz v1, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    .line 53
    .line 54
    const/16 v3, 0x50

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eq v3, v4, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/byazt/zk/a;->z()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/byazt/zk/a;->sl:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-ge v4, v5, :cond_3

    .line 90
    .line 91
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    move-object v7, v5

    .line 96
    check-cast v7, Lcom/byazt/ga/i$ve;

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    move-object v6, v5

    .line 103
    check-cast v6, Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/byazt/zk/a;->sl:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-ge v4, v5, :cond_2

    .line 117
    .line 118
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const-string v5, ""

    .line 126
    .line 127
    :goto_1
    move-object v8, v5

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    add-int/lit8 v10, v5, -0x1

    .line 133
    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    move-object v11, v5

    .line 139
    check-cast v11, Lcom/byazt/ga/i$ve;

    .line 140
    .line 141
    move-object v5, p0

    .line 142
    move v9, v4

    .line 143
    invoke-direct/range {v5 .. v11}, Lcom/byazt/zk/a;->c(Landroid/widget/TextView;Lcom/byazt/ga/i$ve;Ljava/lang/String;IILcom/byazt/ga/i$ve;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-ge v2, v3, :cond_5

    .line 157
    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Lcom/byazt/ga/i$ve;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/byazt/zk/a;->sl:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 176
    .line 177
    .line 178
    iget v3, v3, Lcom/byazt/ga/i$ve;->i:I

    .line 179
    .line 180
    if-eqz v3, :cond_4

    .line 181
    .line 182
    iget-object v5, p0, Lcom/byazt/zk/a;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    int-to-float v3, v3

    .line 185
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    mul-float v3, v3, v6

    .line 190
    .line 191
    float-to-int v3, v3

    .line 192
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 193
    .line 194
    iget-object v3, p0, Lcom/byazt/zk/a;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    .line 196
    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    iget v0, p0, Lcom/byazt/zk/a;->m:I

    .line 219
    .line 220
    iget v1, p0, Lcom/byazt/zk/a;->nu:I

    .line 221
    .line 222
    invoke-static {p1, v0, v1}, Lcom/byazt/zk/a;->c(Landroid/view/View;II)V

    .line 223
    .line 224
    .line 225
    :cond_6
    return-void
.end method

.method private z()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/zk/ve;->tt:Lcom/byazt/ga/x;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/byazt/ga/i;->uj()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/byazt/zk/a;->t:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/byazt/ga/i;->ve()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_9

    .line 47
    .line 48
    iget-object v4, p0, Lcom/byazt/zk/a;->t:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/byazt/ga/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_9

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Lcom/byazt/zk/a;->da:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ge v2, v5, :cond_8

    .line 82
    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcom/byazt/ga/i$ve;

    .line 88
    .line 89
    iget v6, v5, Lcom/byazt/ga/i$ve;->c:I

    .line 90
    .line 91
    iget v5, v5, Lcom/byazt/ga/i$ve;->tt:I

    .line 92
    .line 93
    if-gez v6, :cond_4

    .line 94
    .line 95
    add-int/2addr v6, v0

    .line 96
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    :cond_4
    if-gez v5, :cond_5

    .line 101
    .line 102
    add-int/2addr v5, v0

    .line 103
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :cond_5
    add-int v7, v6, v5

    .line 108
    .line 109
    if-le v7, v0, :cond_6

    .line 110
    .line 111
    iget-object v5, p0, Lcom/byazt/zk/a;->da:Ljava/util/List;

    .line 112
    .line 113
    const-string v6, ""

    .line 114
    .line 115
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    const/4 v8, 0x1

    .line 124
    if-ne v7, v8, :cond_7

    .line 125
    .line 126
    if-nez v6, :cond_7

    .line 127
    .line 128
    if-nez v5, :cond_7

    .line 129
    .line 130
    move v5, v0

    .line 131
    :cond_7
    iget-object v7, p0, Lcom/byazt/zk/a;->da:Ljava/util/List;

    .line 132
    .line 133
    add-int/2addr v5, v6

    .line 134
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/byazt/zk/a;->da:Ljava/util/List;

    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_9
    :goto_2
    return-object v1
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/byazt/zk/a;->t:Ljava/lang/String;

    return-void
.end method

.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/byazt/zk/ve;->c(I)V

    .line 11
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->x()F

    move-result p2

    .line 12
    invoke-direct {p0, p2}, Lcom/byazt/zk/a;->ve(F)V

    .line 13
    iget-object p2, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    iget p3, p2, Lcom/byazt/ga/i$tt;->c:I

    if-nez p3, :cond_0

    iget p3, p2, Lcom/byazt/ga/i$tt;->tt:I

    if-nez p3, :cond_0

    iget p2, p2, Lcom/byazt/ga/i$tt;->ve:I

    if-eqz p2, :cond_7

    .line 14
    :cond_0
    iget p2, p0, Lcom/byazt/zk/a;->m:I

    shr-int/lit8 p2, p2, 0x1

    .line 15
    iget p3, p0, Lcom/byazt/zk/a;->nu:I

    shr-int/lit8 p3, p3, 0x1

    .line 16
    iget-object v0, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v1, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p3, v0

    :cond_1
    int-to-float v0, p2

    int-to-float v1, p3

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget-object v0, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    iget v1, v0, Lcom/byazt/ga/i$tt;->c:I

    if-nez v1, :cond_2

    iget v0, v0, Lcom/byazt/ga/i$tt;->tt:I

    if-eqz v0, :cond_5

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 25
    iget-object v0, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    iget v0, v0, Lcom/byazt/ga/i$tt;->c:I

    if-eqz v0, :cond_3

    .line 26
    iget-object v1, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    iget v0, v0, Lcom/byazt/ga/i$tt;->tt:I

    if-eqz v0, :cond_4

    .line 28
    iget-object v1, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 30
    iget-object v0, p0, Lcom/byazt/zk/a;->rh:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/byazt/zk/a;->my:Lcom/byazt/ga/i$tt;

    iget v0, v0, Lcom/byazt/ga/i$tt;->ve:I

    if-eqz v0, :cond_6

    int-to-float v0, v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_6
    neg-int p2, p2

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    :cond_7
    iget-object p2, p0, Lcom/byazt/zk/a;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 36
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zk/sp;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
