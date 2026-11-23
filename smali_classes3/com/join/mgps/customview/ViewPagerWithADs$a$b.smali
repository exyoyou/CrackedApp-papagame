.class Lcom/join/mgps/customview/ViewPagerWithADs$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:J

.field private c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->b:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x1f4

    .line 20
    .line 21
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-gez p1, :cond_2

    .line 24
    .line 25
    iget p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->c:I

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sub-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 p2, 0x41f00000    # 30.0f

    .line 38
    .line 39
    cmpg-float p1, p1, p2

    .line 40
    .line 41
    if-gez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs;->b(Lcom/join/mgps/customview/ViewPagerWithADs;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:I

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    rem-int/2addr v1, v2

    .line 81
    add-int/2addr v1, v0

    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ""

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, p2, v1}, Lcom/papa/sim/statistic/t;->u0(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:I

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    rem-int/2addr p2, v1

    .line 130
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p2, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->e:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    float-to-int p1, p1

    .line 174
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->c:I

    .line 175
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    iput-wide p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->b:J

    .line 181
    .line 182
    :goto_0
    return v0
.end method
