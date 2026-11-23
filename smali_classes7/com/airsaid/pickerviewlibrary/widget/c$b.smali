.class Lcom/airsaid/pickerviewlibrary/widget/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/airsaid/pickerviewlibrary/widget/c;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Lh/b;

    .line 22
    .line 23
    const/16 v2, 0x1f

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lh/b;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Lh/b;

    .line 52
    .line 53
    const/16 v2, 0x1e

    .line 54
    .line 55
    invoke-direct {v1, v0, v2}, Lh/b;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr p1, v1

    .line 79
    rem-int/lit8 p1, p1, 0x4

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr p1, v1

    .line 100
    rem-int/lit8 p1, p1, 0x64

    .line 101
    .line 102
    if-nez p1, :cond_3

    .line 103
    .line 104
    :cond_2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr p1, v1

    .line 121
    rem-int/lit16 p1, p1, 0x190

    .line 122
    .line 123
    if-nez p1, :cond_4

    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v1, Lh/b;

    .line 132
    .line 133
    const/16 v2, 0x1d

    .line 134
    .line 135
    invoke-direct {v1, v0, v2}, Lh/b;-><init>(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v1, Lh/b;

    .line 149
    .line 150
    const/16 v2, 0x1c

    .line 151
    .line 152
    invoke-direct {v1, v0, v2}, Lh/b;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    sub-int/2addr v2, v0

    .line 169
    if-le p1, v2, :cond_5

    .line 170
    .line 171
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$b;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void
.end method
