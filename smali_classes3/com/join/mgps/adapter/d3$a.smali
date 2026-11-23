.class public Lcom/join/mgps/adapter/d3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/LinearLayout;

.field final synthetic g:Lcom/join/mgps/adapter/d3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/d3;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "mView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->g:Lcom/join/mgps/adapter/d3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1bcd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->a:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a1bc3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->b:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a1bc6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->d:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a1bc7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->c:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a0e04

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->e:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const p1, 0x7f0a0727

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/adapter/d3$a;->f:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/AccountVoucherGameBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mBean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\uffe5"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_money()D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->b:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_title()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->d:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/adapter/d3$a;->g:Lcom/join/mgps/adapter/d3;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/join/mgps/adapter/d3;->a(Lcom/join/mgps/adapter/d3;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x7f120558

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_type()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eq v0, v1, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eq v0, v1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->a:Landroid/widget/TextView;

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->c:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->d:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->c:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/adapter/d3$a;->g:Lcom/join/mgps/adapter/d3;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/join/mgps/adapter/d3;->a(Lcom/join/mgps/adapter/d3;)Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const v4, 0x7f120562

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_surplus()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    aput-object v4, v1, v2

    .line 112
    .line 113
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->d:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/adapter/d3$a;->g:Lcom/join/mgps/adapter/d3;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/join/mgps/adapter/d3;->a(Lcom/join/mgps/adapter/d3;)Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/high16 v3, 0x41700000    # 15.0f

    .line 129
    .line 130
    invoke-static {v1, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->d:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->a:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/d3$a;->f:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    new-instance v1, Lcom/join/mgps/adapter/d3$a$a;

    .line 150
    .line 151
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/d3$a$a;-><init>(Lcom/join/mgps/adapter/d3$a;Lcom/join/mgps/dto/AccountVoucherGameBean;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    return-void
.end method
