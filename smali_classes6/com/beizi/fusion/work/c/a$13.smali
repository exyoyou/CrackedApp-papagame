.class Lcom/beizi/fusion/work/c/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/ad/e;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/beizi/ad/e;

.field final synthetic d:Lcom/beizi/fusion/work/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/a;IILcom/beizi/ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/work/c/a$13;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/work/c/a$13;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/fusion/work/c/a$13;->c:Lcom/beizi/ad/e;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/tool/aw;->a(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->s(Lcom/beizi/fusion/work/c/a;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/work/c/a;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;Z)Z

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v2, v0, [I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/beizi/fusion/work/c/a$13;->a:I

    .line 42
    .line 43
    div-int/2addr v3, v0

    .line 44
    iget v4, p0, Lcom/beizi/fusion/work/c/a$13;->b:I

    .line 45
    .line 46
    div-int/2addr v4, v0

    .line 47
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a$13;->c:Lcom/beizi/ad/e;

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget v5, v0, v11

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    aget v6, v0, v1

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    aget v7, v0, v11

    .line 75
    .line 76
    aget v8, v2, v11

    .line 77
    .line 78
    add-int/2addr v7, v8

    .line 79
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    aget v0, v0, v1

    .line 84
    .line 85
    aget v1, v2, v1

    .line 86
    .line 87
    add-int/2addr v0, v1

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/4 v9, 0x2

    .line 93
    new-instance v10, Lcom/beizi/fusion/work/c/a$13$1;

    .line 94
    .line 95
    invoke-direct {v10, p0}, Lcom/beizi/fusion/work/c/a$13$1;-><init>(Lcom/beizi/fusion/work/c/a$13;)V

    .line 96
    .line 97
    .line 98
    invoke-interface/range {v3 .. v10}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 102
    .line 103
    iget-boolean v1, v0, Lcom/beizi/fusion/work/c/a;->C:Z

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    iput-boolean v11, v0, Lcom/beizi/fusion/work/c/a;->C:Z

    .line 112
    .line 113
    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v1, v0, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$13;->d:Lcom/beizi/fusion/work/c/a;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_0
    return-void
.end method
