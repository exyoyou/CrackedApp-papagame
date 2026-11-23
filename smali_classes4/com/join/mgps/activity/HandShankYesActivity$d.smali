.class Lcom/join/mgps/activity/HandShankYesActivity$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HandShankYesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/activity/HandShankYesActivity$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankYesActivity$d;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 1
    const-string v0, "^[A-F0-9]{2}(:[A-F0-9]{2}){5}$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 4
    .line 5
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const v0, 0x7f0d0373

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 18
    .line 19
    invoke-static {p3}, Lcom/join/mgps/activity/HandShankYesActivity;->access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/join/mgps/db/tables/HandShankTable;

    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/HandShankTable;->getIsConnect()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const v0, 0x7f0a08cf

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a07e6

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a0546

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroid/widget/ImageView;

    .line 53
    .line 54
    const v0, 0x7f0806b6

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    check-cast p3, Landroid/widget/ImageView;

    .line 65
    .line 66
    const v0, 0x7f080688

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v3, 0x7f060192

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Landroid/widget/TextView;

    .line 99
    .line 100
    const-string v0, "\u5df2\u8fde\u63a5"

    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Landroid/widget/ImageView;

    .line 111
    .line 112
    const v0, 0x7f0806b5

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Landroid/widget/TextView;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const v3, 0x7f060195

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Landroid/widget/TextView;

    .line 145
    .line 146
    const-string v0, "\u672a\u8fde\u63a5"

    .line 147
    .line 148
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Landroid/widget/ImageView;

    .line 156
    .line 157
    const v0, 0x7f080685

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .line 162
    .line 163
    :goto_0
    const p3, 0x7f0a07ef

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    check-cast p3, Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/join/mgps/db/tables/HandShankTable;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object p3, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 192
    .line 193
    invoke-static {p3}, Lcom/join/mgps/activity/HandShankYesActivity;->access$200(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/4 p3, 0x2

    .line 208
    new-array p3, p3, [Ljava/lang/String;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity$d;->b:Ljava/lang/String;

    .line 211
    .line 212
    const/4 v2, 0x0

    .line 213
    aput-object v0, p3, v2

    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "device address="

    .line 221
    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const/4 v3, 0x1

    .line 233
    aput-object v0, p3, v3

    .line 234
    .line 235
    invoke-static {p3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankYesActivity$d;->a(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_2

    .line 243
    .line 244
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const/4 p3, 0x4

    .line 257
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :goto_1
    return-object p2
.end method
