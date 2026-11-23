.class Lcom/airsaid/pickerviewlibrary/widget/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/widget/b;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    if-lt p1, v1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    :cond_1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    add-int/lit8 v2, v2, -0x1

    .line 116
    .line 117
    if-lt v1, v2, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    add-int/lit8 v1, v0, -0x1

    .line 142
    .line 143
    :cond_2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v2, Lh/a;

    .line 150
    .line 151
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 158
    .line 159
    invoke-static {v4}, Lcom/airsaid/pickerviewlibrary/widget/b;->e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v2, p1}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$b;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 192
    .line 193
    .line 194
    :cond_3
    return-void
.end method
