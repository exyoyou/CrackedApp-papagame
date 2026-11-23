.class Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->onInputDeviceAdded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/HmInputDeviceManager$1;

.field final synthetic val$deviceId:I

.field final synthetic val$subTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/HmInputDeviceManager$1;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->this$0:Lcom/haima/hmcp/utils/HmInputDeviceManager$1;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$deviceId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$subTag:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$deviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$subTag:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$000(ILjava/lang/String;)Landroid/view/InputDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->this$0:Lcom/haima/hmcp/utils/HmInputDeviceManager$1;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$subTag:Ljava/lang/String;

    .line 23
    .line 24
    iget v3, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$deviceId:I

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$100(Landroid/view/InputDevice;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$200()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;->val$subTag:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "DoubleCheck is over,isJoyStick is still false"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
