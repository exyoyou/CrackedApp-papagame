.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;
.super Lp6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickSpan"
.end annotation


# instance fields
.field clickStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "str"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lp6/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, ":"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    array-length v0, p1

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    aget-object v0, p1, v3

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    aget-object v0, p1, v3

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    mul-int/lit8 v0, v0, 0x3c

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    aget-object v1, p1, v2

    .line 48
    .line 49
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    aget-object p1, p1, v2

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 66
    .line 67
    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-interface {v1, p1}, Lcom/join/mgps/callbacks/i;->onHide(Landroidx/fragment/app/Fragment;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 77
    .line 78
    add-int/2addr v0, v3

    .line 79
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/i;->onTimeClick(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    array-length v0, p1

    .line 84
    const/4 v4, 0x3

    .line 85
    if-ne v0, v4, :cond_6

    .line 86
    .line 87
    aget-object v0, p1, v3

    .line 88
    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    aget-object v0, p1, v3

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    mul-int/lit16 v0, v0, 0xe10

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v0, 0x0

    .line 109
    :goto_1
    aget-object v4, p1, v2

    .line 110
    .line 111
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    aget-object v2, p1, v2

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    mul-int/lit8 v2, v2, 0x3c

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v2, 0x0

    .line 131
    :goto_2
    aget-object v4, p1, v1

    .line 132
    .line 133
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    aget-object p1, p1, v1

    .line 140
    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 150
    .line 151
    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    invoke-interface {v1, p1}, Lcom/join/mgps/callbacks/i;->onHide(Landroidx/fragment/app/Fragment;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 161
    .line 162
    add-int/2addr v0, v2

    .line 163
    add-int/2addr v0, v3

    .line 164
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/i;->onTimeClick(I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_3
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 1
    const-string v0, "#00000000"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
