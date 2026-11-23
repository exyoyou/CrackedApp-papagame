.class Lcom/haima/hmcp/model/LocalKeyboardModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/GetCloudIMECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/model/LocalKeyboardModel;->lambda$reactiveKeyboard$0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

.field final synthetic val$reactivePayload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->val$reactivePayload:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCloudImeResult(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u952e\u76d8: get ime type: result = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", imeType = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->val$reactivePayload:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "\u952e\u76d8: reactive fail, payload is null"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1200(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1200(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onRegisterKeyboardListener()V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->val$reactivePayload:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1300(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1400(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setPayload(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1400(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setListener(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 100
    .line 101
    invoke-static {p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1402(Lcom/haima/hmcp/model/LocalKeyboardModel;Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;)Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$3;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 105
    .line 106
    invoke-static {p1, p0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1500(Lcom/haima/hmcp/model/LocalKeyboardModel;Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
