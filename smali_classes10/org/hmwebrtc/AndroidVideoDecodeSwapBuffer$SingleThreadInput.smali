.class Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;
.super Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleThreadInput"
.end annotation


# instance fields
.field private final mDefaultTimeOutUs:J

.field private final mFastTimeOutUs:J

.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "new SingleThreadInput:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "VideoDecodeSwapBuffer"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-wide/32 v0, 0x186a0

    .line 34
    .line 35
    .line 36
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 37
    .line 38
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$600(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->access$700(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mFastTimeOutUs:J

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public onDecodedFrame(IIIIJLjava/lang/Integer;)J
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v9, p1

    .line 3
    invoke-super/range {p0 .. p7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->onDecodedFrame(IIIIJLjava/lang/Integer;)J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 7
    .line 8
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object v10, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 19
    .line 20
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 21
    .line 22
    move v2, p1

    .line 23
    move v3, p2

    .line 24
    move v4, p3

    .line 25
    move v5, p4

    .line 26
    move-wide/from16 v6, p5

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    invoke-static/range {v1 .. v8}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1000(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-ne v10, v1, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 37
    .line 38
    invoke-static {v1, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 42
    .line 43
    return-wide v1

    .line 44
    :cond_1
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 45
    .line 46
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    sget-object v10, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 57
    .line 58
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 59
    .line 60
    move v2, p1

    .line 61
    move v3, p2

    .line 62
    move v4, p3

    .line 63
    move v5, p4

    .line 64
    move-wide/from16 v6, p5

    .line 65
    .line 66
    move-object/from16 v8, p7

    .line 67
    .line 68
    invoke-static/range {v1 .. v8}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1000(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eq v10, v1, :cond_2

    .line 73
    .line 74
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 75
    .line 76
    return-wide v1

    .line 77
    :cond_2
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 78
    .line 79
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->isFull()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 90
    .line 91
    invoke-static {v1, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 96
    .line 97
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->isFull()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 108
    .line 109
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getReadedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    iget-object v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 121
    .line 122
    invoke-static {v2, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1200(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 126
    .line 127
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    sget-object v10, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 138
    .line 139
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 140
    .line 141
    move v2, p1

    .line 142
    move v3, p2

    .line 143
    move v4, p3

    .line 144
    move v5, p4

    .line 145
    move-wide/from16 v6, p5

    .line 146
    .line 147
    move-object/from16 v8, p7

    .line 148
    .line 149
    invoke-static/range {v1 .. v8}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1000(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eq v10, v1, :cond_5

    .line 154
    .line 155
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 156
    .line 157
    return-wide v1

    .line 158
    :cond_5
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 159
    .line 160
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getWritedFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput v9, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 169
    .line 170
    move v2, p2

    .line 171
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 172
    .line 173
    move v2, p3

    .line 174
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 175
    .line 176
    move v2, p4

    .line 177
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 178
    .line 179
    move-wide/from16 v2, p5

    .line 180
    .line 181
    iput-wide v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 182
    .line 183
    move-object/from16 v2, p7

    .line 184
    .line 185
    iput-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 186
    .line 187
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mFastTimeOutUs:J

    .line 188
    .line 189
    return-wide v1
.end method

.method public onDecodedTimeout()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getReadedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_1
    sget-object v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 35
    .line 36
    invoke-static {v2, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$900(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    .line 42
    iget-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mDefaultTimeOutUs:J

    .line 43
    .line 44
    return-wide v0

    .line 45
    :cond_2
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 46
    .line 47
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getWritedFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 56
    .line 57
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 58
    .line 59
    iget v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 60
    .line 61
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 62
    .line 63
    iget v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 64
    .line 65
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 66
    .line 67
    iget v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 68
    .line 69
    iput v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 70
    .line 71
    iget-wide v2, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 72
    .line 73
    iput-wide v2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 74
    .line 75
    iget-object v0, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 76
    .line 77
    iput-object v0, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 78
    .line 79
    iget-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;->mFastTimeOutUs:J

    .line 80
    .line 81
    return-wide v0
.end method

.method public onRenderComplete()V
    .locals 0

    return-void
.end method
