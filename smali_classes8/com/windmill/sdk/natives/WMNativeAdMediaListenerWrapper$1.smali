.class Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->initProgressRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$000(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$100(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    sget-object v2, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->PLAYING:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$200(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    cmp-long v5, v0, v3

    .line 44
    .line 45
    if-gtz v5, :cond_1

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "WMNativeAdMediaListenerWrapper updateProgress duration is invalid: "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$300(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$000(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$100(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-ne v0, v2, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$500(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$400(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    int-to-long v1, v1

    .line 110
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, "WMNativeAdMediaListenerWrapper progress update is abnormal: "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$600(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$1;->this$0:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->access$100(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;->IDLE:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$PlayState;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_0
    return-void

    .line 156
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v3, "WMNativeAdMediaListenerWrapper initProgressRunnable destroyed: "

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ", currentState: "

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
