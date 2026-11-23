.class final Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-static {v3, v4}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    add-int/lit8 v0, v1, -0x2

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    :try_start_1
    iget-object v6, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 46
    .line 47
    invoke-static {v6}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$500(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6, v1, v2, v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    const/4 v2, 0x0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "exception during decode: "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    :goto_0
    const-wide/16 v6, 0x14

    .line 72
    .line 73
    cmp-long v8, v0, v6

    .line 74
    .line 75
    if-gez v8, :cond_2

    .line 76
    .line 77
    const-wide/16 v0, 0x64

    .line 78
    .line 79
    :cond_2
    iget-object v6, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 80
    .line 81
    invoke-static {v6}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    monitor-enter v6

    .line 86
    :try_start_2
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 87
    .line 88
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    const/4 v8, 0x0

    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 102
    .line 103
    invoke-static {v1, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$302(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-object v8, v0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 109
    .line 110
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-ltz v7, :cond_5

    .line 115
    .line 116
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 117
    .line 118
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$400(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ne v7, v4, :cond_5

    .line 123
    .line 124
    iget-object v4, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    const-wide v0, 0x7fffffffffffffffL

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-static {v4}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$700(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    add-long/2addr v0, v9

    .line 139
    :goto_1
    invoke-static {v4, v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$602(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;J)J

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 143
    .line 144
    const/4 v1, 0x3

    .line 145
    invoke-static {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 150
    :goto_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$600(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 160
    .line 161
    .line 162
    :cond_6
    if-eqz v8, :cond_7

    .line 163
    .line 164
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$800(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;->a(Landroid/graphics/Bitmap;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    throw v0

    .line 177
    :catchall_1
    move-exception v1

    .line 178
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    throw v1
.end method
