.class public Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

.field private stickKeyMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calcStickValue()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    or-int/2addr v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return v1
.end method

.method private isStickDirection(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 73
    .line 74
    const/16 v1, 0xa

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 84
    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 95
    .line 96
    const/16 v1, 0x10

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 106
    .line 107
    const/16 v1, 0x20

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 117
    .line 118
    const/16 v1, 0x40

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 128
    .line 129
    const/16 v1, 0x80

    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 139
    .line 140
    const/16 v1, 0x100

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 150
    .line 151
    const/16 v1, 0x200

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 161
    .line 162
    const/16 v1, 0x1000

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 172
    .line 173
    const/16 v1, 0x2000

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 183
    .line 184
    const/16 v1, 0x4000

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 194
    .line 195
    const v1, 0x8000

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method protected receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-interface {v0, p2, p1, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->onReceiveKeyboardBtnValue(III)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected receiveMouseData(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->onReceiveMouseValue(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "LT"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    const-string v0, "RT"

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    const-string v0, "L2"

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_5

    .line 36
    .line 37
    const-string v0, "R2"

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Boolean;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->isStickDirection(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 102
    .line 103
    const/4 v1, 0x4

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 123
    .line 124
    const/4 v1, 0x5

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 133
    .line 134
    const/4 v1, 0x6

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 143
    .line 144
    const/16 v1, 0xa

    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 154
    .line 155
    const/16 v1, 0x9

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_1
    if-nez p1, :cond_2

    .line 165
    .line 166
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->stickKeyMaps:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->calcStickValue()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v1, " send stick value = 0x"

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 228
    .line 229
    if-eqz p2, :cond_4

    .line 230
    .line 231
    invoke-interface {p2, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->onReceiveStickBtnValue(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 236
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, " send stick value error don\'t find = "

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_4
    :goto_1
    return-void

    .line 262
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 263
    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->onReceiveLTRTValue(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_6
    return-void
.end method

.method protected receiveStickRocker(IIFF)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x5

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "receiveStickRocker error  \u975e\u624b\u67c4\u6570\u636e"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, p3, p4, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->onReceiveStickRockerValue(FFI)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 2
    .line 3
    return-void
.end method

.method protected useSpecificSensitivity(ZF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;->useSpecificSensitivity(ZF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
