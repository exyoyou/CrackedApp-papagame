.class Lorg/hmwebrtc/CameraCapturer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CameraSession$CreateSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/CameraCapturer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDone(Lorg/hmwebrtc/CameraSession;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$000(Lorg/hmwebrtc/CameraCapturer;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CameraCapturer"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Create session done. Switch state: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 19
    .line 20
    invoke-static {v2}, Lorg/hmwebrtc/CameraCapturer;->access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 35
    .line 36
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$300(Lorg/hmwebrtc/CameraCapturer;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 41
    .line 42
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$200(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$400(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 57
    .line 58
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$500(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CapturerObserver;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-interface {v1, v2}, Lorg/hmwebrtc/CapturerObserver;->onCapturerStarted(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$602(Lorg/hmwebrtc/CameraCapturer;Z)Z

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 73
    .line 74
    invoke-static {v1, p1}, Lorg/hmwebrtc/CameraCapturer;->access$702(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraSession;)Lorg/hmwebrtc/CameraSession;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 78
    .line 79
    new-instance v1, Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 80
    .line 81
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$900(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 86
    .line 87
    invoke-static {v4}, Lorg/hmwebrtc/CameraCapturer;->access$1000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-direct {v1, v3, v4}, Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v1}, Lorg/hmwebrtc/CameraCapturer;->access$802(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;)Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 98
    .line 99
    invoke-static {p1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$1102(Lorg/hmwebrtc/CameraCapturer;Z)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 103
    .line 104
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$400(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 112
    .line 113
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object v1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    if-ne p1, v1, :cond_0

    .line 121
    .line 122
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 123
    .line 124
    sget-object v1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IDLE:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 125
    .line 126
    invoke-static {p1, v1}, Lorg/hmwebrtc/CameraCapturer;->access$102(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraCapturer$SwitchState;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 130
    .line 131
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_1

    .line 136
    .line 137
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 138
    .line 139
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 144
    .line 145
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1400(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraEnumerator;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v3, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 150
    .line 151
    invoke-static {v3}, Lorg/hmwebrtc/CameraCapturer;->access$1300(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v1, v3}, Lorg/hmwebrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-interface {p1, v1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchDone(Z)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 163
    .line 164
    invoke-static {p1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$1202(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 169
    .line 170
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget-object v1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->PENDING:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 175
    .line 176
    if-ne p1, v1, :cond_1

    .line 177
    .line 178
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 179
    .line 180
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$1500(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 185
    .line 186
    invoke-static {v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$1502(Lorg/hmwebrtc/CameraCapturer;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 190
    .line 191
    sget-object v2, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IDLE:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 192
    .line 193
    invoke-static {v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$102(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraCapturer$SwitchState;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 197
    .line 198
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v1, v2, p1}, Lorg/hmwebrtc/CameraCapturer;->access$1600(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    :goto_0
    monitor-exit v0

    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    throw p1
.end method

.method public onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$000(Lorg/hmwebrtc/CameraCapturer;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CameraCapturer"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Create session failure. Switch state: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 19
    .line 20
    invoke-static {v2}, Lorg/hmwebrtc/CameraCapturer;->access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 35
    .line 36
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$300(Lorg/hmwebrtc/CameraCapturer;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 41
    .line 42
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$200(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$400(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 57
    .line 58
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$500(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CapturerObserver;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-interface {v1, v2}, Lorg/hmwebrtc/CapturerObserver;->onCapturerStarted(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 67
    .line 68
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1710(Lorg/hmwebrtc/CameraCapturer;)I

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1700(Lorg/hmwebrtc/CameraCapturer;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-gtz v1, :cond_3

    .line 78
    .line 79
    const-string v1, "CameraCapturer"

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "Opening camera failed, passing: "

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 102
    .line 103
    invoke-static {v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$602(Lorg/hmwebrtc/CameraCapturer;Z)Z

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 107
    .line 108
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$400(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 116
    .line 117
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sget-object v2, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IDLE:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 122
    .line 123
    if-eq v1, v2, :cond_1

    .line 124
    .line 125
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 126
    .line 127
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    .line 133
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 134
    .line 135
    invoke-static {v1}, Lorg/hmwebrtc/CameraCapturer;->access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1, p2}, Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-static {v1, v3}, Lorg/hmwebrtc/CameraCapturer;->access$1202(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 146
    .line 147
    .line 148
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 149
    .line 150
    invoke-static {v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$102(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraCapturer$SwitchState;)Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 151
    .line 152
    .line 153
    :cond_1
    sget-object v1, Lorg/hmwebrtc/CameraSession$FailureType;->DISCONNECTED:Lorg/hmwebrtc/CameraSession$FailureType;

    .line 154
    .line 155
    if-ne p1, v1, :cond_2

    .line 156
    .line 157
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 158
    .line 159
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$1000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected()V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 168
    .line 169
    invoke-static {p1}, Lorg/hmwebrtc/CameraCapturer;->access$1000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-interface {p1, p2}, Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    const-string p1, "CameraCapturer"

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v2, "Opening camera failed, retry: "

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer$1;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 200
    .line 201
    const/16 p2, 0x1f4

    .line 202
    .line 203
    invoke-static {p1, p2}, Lorg/hmwebrtc/CameraCapturer;->access$1800(Lorg/hmwebrtc/CameraCapturer;I)V

    .line 204
    .line 205
    .line 206
    :goto_0
    monitor-exit v0

    .line 207
    return-void

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    throw p1
.end method
