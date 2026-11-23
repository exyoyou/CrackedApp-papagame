.class public Lcom/papa91/view/AutoSaveSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSaveSlot$MyClickListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field countDown:Lcom/papa91/view/CountDownView;

.field countDownBtn:Landroid/view/View;

.field dialog:Lcom/papa91/view/AutoSlotDialog;

.field handler:Landroid/os/Handler;

.field layout:Landroid/widget/FrameLayout;

.field private final parent:Landroid/view/View;

.field private ugcPath:Ljava/lang/String;

.field private vipLevel:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->parent:Landroid/view/View;

    .line 14
    .line 15
    new-instance v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v0, Lcom/papa91/mix/R$layout;->layout_auto_save:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    sget p2, Lcom/papa91/mix/R$id;->countDown:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/papa91/view/CountDownView;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->countDown:Lcom/papa91/view/CountDownView;

    .line 54
    .line 55
    sget p2, Lcom/papa91/mix/R$id;->countDownBtn:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDownBtn:Landroid/view/View;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDown:Lcom/papa91/view/CountDownView;

    .line 64
    .line 65
    new-instance p2, Lcom/papa91/view/AutoSaveSlot$1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/papa91/view/AutoSaveSlot$1;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/papa91/view/CountDownView;->setOnCountDownListener(Lcom/papa91/view/CountDownView$OnCountDownListener;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDownBtn:Landroid/view/View;

    .line 74
    .line 75
    new-instance p2, Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 76
    .line 77
    new-instance v0, Lcom/papa91/view/AutoSaveSlot$2;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/papa91/view/AutoSaveSlot$2;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;-><init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method

.method getAutoSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/view/AutoSaveSlot$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/view/AutoSaveSlot$6;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method getSlots()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getAutoSlotFilter()Ljava/io/FilenameFilter;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "/"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "_auto"

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/File;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, ".0"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 114
    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, ".1"

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ".2"

    .line 155
    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_4
    new-instance v1, Lcom/papa91/view/AutoSaveSlot$5;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/papa91/view/AutoSaveSlot$5;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Ljava/io/File;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_5

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_5

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_6
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public quickLoadSlot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getSlots()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->loadAutoSlot(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 41
    .line 42
    const-string v2, "\u5f00\u901a\u4f1a\u5458\u5373\u53ef\u8bfb\u53d6\u8be5\u5b58\u6863"

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setUgcPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVipLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/papa91/view/AutoSlotDialog;->setVipLevel(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method showAutoSavePop(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/papa91/mix/R$layout;->pop_auto_save_tip:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->build(Landroid/app/Activity;Landroid/view/View;)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setOutsideTouchDismiss(Z)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->createPopupWindow()Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, p1, v3, v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    sget p1, Lcom/papa91/mix/R$id;->ok:I

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/papa91/view/AutoSaveSlot$3;

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Lcom/papa91/view/AutoSaveSlot$3;-><init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->handler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v0, Lcom/papa91/view/AutoSaveSlot$4;

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Lcom/papa91/view/AutoSaveSlot$4;-><init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v1, 0x2710

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public showQuickLoadTip()V
    .locals 0

    return-void
.end method

.method public showSlots()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/view/AutoSlotDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/papa91/view/AutoSlotDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 15
    .line 16
    iget v1, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getSlots()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/papa91/view/AutoSlotDialog;->show(ILjava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
