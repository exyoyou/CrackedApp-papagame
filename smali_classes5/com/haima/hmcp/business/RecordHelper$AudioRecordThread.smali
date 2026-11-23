.class Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/RecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private final bufferSize:I

.field final synthetic this$0:Lcom/haima/hmcp/business/RecordHelper;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/RecordHelper;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->this$0:Lcom/haima/hmcp/business/RecordHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/RecordParameter;->getSampleRate()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/RecordParameter;->getChannel()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/SdkRecordParameter;->getEncoding()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iput v8, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->bufferSize:I

    .line 35
    .line 36
    new-instance v0, Landroid/media/AudioRecord;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/RecordParameter;->getSampleRate()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/RecordParameter;->getChannel()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {p1}, Lcom/haima/hmcp/business/RecordHelper;->access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/SdkRecordParameter;->getEncoding()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    move-object v3, v0

    .line 64
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->audioRecord:Landroid/media/AudioRecord;

    .line 68
    .line 69
    return-void
.end method

.method private startPcmRecorder()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->this$0:Lcom/haima/hmcp/business/RecordHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/business/RecordHelper$RecordState;->RECORDING:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/RecordHelper;->access$102(Lcom/haima/hmcp/business/RecordHelper;Lcom/haima/hmcp/business/RecordHelper$RecordState;)Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 6
    .line 7
    .line 8
    const-string v0, "Audio-Record: AudioRecordThread start record: Pcm"

    .line 9
    .line 10
    const-string v1, "RecordHelper"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->audioRecord:Landroid/media/AudioRecord;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->bufferSize:I

    .line 21
    .line 22
    new-array v2, v0, [B

    .line 23
    .line 24
    :goto_0
    iget-object v3, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->this$0:Lcom/haima/hmcp/business/RecordHelper;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/haima/hmcp/business/RecordHelper;->access$100(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Lcom/haima/hmcp/business/RecordHelper$RecordState;->RECORDING:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->audioRecord:Landroid/media/AudioRecord;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v3, v2, v4, v0}, Landroid/media/AudioRecord;->read([BII)I

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->this$0:Lcom/haima/hmcp/business/RecordHelper;

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/haima/hmcp/business/RecordHelper;->access$200(Lcom/haima/hmcp/business/RecordHelper;[B)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->audioRecord:Landroid/media/AudioRecord;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    const-string v0, "Audio-Record: \u5f55\u97f3\u7ed3\u675f"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;->startPcmRecorder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
